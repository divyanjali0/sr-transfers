<?php

// Define email Configuration
define('MAIL_MAILER', 'smtp');
define('SMTP_HOST', 'smtp.gmail.com');
define('SMTP_USERNAME', 'navodyadivyanjali2@gmail.com');
define('SMTP_PASSWORD', 'nkpz ddkk tzri koou');
define('SMTP_PORT', 587);
define('SMTP_FROM_EMAIL', 'navodyadivyanjali2@gmail.com');
define('MAIL_ENCRYPTION', 'tls');
define('SMTP_FROM_NAME', 'SR Transfers');

// Timezone
date_default_timezone_set('Asia/Colombo');
define('MAX_FILE_SIZE', 3 * 1024 * 1024); // 3MB

// Define Google reCAPTCHA keys for form verification
define('GOOGLE_RECAPTCHA_SITE_KEY', '6Lfi4e8qAAAAAOji3ztqb74m99mImbQEsS-mVNWF');
define('GOOGLE_RECAPTCHA_SECRET_KEY', '6Lfi4e8qAAAAAG9oBvz8UxOqzSn39XdyivyqR9YY');

// reCAPTCHA verification function
function verifyRecaptcha($recaptcha_response) {
    $recaptcha_secret = GOOGLE_RECAPTCHA_SECRET_KEY;
    $response = json_decode(file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=$recaptcha_secret&response=$recaptcha_response"), true);
    return !empty($response['success']) && $response['success'] && $response['score'] >= 0.5;
}

//user input validation function
function test_input($data){
    $data = trim($data);
    $data = stripcslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}