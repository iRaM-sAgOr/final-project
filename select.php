<?php  
 $connect = mysqli_connect("localhost", "root", "", "python_test1");  
 $output = '';  
 $sql = "SELECT * FROM email_data ORDER BY mail_id";  
 $result = mysqli_query($connect, $sql);  
 $output .= '  
      <div class="table-responsive">  
           <table class="table table-bordered" table-layout: auto;
    width: 100% border-collapse: collapse; >  
                <tr>  
                     <th width="" >Id</th>  
                     <th width="" >FROM</th>  
                     <th width="" >TO</th>  
                     <th width="" >Email</th>  
                      
                      
					 
					 
                     <th width="" >Remove</th> 
                </tr>';  
 if(mysqli_num_rows($result) > 0)  
 {  
      while($row = mysqli_fetch_array($result))  
      {  
       
		
		//end fetching
           $output .= '  
                <tr>  
                     <td>'.$row["mail_id"].'</td>  
                     <td class="first_name" data-id1="'.$row["mail_id"].'" contenteditable>'.$row["From"].'</td>  
                     <td class="last_name" data-id2="'.$row["mail_id"].'" contenteditable>'.$row["To"].'</td>  
                     <td class="first_name" data-id3="'.$row["mail_id"].'" contenteditable>'.$row["body"].'</td>  
                     
                    
					 
					 
                     <td><button type="button" name="delete_btn" data-id5="'.$row["mail_id"].'" class="btn btn-xs btn-danger btn_delete">Delete</button>
                     </td> 
                </tr>  
           ';  
      }  
     
 }  
 else  
 {  
      $output .= '<tr>  
                          <td colspan="16">No Student Request</td>  
                     </tr>';  
 }  
 $output .= '</table>  
      </div>';  
 echo $output;  
 ?>