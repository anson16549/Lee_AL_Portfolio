<?php

//ToDo: Take care the form submission [ work as the post office]
//ini_set('display_errors', 1);

// 4. It returns proper info in Json format [Receipts!]
//   a. What is AJAX?
//   b. What is Json?
//   c. How to build Json (in PHP)
header('Access-Control-Allow-Origin:*');
header('Content-Type: application/json; charset=UTF-8');
$results = [];
$visitor_name = '';
$visitor_email = '';
$visitor_message = '';
$visitor_gender = '';
// 1. Check the submission --> Validate the data 
// $_post['firstname']

    //check that weird sign and pop off the missing message
    if(empty($_POST["firstname"])) {
        
        die(json_encode(["message" => "You have to fill your first name"]));
        
    }
    else {
        if(isset($_POST['firstname'])){
            $visitor_name = filter_var($_POST['firstname'], FILTER_SANITIZE_STRING);
    };
}

if(empty($_POST["lastname"])) {
        
    die(json_encode(["message" => "You have to fill your last name"]));
    
}
else {
    if(isset($_POST['lastname'])){
        $visitor_name = filter_var($_POST['lastname'], FILTER_SANITIZE_STRING);
};
}

if(empty($_POST["email"])) {
        
    die(json_encode(["message" => "You have to fill your email"]));
    
}
else {
    if(isset($_POST['email'])){
        $visitor_name = filter_var($_POST['email'], FILTER_SANITIZE_STRING);
};
}

if(isset($_POST['message'])){
    $visitor_message = filter_var(htmlspecialchars($_POST['message']), FILTER_SANITIZE_STRING);
    
}


// send to diff email

//
$results['name'] = $visitor_name;
$results['message'] = $visitor_message;
$results['gender'] = $to;

//2. Prepare the email 
$email_subject = 'Inquiry from Portfolio Site';
$email_recipient = 'ansonlee51326@gmail.com';
$email_message = sprintf('Name: %s, Email: %s, Message: %s', $visitor_name, $visitor_email, $visitor_message);

// Make sure   you run the code in PHP 7.4 +
// Otherwise, you would need to make @email_headers as string https://www.php.net/manua/en/function.mail.php
$email_headers = array(
    // Best practice, but it may need to have a mail set up in noreply@yourdomain.ca
    'From'=>'ansonlee51326@gmail.com',
    'Reply-To'=>$visitor_email,

    //You can still use it, if above is too much work
    //'From'=>$visitor_email
);
// 3. Send out the email 

$email_result = mail($email_recipient,$email_subject, $email_message,$email_headers);
if($email_result) {
    $results['message'] = sprintf('Thank you for contacting us, %s You will get a reply within 24 hours.', $visitor_name);
} else {
    $results['message'] = sprintf('We are sorry but the email did not go through.');
}

echo json_encode($results);