
 <?php  
 $connect = mysqli_connect("localhost", "root", "", "python_test1");  
 $sql = "DELETE FROM email_data WHERE mail_id = '".$_POST["id"]."'";  
 // $sql1 = "DELETE FROM student_cgpa WHERE sid = '".$_POST["id"]."'"; 
 if(mysqli_query($connect, $sql) )  
 {  
      echo 'Data Deleted';  
 }  
 ?>