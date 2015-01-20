function usersignup(){
	
var firstname = $("#fname");
var lastname = $("#lname");
var email = $("#email");
var pass = $("#pass");
var cpass = $("#cpass");
var url = "Scripts/UserSignUp.php";

if(firstname.val()==""){
alert("Please Enter Your FirstName");	
}
else if(firstname.val().search("[^A-za-z ]")>-1){
alert("Only Alphabets are allowed in FirstName");
}	
else if(lastname.val()!=""&&lastname.val().search("[^A-za-z ]")>-1){
alert("Only Alphabets are allowed in LastName");
}	
else if(email.val()==""){
	alert("Please enter your Email Address");
}
else if(email.val().indexOf("@")<1 || email.val().lastIndexOf(".")<email.val().indexOf("@")+2 || email.val().lastIndexOf(".")+2>=email.val().length){
alert("Invalid Email Address");
}
else if(pass.val()==""){
	alert("Please enter your Password");
}
else if(pass.val().length<6){
	alert("Password should be of minimum 6 characters");
}
else if(cpass.val()==""){
	alert("Please confirm your password");
}
else if(pass.val()!=cpass.val()){
alert("Your entered Password and confirm Password are not matching");	
}
else{
$("#successresponse").show(); 

$.post(url,{request:"newuserinsert",firstname:firstname.val(),lastname:lastname.val(),email:email.val(),pass:pass.val(),},function(data) {																																																					 																																																			 																																																																																																																																																															
			//alert(data);																																																																																																																																																														
if(data==1){
	$('#signupform').slideUp("fast");
	$("#successresponse").html("<p>Congratulations.You have been registered Successfully.Please Check Your Email for Activation Link.</p><br/><a href=\"javascript:resendlink('"+email.val()+"')\";' style='font-size:12px;color:black;'>Resend the Activation Link</a>").show();
	$("#extraspace").show();																																																	}
																																																		
																																																	   else if(data==2){
																																																		   	$("#successresponse").hide();																																													   $("#errorresponse").html("A Profile has been already registered with this Email Address.Click on forget password link to retreive your password.").show();
																																																	   }
																																																	
																																																													});

}
}

<!----------------------------------------------------------------------------------------------------------------->

function resendlink(x){
	var url = "Scripts/UserResendLink.php";
	$.post(url,{request:"resendlink",email:x,},function(data) {																																																					 																																																 if(data==1){
	$("#successresponse").html("<p>Please Check Your Email for Activation Link.</p>").show();
																																																		}
																																																			else{
	$("#successresponse").hide();																																																	   $("#errorresponse").html("An Error Occured. Please Try Again.").show();
																																																	   }
																																																																																																																																																																		
																																																	 });
}


<!----------------------------------------------------------------------------------------------------------------->

function userlogin(){

var username = $("#email");
var userpass = $("#pass");
var url = "Scripts/UserLogin.php";

if(username.val()==""){
	alert("Please Enter Your Email Address");
}
else if(userpass.val()==""){
alert("Please Enter You Password");	
}
else{

$.post(url,{request:"newuserlogin",username:username.val(),userpass:userpass.val(),},function(data) {
																																																 if(data==1){
		window.location.href="Home/index.php";																																														 }
																																																 if(data==0){
	$("#loginerror").html("Invalid Email Address or Password. Please Try Again.").show();	
	document.getElementById("email").value="";
	document.getElementById("pass").value="";
	}
																																																});

}

}

<!----------------------------------------------------------------------------------------------------------------->

function forgetuserpassword(){
	
var femail = $("#femail");	
var url = "Scripts/UserForgetPassword.php";

if(femail.val()==""){
	alert("Please enter your Email Address");
}
else if(femail.val().indexOf("@")<1 || femail.val().lastIndexOf(".")<femail.val().indexOf("@")+2 || femail.val().lastIndexOf(".")+2>=femail.val().length){
alert("Invalid Email Address");
document.getElementById("femail").value="";
}
else{
	$("#forgetpassworderror").show();
$.post(url,{request:"userforgetpassword",femail:femail.val(),},function(data) {
		
		if(data==1){
			$('#forgetpasswordform').slideUp("fast");
		$("#forgetpassworderror").html("Your Password has been mailed to given Email Address.").show();																																													 }
																																																 if(data==0){
	$("#forgetpassworderror").html("Error : Email Address not found in our records. Please <a href='signup.php'>Register Here</a>.").show();	
																																																 }

});
}
}

<!----------------------------------------------------------------------------------------------------------------->
function givefeedback(){
	var url="Scripts/UserFeedback.php";
	var name = $("#name");
	var email = $("#email");
	var feed = $("#feed");
	
if(name.val()==""){
alert("Please Enter Your Name");	
}
else if(name.val().search("[^A-za-z ]")>-1){
alert("Only Alphabets are allowed in Name");
}
else if(email.val()==""){
	alert("Please enter your Email Address");
}
else if(email.val().indexOf("@")<1 || email.val().lastIndexOf(".")<email.val().indexOf("@")+2 || email.val().lastIndexOf(".")+2>=email.val().length){
alert("Invalid Email Address");
}
else if(feed.val()==""){
alert("Please Enter your Feedback");	
}
else if(feed.val().length>255){
alert("Maximum 255 characters are allowed in Feedback");	
}
else{
	$("#feedbackformresponse").html("Please Wait..").show();
$.post(url,{request:"insertfeedback",name:name.val(),email:email.val(),feed:feed.val(),},function(data) {
		//alert(data);
		if(data==1){
			$('#feedbackform').slideUp("fast");
		$("#feedbackformresponse").html("Thank You for your Valuable Feedback.").show();																																													 }
																																																 if(data==0){
	$("#feedbackformresponse").html("Error : Please Try again").show();	
																																																 }

});

}
}

