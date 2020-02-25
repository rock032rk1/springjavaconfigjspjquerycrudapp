<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
       
       <script type="text/javascript">
      
 function validation(){
		 
		 var name_val=$('#name').val();
		// alert(name_val);
		 var mobile_val=$('#mobile').val();
		 var email_val=$('#email').val();
		 
		 var namechk=/^[A-Za-z. ]{3,30}$/;
		 var mobilechk=/^[789][0-9]{9}$/;
		 var emailchk=/^[A-Za-z0-9_.]{3,}@[A-Za-z]{3,}[.]{1}[A-Za-z.]{2,6}$/;
		 
		 //For Checking Name validation
		 if(namechk.test(name_val)){
             $('#namecheck').html('');
         }else{
        	  $('#namecheck').html('**Name should not be blank Please fill Name ');
              return false;
         }
		 
		 //For Checking Mobile No Validation
		 if(mobilechk.test(mobile_val)){
             $('#mobilecheck').html('');
         }else{
        	  $('#mobilecheck').html('**Mobile number should be digit and character not allowed');
              return false;
         }
		 
		 //For Checking Email-ID Valdation
		 if(emailchk.test(email_val)){
             $('#emailcheck').html('');
         }else{
        	  $('#emailcheck').html('**Email ID is invalid Please write correct Email ID');
              return false;
         }
	 }

      </script>
       
       <div class="container"><br><br>
      <h1 class="text-center text-success">Registration Form</h1><br><br>
      <h3>${msg }</h3>
  <form action="save" method="post" onsubmit="return validation()">
  
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" name="name">
      <h5 id="namecheck" style="color: red"></h5>
    </div>
    
    <div class="form-group">
      <label for="mobile">Mobile:</label>
      <input type="text" class="form-control" id="mobile" name="mobile">
      <h5 id="mobilecheck" style="color: red"></h5>
    </div>
    
    <div class="form-group">
      <label for="email">E-Mail:</label>
      <input type="email" class="form-control" id="email" name="email">
      <h5 id="emailcheck" style="color: red"></h5>
    </div>
  
    <button type="submit" class="btn btn-success">Submit</button>
    
  </form>
   <br><br>
   
   <a href="result">Show Result</a>
  <!--  <h5 class="text-center text-danger"><a href="result">Student List</a></h5> -->
   <!-- <h5 class="text-center text-danger"><a href="result1?page=${1 }">Student List</a></h5> -->
</div>    
</body>
</html>