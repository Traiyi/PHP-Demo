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

$sql = "SELECT  * FROM student";

$result = $conn->query($sql);

?>





<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>学生信息表</title>

    <link href="frond/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="frond/style.css">

</head>

<body>
    <div class="container-fluid">

        <div class="jumbotron" style="background-color:DodgerBlue ;">
            <h1 style="text-align: center">选课系统</h1>
        </div>

        <ul class="nav nav-pills">
            <li role="presentation">
                <a href="course_teacher.php" class="active">
                    <h3>选课信息表</h3>
                </a>
            </li>
            <li role="presentation">
                <a href="student.php">
                    <h3>学生信息表</h3>
                </a>
            </li>
        </ul>

        <div class="row">

            <div class="col-md-1"></div>
            <div class="col-md-10">
                <table border="1" class="table table-bordered table-hover">
                    <caption>
                        <h1>学生信息表</h1>
                    </caption>
                    <tr>
                        <th>学号</th>
                        <th>姓名</th>
                        <th>班级</th>
                        <th>已选课程</th>
                    </tr>

                    <?php
                    if ($result->num_rows > 0) {
                        // 输出数据
                        while ($row = $result->fetch_assoc()) {
                            echo  "<tr>";
                            echo  "<td>" . $row["student_id"] . " </td>"
                                . "<td>" . $row["student_name"] . "</td>"
                                . "<td>" . $row["student_class"] . "</td>";

                            echo  '<td> '
                                . '<button class="btn btn-default color-style">'
                                . '<a class="a-style" '
                                . 'href="student_course.php?id= '
                                . $row["student_id"]
                                . '">查看'
                                . '</button>'
                                . '  </a> </td>';

                            echo  "</tr>";
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

    <script src="frond/bootstrap/jquery-3.5.1.min.js"></script>
    <script src="frond/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>

<?php
$conn->close();
?>