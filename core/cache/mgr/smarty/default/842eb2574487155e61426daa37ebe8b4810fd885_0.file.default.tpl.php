<?php
/* Smarty version 4.5.5, created on 2025-11-16 14:32:27
  from 'C:\xampp\htdocs\sr-transfers\manager\templates\default\email\default.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.5',
  'unifunc' => 'content_6919d26ba62496_66903729',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '842eb2574487155e61426daa37ebe8b4810fd885' => 
    array (
      0 => 'C:\\xampp\\htdocs\\sr-transfers\\manager\\templates\\default\\email\\default.tpl',
      1 => 1743569432,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6919d26ba62496_66903729 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
?>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=<?php echo $_smarty_tpl->tpl_vars['_config']->value['mail_charset'];?>
"/>
    <title><?php echo $_smarty_tpl->tpl_vars['_config']->value['site_name'];?>
</title>
    <style type="text/css">
        body { background: #f7f7f7;margin: 0;padding: 0;width: 100%;height: 100%;font-family: Arial, serif;font-size: 14px;color: #293034; }
        h1 { font-size: 26px;}
        h2 { font-size: 23px;}
        h3 { font-size: 20px;}
        h4 { font-size: 18px;}
        table { border-spacing: 0; width: 100%; }
        table td { margin: 0; }
        body > table { width: 600px; margin: auto; }
        a { color: #14c8a0; outline: none; text-decoration: none; }
        p { font-size: 16px; line-height: 22px; }
        .main-logo { padding: 35px 0; }
        .main-logo img { width: 217px; border: 0;}
        .content { height: 100px; vertical-align: top; background: #ffffff; border: 1px solid #e1ddcb; border-radius: 5px; box-shadow: #d7d7d7 0 2px 5px; padding: 30px; }
        .content .btn { color: #ffffff; text-decoration: none; border-radius: 3px; background-color: #14c8a0; border-top: 12px solid #14c8a0; border-bottom: 12px solid #14c8a0; border-right: 18px solid #14c8a0; border-left: 18px solid #14c8a0; display: inline-block; }
        .left { text-align: left; }
        .center { text-align: center; }
        .right { text-align: right; }
        .small { font-size: 12px; color: #999;}
        .footer td { padding: 35px 0; text-align: center; text-transform: uppercase; }
        .footer td a { color: #999999; }
    </style>
</head>
<body>
<table>
    <thead>
    <tr>
        <td class="main-logo">
            <a href="<?php echo $_smarty_tpl->tpl_vars['_config']->value['site_url'];?>
" target="_blank">
                <?php if ($_smarty_tpl->tpl_vars['_config']->value['login_logo']) {?>
                    <img src="<?php echo $_smarty_tpl->tpl_vars['_config']->value['login_logo'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['_config']->value['site_name'];?>
"/>
                <?php } else { ?>
                    <img src="<?php echo $_smarty_tpl->tpl_vars['_config']->value['url_scheme'];
echo $_smarty_tpl->tpl_vars['_config']->value['http_host'];
echo $_smarty_tpl->tpl_vars['_config']->value['manager_url'];?>
templates/default/images/modx-logo-color.svg" alt="<?php echo $_smarty_tpl->tpl_vars['_config']->value['site_name'];?>
"/>
                <?php }?>
            </a>
        </td>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td class="content">
            <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_5962364866919d26ba5a1e5_81312209', "content");
?>

        </td>
    </tr>
    <tr>
        <td>
            <table class="footer">
                <tr>
                    <td>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['_config']->value['site_url'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['_config']->value['site_name'];?>
</a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>
<?php }
/* {block "content"} */
class Block_5962364866919d26ba5a1e5_81312209 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_5962364866919d26ba5a1e5_81312209',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

                <?php echo $_smarty_tpl->tpl_vars['content']->value;?>

            <?php
}
}
/* {/block "content"} */
}
