<?php
    //including the database connection file
    include_once("../dbConnection/mysqlconfig_connection.php");
    //getting id of the data from url
    $id = $_GET['id'];
    //selecting data associated with this particular id
    $result = mysqli_query($dbc, "SELECT * FROM tblsubjects WHERE subject_id='$id'");
    while($res = mysqli_fetch_array($result)){
        $code = $res['subject_code'];
        $name = $res['subject_name'];
    }
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Data</title>
    </head>
    <body>
        <h1> Edit Subject</h1>
        <a href="index.php">Home</a>
        <br/><br/>
        <form name="form1" method="post" action="functions/edit.php">
            <table border="0">
                <tr>
                    <td>Subject Code</td>
                    <td><input type="text" name="code" value="<?php echo $code;?>"></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="id" value="<?php echo $_GET['id'];?>"></td>
                    <td><input type="submit" name="update" value="Update"></td>
                </tr>

            </table>
        </form>
    </body>
</html>