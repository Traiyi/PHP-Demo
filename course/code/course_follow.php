<?php
// MySQL连接信息
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


$id = $_GET['course_teacher_id'];

$sql2 = "UPDATE course_teacher SET follow = 1 WHERE course_teacher_id=" . $id;

$result2 = $conn->query($sql2);

$sql = "SELECT *
FROM course_teacher_all
WHERE follow = 1
ORDER BY course_teacher_id;";

$result = $conn->query($sql);

?>





<!DOCTYPE html>
<html lang="zh-CN">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>选课信息表</title>

  <link href="frond/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <link rel="stylesheet" type="text/css" href="frond/style.css">

</head>

<body>

  <div class="container-fluid">


    <div class="jumbotron" style="background-color:DodgerBlue ;">
      <h1>选课系统</h1>
    </div>
    <ul class="nav nav-pills">
      <li role="presentation">
        <a href="course_all.php">
          <h3>所有课程</h3>
        </a>
      </li>


      <li role="presentation" class="active">
        <a href="course_follow.php" >
          <h3>关注课程</h3>
        </a>
      </li>

      <li role="presentation">
        <a href="course_choose.php">
          <h3>已选课程</h3>
        </a>
      </li>
    </ul>


    <div class="row">

      <div class="col-md-8"></div>
      <div class="col-md-4">
        <form class="form-inline" action="course_detail.php" method="post">
          <div class="form-group">
            <input type="text" class="form-control" id="name" name="name" placeholder="请输入课程名...">
          </div>
          <button type="submit" class="btn btn-default"> 搜索课程简介</button>
        </form>
      </div>

    </div>




    <div class="row">
      <div class="col-md-1"></div>
      <div class="col-md-10">
        <table border="1" class="table table-bordered table-hover table-condensed table-style">
          <caption>
            <h1>选课信息表</h1>
          </caption>
          <tr>
            <!-- <th>课程编号</th> -->
            <th>课程名称</th>
            <th>课程性质</th>
            <th>学分</th>
            <th>周学时</th>
            <th>起止周</th>
            <th>上课时间</th>
            <th>任课教师</th>
            <th>面向对象</th>
            <th>开班人数</th>
            <th colspan="2">操作</th>
          </tr>

          <?php
          if ($result->num_rows > 0) {
            // 输出数据
            while ($row = $result->fetch_assoc()) {

              echo "<tr>";

              echo "<td>" . $row["course_name"] . "</td>"
                . "<td>" . $row["course_character"] . "</td>"
                . "<td>" . $row["credit"] . "</td>"
                . "<td>" . $row["course_total_time"] . "</td>"
                . "<td>" . $row["course_start"] . "</td>"
                . "<td>" . $row["course_time"] . "</td>"
                . "<td>" . $row["teacher_name"] . "</td>"
                . "<td> 18数字媒体技术</td>"
                . "<td>" . $row["course_student_num"] . "</td>";

              echo '<td> ' .
                '<button class="btn btn-default color-style2">' .
                '<a class="a-style" '
                . 'href="course_all.php?course_teacher_id= '
                . $row["course_teacher_id"] .
                '">移除'
                . '</button>'
                . '  </a> </td>';

                echo '<td> ' .
                '<button class="btn btn-default color-style2">' .
                '<a class="a-style" '
                . 'href="course_choose.php?insert_id= '
                . $row["course_teacher_id"] .
                '">选课'
                . '</button>'
                . '  </a> </td>';

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

  <script src="frond/bootstrap/jquery-3.5.1.min.js"></script>
  <script src="frond/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>

<?php
$conn->close();
?>