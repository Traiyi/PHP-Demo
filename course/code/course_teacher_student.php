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


$id = $_GET['id'];


$sql = "SELECT   student.student_id as student_id ,student_name,student_class
FROM student  natural join student_course
WHERE student_course.course_teacher_id	= " . $id;

$result = $conn->query($sql);

$sql2 = "SELECT  teacher_name,course_name,credit,course_total_time,course_start,course_teacher_id,course_time
FROM course_teacher
WHERE course_teacher_id =" . $id;

$result2 = $conn->query($sql2);

?>



<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>课程-学生信息表</title>

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
                        <h1> 课程-学生信息表</h1>
                    </caption>
                    <?php
                    $row2 = $result2->fetch_assoc();

                    ?>

                    <tr>
                        <td> 教师姓名</td>
                        <td><?php echo $row2['teacher_name']; ?></td>
                        <td> 课 程名称</td>
                        <td><?php echo $row2['course_name']; ?></td>
                        <td> 学 分</td>
                        <td><?php echo $row2['credit']; ?></td>
                        <td> 总 学时</td>
                        <td><?php echo $row2['course_total_time']; ?></td>
                        <td>起止周</td>
                        <td><?php echo $row2['course_start']; ?></td>
                    </tr>
                    <tr>
                        <td> 课 程编 号 </td>
                        <td><?php echo $row2['course_teacher_id']; ?></td>
                        <td>学年</td>
                        <td>2020-2021</td>
                        <td> 上 课时间</td>
                        <td><?php echo $row2['teacher_time']; ?></td>
                        <td> 上 课地点</td>
                        <td>4-404</td>
                    </tr>

                    <tr>
                        <td> 序 号</td>
                        <td> 学 号 （主键）</td>
                        <td> 姓 名</td>
                        <td> 班 级</td>
                        <td colspan="6">备注</td>
                    </tr>

                    <?php
                    if ($result->num_rows > 0) {
                        // 输出数据
                        while ($row = $result->fetch_assoc()) {
                            echo "<tr>";
                            echo "<td>" . $row["student_id"] . "</td>"
                                . "<td>" . $row["student_name"] . "</td>"
                                . "<td>" . $row["student_class"] . "</td>";
                            echo '<td colspan="6"></td>';
                            echo "</tr>";
                        }
                    } else {
                        echo "0 结果";
                    }
                    ?>
                    </tbody>
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