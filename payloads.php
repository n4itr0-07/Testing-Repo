<?php
// 1. Remote File Inclusion (RFI)
$file = $_GET['file'];
include($file);

// 2. Cross-Site Scripting (XSS)
$userInput = $_GET['userInput'];
echo "<p>" . $userInput . "</p>";

// 3. SQL Injection
$userId = $_GET['userId'];
$sql = "SELECT * FROM users WHERE id = '$userId'";
$result = mysqli_query($conn, $sql);

// 4. Command Injection
$userInput = $_GET['userInput'];
$command = "ls -l " . $userInput;
exec($command);

// 5. Session Fixation
session_start();
$_SESSION['userId'] = $_GET['userId'];

// 6. Remote Code Execution (RCE)
$code = $_GET['code'];
eval($code);

// 7. File Upload
$file = $_FILES['file']['name'];
move_uploaded_file($_FILES['file']['tmp_name'], "uploads/" . $file);

// 8. Directory Traversal
$file = $_GET['file'];
include("../" . $file);

// 9. Unrestricted File Upload
$file = $_FILES['file']['name'];
move_uploaded_file($_FILES['file']['tmp_name'], "uploads/" . $file);

// 10. Insufficient Session Management
session_start();
$_SESSION['userId'] = $_GET['userId'];
?>
