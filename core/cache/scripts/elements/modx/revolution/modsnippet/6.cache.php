<?php  return '$conn = include MODX_BASE_PATH . \'assets/includes/db_connect.php\';

try {
    $stmt = $conn->query("SELECT country_name, country_code FROM country_codes ORDER BY country_name ASC");
    $countries = $stmt->fetchAll(PDO::FETCH_ASSOC);
    if (!$countries) return \'<p>No countries found.</p>\';

    $selectedCode = isset($selected) ? strtoupper(trim($selected)) : \'\';
    $output = \'<div class="form-group" style="margin-bottom:0;">
        <select id="country" name="country" style="width:100%;padding:8px;border-radius:6px;border:1px solid #ccc;">
            <option value="">-- Choose a Country --</option>\';

    foreach ($countries as $c) {
        $name = htmlspecialchars($c[\'country_name\']);
        $code = htmlspecialchars(strtoupper($c[\'country_code\']));
        $sel = $code === $selectedCode ? \' selected\' : \'\';
        $output .= "<option value=\'$code\'$sel>$name ($code)</option>";
    }

    return $output . \'</select></div>\';
} catch (PDOException $e) {
    return "<p style=\'color:red;\'>Database error: {$e->getMessage()}</p>";
}
return;
';