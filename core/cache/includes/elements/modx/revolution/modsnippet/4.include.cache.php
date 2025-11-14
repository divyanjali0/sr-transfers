<?php
$conn = include MODX_BASE_PATH . 'assets/includes/db_connect.php';

try {
    $addons = $conn->query("SELECT `id`, `addon_name`, `rate` FROM `addons` ORDER BY `id` ASC")
                   ->fetchAll(PDO::FETCH_ASSOC);

    if (!$addons) return '<p>No add-ons found.</p>';

    $out = '<div class="form-group"><label style="font-weight:600;">Select Add-ons</label>
            <div style="display:grid; gap:10px;">';

    foreach ($addons as $a) {
        $id = (int)$a['id'];
        $rate = (float)$a['rate'];
        $name = htmlspecialchars($a['addon_name']);
        $out .= "<label style='display:flex;align-items:center;justify-content:space-between;white-space:nowrap;'>
            <span style='display:flex;align-items:center;gap:8px;'>
                <input type='checkbox' class='addon' 
                       data-id='$id' 
                       name='addons[]' 
                       value='$id' 
                       data-rate='$rate' 
                       data-addon_name='$name'>
                $name (+$ " . number_format($rate, 2) . ")
            </span>
            <select name='addons_qty[{$id}]' class='qty' style='padding:3px 6px;border-radius:4px;width:20%;' disabled>";

        for ($i=1; $i<=3; $i++) $out .= "<option value='$i'>$i</option>";
        $out .= "</select></label>";
    }


    $out .= '</div></div>
    <script>
    document.addEventListener("DOMContentLoaded",()=> {
        document.querySelectorAll(".addon").forEach(cb=>{
            cb.addEventListener("change",()=>{
                const s=document.querySelector(`select[name="addons_qty[${cb.dataset.id}]"]`);
                if(s) s.disabled=!cb.checked;
            });
        });
    });
    </script>';

    return $out;

} catch (PDOException $e) {
    return "<p style='color:red;'>Database error: {$e->getMessage()}</p>";
}
return;
