<?php
    //including the database connection file
    include_once("../dbConnection/mysqlconfig_connection.php");
    //getting id of the data from url
    $id = $_GET['id'];
    //deleting the row from the table 
    mysqli_query($dbc, "DELETE FROM tblsubjects WHERE subject_id='$id'" );
    //redirecting to the display page(index.php in our case)
    header("Location: index.php");
?>