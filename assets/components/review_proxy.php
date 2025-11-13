<?php
$url = $_GET['url'] ?? '';
if (!$url || !filter_var($url, FILTER_VALIDATE_URL)) {
    exit;
}
header("Content-Type: image/jpeg");
readfile($url);
