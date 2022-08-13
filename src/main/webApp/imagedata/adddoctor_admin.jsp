<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a new Doctor</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<style type="text/css">
body{
	background: #b3b3ff;
}
.container {
	
	height: 50%;
	width: 80%;
	margin-top: 50px;
}


</style>
</head>
<body>
	<div class="container">
	<div class="col-md-6 offset-3">	
	<h4 class="text-center bg-success text-white p-3 m-0">Doctor Registration Form</h4>
	<form class="pt-3 pl-5 pr-5 bg-light" method="POST" enctype="multipart/form-data" action="/adddoctor">
		<div class="form-group">
			<label> Name<span class="text-danger"> *</span></label>
			<input type="text" name="userName" id="user_name" placeholder="Enter Name" class="form-control" required >
			<div id="errName"></div>
		</div>
		
		<div class="form-group">
			<label>Mobile<span class="text-danger"> *</span></label>
			<input type="tel" name="userMobile" id="user_mobile" placeholder="Enter Mobile Number" class="form-control" required >
			<div id="errMobile"></div>
		</div>

		<div class="form-group form-inline">
			<label>Gender<span class="text-danger"> *</span></label> &nbsp;&nbsp;
			<input type="radio" name="userGender" class="user_gender" value="1" checked="true">&nbsp;&nbsp; Male
			&nbsp;&nbsp;<input type="radio" name="userGender" class="user_gender" value="2">&nbsp;&nbsp; Female
			<div id="errGender"></div>
		</div>
		

		<div class="form-group">
			<label >Specialization<span class="text-danger"> *</span></label>
			<select id="user_special" name="userSpecial" class="form-control" required>
				<option value="">Select..</option>
				<option value="Online">Online	</option>
				<option value="Offline">Offline</option>
				<option value="Both">Both</option>
				

			</select>
			<div id="errSpecial"></div>
		</div>

		<div class="form-group">
			<label>Location<span class="text-danger"> *</span></label>
			<input type="text" name="userCity" id="user_city" placeholder="Enter Location" class="form-control" required>
			
			<div id="errCity"></div>
		</div>

		<div class="form-group">
			<label>Day<span class="text-danger"> *</span></label>&nbsp;&nbsp;
			<input type="checkbox" name="userDay" value="Monday" >&nbsp;&nbsp; Mon 
			&nbsp;&nbsp;<input type="checkbox" name="userDay" value="Tuesday" >&nbsp;&nbsp; Tue
			&nbsp;&nbsp;<input type="checkbox" name="userDay" value="Wednesday" >&nbsp;&nbsp; Wed
			&nbsp;&nbsp;<input type="checkbox" name="userDay" value="Thursday" >&nbsp;&nbsp; Thurse
			&nbsp;&nbsp;<input type="checkbox" name="userDay" value="Friday" >&nbsp;&nbsp; Fri
			&nbsp;&nbsp;<input type="checkbox" name="userDay" value="Saturday">&nbsp;&nbsp; Sat
			&nbsp;&nbsp;<input type="checkbox" name="userDay" value="Sunday">&nbsp;&nbsp; Sun
			<div id="errDay"></div>
		</div>

		<div class="form-group">
			<label>Fees<span class="text-danger"> *</span></label>
			<input type="text" name="userFee" id="user_fee" placeholder="Enter Fees" class="form-control" required >
			<div id="errMobile"></div>
		</div>

		<div class="form-group">
			<label>Upload Image<span class="text-danger"> *</span></label>
			<div class="custom-file">
			 <input type="file" class="custom-file-input" id="img" name="img" required>
				<label class="custom-file-label" for="img">image...</label>
			</div>							
		</div>
	
		<div class="form-group">
			<label>Start<span class="text-danger"> *</span></label>
			<input type="Time" name="userTime1" id="user_time1" placeholder="Enter start time" class="form-control timepicker" required >
			<div id="errtime1"></div>
		</div>	

		<div class="form-group">
			<label>End<span class="text-danger"> *</span></label>
			<input type="Time" name="userTime2" id="user_time2" placeholder="Enter end time" class="form-control timepicker" required >
			<div id="errtime2"></div>
		</div>	

		<div class="form-group text-center m-0 pb-2">
			<button type="submit" class="btn btn-outline-dark"  name="reg">Register</button>
		</div> 
	</form> 
	<div class="p-3 bg-dark m-0 text-center text-white">
		Developed with love and care
	</div>
	</div>
</div>


	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>