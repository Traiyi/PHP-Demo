<?php
$servername = "localhost";
$username = "root";
$password = "123456";
$dbname = "student_course";
$port = "3307";

// 创建连接
$conn = new mysqli($servername, $username, $password, $dbname, $port);
// Check connection
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}


$name = $_POST['name'];



$sql = "SELECT * 
FROM course";
// -- WHERE course_name= '" . $name . " ' ";


$result = $conn->query($sql);

?>



<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>课程简介表</title>

    <link href="frond/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="frond/style.css">
</head>

<body>

    <div class="container-fluid">

        <div class="jumbotron" style="background-color:DodgerBlue ;">
            <h1 style="text-align: center">选课系统</h1>
        </div>
        <div class="row">

            <div class="col-md-1"></div>
            <div class="col-md-10">
                <table border="1" class="table table-bordered table-hover table-condensed table-style">
                    <caption>
                        <h1>课程简介表</h1>
                    </caption>
                    <tr>
                        <th>课程名称</th>
                        <th>课程性质</th>
                        <th>学分</th>
                        <!-- <th>任课教师</th> -->
                        <th>课程简介</th>
                    </tr>

                    <?php
                    if ($result->num_rows > 0) {
                        // 输出数据
                        while ($row = $result->fetch_assoc()) {
                            echo "<tr>";
                            echo  "<td>" . $row["course_name"] . "</td>"
                                . "<td>" . $row["course_character"] . "</td>"
                                . "<td>" . $row["credit"] . "</td>"
                                . "<td>" . $row["course_introduction"] . "</td>";


                            echo "</tr>";
                        }
                    } else {
                        echo "0 结果";
                    }
                    ?>

                </table>
            </div>
            <div class="col-md-1"></div>
        </div>
    </div>
    <script src="src=" frond/bootstrap/jquery-3.5.1.min.js"></script>
    <script src="frond/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>

<?php
$conn->close();
?>