function askquestion(){
var cate = $("#cate");
var title = $("#title");
var nicE = new nicEditors.findEditor('description');
var desc = nicE.getContent();
var tags = $("#tags");
var url = "../Scripts/addQuestion.php";
if(cate.val()==0){
alert("Please select a category");
}
else if(title.val()==""||title.val()=="What's your question? Be specific and relevant to the selected category."){
alert("Please Enter the title");	
}
else if(desc==""){
alert("Please Enter the Description");	
}	
else{
$.post(url,{request:"addquestion",cate:cate.val(),title:title.val(),desc:desc,tags:tags.val(),},function(data) {
if(data!=0){
window.location.href="../question.php?"+data;
}
else if(data==0){
alert("Error: Please try again");
}																																																																																																																																																													
});
}
}

function editprofile(){
var firstname = $("#fname");
var lastname = $("#lname");
var city = $("#city");
var country = $("#country");
var url = "../Scripts/EditUser.php";

if(firstname.val()==""){
alert("Please Enter Your FirstName");	
}
else if(firstname.val().search("[^A-za-z ]")>-1){
alert("Only Alphabets are allowed in FirstName");
}	
else if(lastname.val()!=""&&lastname.val().search("[^A-za-z ]")>-1){
alert("Only Alphabets are allowed in LastName");
}	
else if(city.val()!=""&&city.val().search("[^A-za-z ]")>-1){
alert("Only Alphabets are allowed in City");
}
else if(country.val()!=""&&country.val().search("[^A-za-z ]")>-1){
alert("Only Alphabets are allowed in Country");
}
else{
$.post(url,{request:"edituser",firstname:firstname.val(),lastname:lastname.val(),city:city.val(),country:country.val(),},function(data) {																																																					 																																																			 																																																																																																																																																															
//alert(data);																																																																																																																																																														
if(data==1){
alert("Your profile has been updated successfully");
window.location.href="profile.php";
}				
else if(data==0){

}
});
}
}

function changepassword(){
var url = "../Scripts/UserChangePassword.php";
var oldpassword = $("#oldpass");
var newpassword = $("#newpass");
var confirmnewpassword = $("#cnewpass");
if(oldpassword.val()==""){
alert("Please Enter Your Old Password");
}
else if(newpassword.val()==""){
alert("Please Enter Your New Password");
}
else if(newpassword.val().length<6){
alert("New Password should be of Minimum 6 characters");
}
else if(confirmnewpassword.val()==""){
alert("Please Re-Enter Your New Password");
}
else if(newpassword.val()!=confirmnewpassword.val()){
alert("Your entered New Password and Re-entered New Password are not matching");
}
else{
$.post(url,{request:"changepassword",oldpassword:oldpassword.val(),newpassword:newpassword.val(),},function(data) {																																																					 																																																																																																																																																												
			//alert(data);	
if(data==1){																																																																																																																																																												
	alert("Your Password has been Changed Successfully.");
window.location.href="profile.php";
	}
else if(data==0){																																															
	  alert("Your Old Password is incorrect. Please Try Again.");
	}	
																																									
});																																																	  																																																		
}
}


function deleteuseraccount(){
	
var userpass = $("#pass");	
var url = "../Scripts/UserDeleteAccount.php";

if(userpass.val()==""){
	alert("Please enter your Password");
}
else{
var r = confirm("Are you sure you want to delete");
if(r==true){
$.post(url,{request:"deleteuseraccount",userpass:userpass.val(),},function(data) {
		//alert(data);
if(data==1){
window.location.href="http://localhost/ChampsQuestionnaire/";
}
else if(data==0){
alert("Wrong Password");
}
});
}
}
}


function specialuserlogin(x){
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
//alert(data);
		if(data==1){
		window.location.href="question.php?"+x;
		 }
		 else if(data==0){
	$("#specialloginerror").html("Invalid Email Address or Password. Please Try Again.").show();	
	document.getElementById("email").value="";
	document.getElementById("pass").value="";
	}																																												});

}
}


function solved(x,y,z){
var url = "Scripts/bestanswer.php";
$.post(url,{request:"addbestanswer",userid:x,questionid:y,answerid:z,},function(data) {
		window.location.href="question.php?"+y;
});
}

function nolike(x){
$("#speciallogin").show();
}

function nocomment(x){
$("#speciallogin").show();
}

function noanswer(x){
$("#speciallogin").show();
}

function closelogin(){
$("#speciallogin").hide();
}

function cleartext(){
document.getElementById("comment").style.color="#000000";
if(document.getElementById("comment").value=="Write your Comment"){
document.getElementById("comment").value="";
}
}

function clearanswertext(x){
document.getElementById("answercomment"+x).style.color="#000000";
if(document.getElementById("answercomment"+x).value=="Write your Comment"){
document.getElementById("answercomment"+x).value="";
}
}

function comment(x){
$("#commentbox"+x).show();
}

function answercomment(x){
$("#answercommentbox"+x).show();
}

function closebox(x){
$("#commentbox"+x).hide();
}

function closeanswercommentbox(x){
$("#answercommentbox"+x).hide();
}

function closeeditbox(x){
$("#editbox"+x).hide();
}

function addcomment(x){
var str = $("#comment").val();
var comment = str.replace(/ /g,"+");
var userid = $("#uid");
var url = "Scripts/AddComment.php";
if(comment==""||comment=="Write+your+Comment"){
	alert("Write your comment");
}
else{
$("#comments").load("Scripts/AddComment.php?request=addcomment&&comment="+comment+"&&userid="+userid.val()+"&&questionid="+x);
$("#commentbox"+x).hide();
}
}

function addanswercomment(x){
var str = $("#answercomment"+x).val();
var comment = str.replace(/ /g,"+");
var userid = $("#answeruid"+x);
var url = "Scripts/AddComment.php";
if(comment==""||comment=="Write+your+Comment"){
	alert("Write your comment");
}
else{
$("#answercomments"+x).load("Scripts/AddComment.php?request=addcomment&&flag=answer&&comment="+comment+"&&userid="+userid.val()+"&&questionid="+x);
$("#answercommentbox"+x).hide();
}
}

function editcommentbox(x,y,z){
$("#editbox"+x).show();
$("#editbox"+x).load("Scripts/AddComment.php?request=showeditbox&&commentid="+x+"&&userid="+y+"&&questionid="+z+"&&flag=0");
}

function editanswercommentbox(x,y,z){
$("#editbox"+x).show();
$("#editbox"+x).load("Scripts/AddComment.php?request=showeditbox&&commentid="+x+"&&userid="+y+"&&questionid="+z+"&&flag=1");
}

function deleteanswercomment(x,y,z){
$("#answercomments").load("Scripts/AddComment.php?request=deletecomment&&commentid="+x+"&&userid="+y+"&&questionid="+z+"&&flag=1");
}

function deletecomment(x,y,z){
$("#comments").load("Scripts/AddComment.php?request=deletecomment&&commentid="+x+"&&userid="+y+"&&questionid="+z+"&&flag=0");
}

function editcomment(x,y,z,f){
var nstr = $("#ncomment").val();
var ncomment = nstr.replace(/ /g,"+");
var url = "Scripts/AddComment.php";
if(ncomment==""){
	alert("Write your comment");
}
else{
if(f==1){
$("#answercomments").load("Scripts/AddComment.php?request=editcomment&&commentid="+x+"&&comment="+ncomment+"&&userid="+y+"&&questionid="+z+"&&flag=f");
}
else if(f==0){
$("#comments").load("Scripts/AddComment.php?request=editcomment&&commentid="+x+"&&comment="+ncomment+"&&userid="+y+"&&questionid="+z+"&&flag=f");
}
$("#editbox"+x).hide();
}
}

function like(x,y){
$("#like"+x).load("Scripts/AddLike.php?request=addlike&&userid="+y+"&&questionid="+x);
}

function addanswer(x,y){
var nicE = new nicEditors.findEditor('answer');
var answer = nicE.getContent();
var url = "Scripts/addAnswer.php";
if(answer==""){
alert("Please enter your answer");	
}	
else{
$.post(url,{request:"addanswer",answer:answer,questionid:x,userid:y,},function(data) {
if(data!=0){
window.location.href="question.php?"+data;
}
else{
alert("Error: Please try again");
}																																																																																																																																																													
});
}
}

function addtomyfavs(x,y){
var url = "Scripts/AddFavourites.php";
$.post(url,{request:"addfavourite",questionid:x,userid:y,},function(data) {
if(data!=0){
window.location.href="question.php?"+data;
}
else{
alert("Error: Please try again");
}																																																																																																																																																													
});
}

function removefromfavs(x,y){
var url = "Scripts/AddFavourites.php";
$.post(url,{request:"removefavourite",questionid:x,userid:y,},function(data) {
if(data!=0){
window.location.href="question.php?"+data;
}
else{
alert("Error: Please try again");
}																																																																																																																																																													
});
}

function addtogroup(x,y){
var url = "Scripts/AddGroups.php";
$.post(url,{request:"addgroup",groupid:x,userid:y,},function(data) {
if(data!=0){
window.location.href="questions.php?"+data;
}
else{
alert("Error: Please try again");
}																																																																																																																																																													
});
}

function removefromgroup(x,y){
var url = "Scripts/AddGroups.php";
$.post(url,{request:"removegroup",groupid:x,userid:y,},function(data) {
if(data!=0){
window.location.href="questions.php?"+data;
}
else{
alert("Error: Please try again");
}																																																																																																																																																													
});
}

function editquestionbox(x,y){
$("#close"+y).show();
$("#questionbox"+y).show();
$("#questionbox"+y).load("Scripts/addQuestion.php?request=showquestionbox&&userid="+x+"&&questionid="+y);
}

function closequestionbox(y){
$("#close"+y).hide();
$("#questionbox"+y).hide();
}

function editanswerbox(x,y){
$("#closeanswer"+y).show();
$("#answerbox"+y).show();
$("#answerbox"+y).load("Scripts/addAnswer.php?request=showanswerbox&&userid="+x+"&&answerid="+y);
}

function closeanswerbox(y){
$("#closeanswer"+y).hide();
$("#answerbox"+y).hide();
}

function updatequestion(x){
var cate = $("#cate");
var title = $("#title");
var nicE = new nicEditors.findEditor('description');
var desc = nicE.getContent();
var tags = $("#tags");
var url = "Scripts/addQuestion.php";
if(cate.val()==0){
alert("Please select a category");
}
else if(title.val()==""){
alert("Please Enter the title");	
}
else if(desc==""){
alert("Please Enter the Description");	
}	
else{
$.post(url,{request:"updatequestion",questionid:x,cate:cate.val(),title:title.val(),desc:desc,tags:tags.val(),},function(data) {
//alert(data);
if(data!=0){
window.location.href="question.php?"+data;
}
else if(data==0){
alert("Error: Please try again");
}																																																																																																																																																													
});
}
}

function updateanswer(x,y){
var nicE = new nicEditors.findEditor('uanswer'+x);
var answer = nicE.getContent();
var url = "Scripts/addAnswer.php";
if(answer==""){
alert("Please enter your answer");	
}	
else{
$.post(url,{request:"updateanswer",answer:answer,answerid:x,userid:y,},function(data) {
if(data!=0){
window.location.href="question.php?"+data;
}
else{
alert("Error: Please try again");
}																																																																																																																																																													
});
}
}
