<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
  $(document).ready(function(){
	  $('.table .eBtn').on('click',function(event){
		  event.preventDefault();
		  var href=$(this).attr('href');
		  $.get(href,function(stu,status){
				
				$('.myForm #sid').val(stu.sid);
				$('.myForm #name').val(stu.name);
				$('.myForm #mobile').val(stu.mobile);
				$('.myForm #email').val(stu.email);
				
			});
		  $('.myForm #exampleModal').modal();
	  });
	  $('.nBtn').on('click',function(){
		  
		   
		    
		    $('.myForm1 #sid').val('');
			$('.myForm1 #name').val('');
			$('.myForm1 #mobile').val('');
			$('.myForm1 #email').val('');
			$('.myForm1 #exampleModal').modal();
	  });
	  $('.table .delBtn').on('click',function(event){
			
		    event.preventDefault();
			var href=$(this).attr('href');
			$('#myModal #delRef').attr('href',href);
			$('#myModal').modal();
		});
	
	  
  });
 </script>
 
  
        <div class="container">
        <button class="btn btn-success nBtn">New</button>
          <div class="card">
            <div class="card-block">
              <table class="table table-hover">
                <thead>
                 <tr>
                   <th>ID</th>
                   <th>Name</th>
                   <th>Mobile</th>
                   <th>Email</th>
                 </tr>
                </thead>
                <tbody>
                 <c:forEach var="stu" items="${slist }">
                   <tr>
                     <td>${stu.sid }</td>
                     <td>${stu.name }</td>
                     <td>${stu.mobile }</td> 
                     <td>${stu.email }</td>
                     <td><a href="delete?sid=${stu.sid}" class="btn btn-danger delBtn">Delete</a></td>
                     <td><a href="findOne?sid=${stu.sid}" class="btn btn-primary eBtn">Edit</a></td>
                   </tr>
                 </c:forEach>
                </tbody>
              </table>
              
            </div>
          </div>
      
          <div class="myForm1">
          
           <form action="save" method="post">
           
           <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-primary text-center" id="exampleModalLabel">Create a New User</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          
           <div class="form-group">
            <label for="name" class="col-form-label">Name:</label>
            <input type="text" class="form-control" id="name" name="name" value=""/>
          </div>
          
           <div class="form-group">
            <label for="mobile" class="col-form-label">Mobile:</label>
            <input type="text" class="form-control" id="mobile" name="mobile" value=""/>
          </div>
          
           <div class="form-group">
            <label for="email" class="col-form-label">Email:</label>
            <input type="text" class="form-control" id="email" name="email" value=""/>
          </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <input type="submit" class="btn btn-primary" value="save">
      </div>
    </div>
  </div>
</div>
         </form> 
          
          </div>
          
          <!-- modal form starts -->
           <div class="myForm">
          
           <form action="save1" method="post">
           
           <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-primary text-center" id="exampleModalLabel">Update Or Create</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       
           <div class="form-group">
            <!-- <label for="sid" class="col-form-label">ID:</label> -->
            <input type="hidden" class="form-control" id="sid" name="sid" value=""/>
           
          </div> 
          
           <div class="form-group">
            <label for="name" class="col-form-label">Name:</label>
            <input type="text" class="form-control" id="name" name="name" value=""/>
          </div>
          
           <div class="form-group">
            <label for="mobile" class="col-form-label">Mobile:</label>
            <input type="text" class="form-control" id="mobile" name="mobile" value=""/>
          </div>
          
           <div class="form-group">
            <label for="email" class="col-form-label">Email:</label>
            <input type="text" class="form-control" id="email" name="email" value=""/>
          </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <input type="submit" class="btn btn-primary" value="save">
      </div>
    </div>
  </div>
</div>
         </form> 
          
          </div>
          <!-- modal form ends -->
       
       
       <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-danger" id="exampleModalLabel">Delete Modal</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <p class="alert alert-danger">Are You Sure You Want To Delete</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="" class="btn btn-danger" id="delRef">Delete</a>
      </div>
    </div>
  </div>
</div>
       
       
        </div>
</body>
</html>