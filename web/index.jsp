<html>
<head>
<script>
function check_submit()
{
var un=document.getElementById("uname");
var pd=document.getElementById("pwd");
if(!un.value)
{
alert("Enter UserId");
un.focus();
return false;
}
if(!pd.value)
{
alert("Enter password");
pd.focus();
return false;
}
return true;
}
</script>
<style type="text/css">
    
    
    a:link {color: gray}
a:visited {color:gray}
a:hover {color:royalblue}
a:active {color:white}

  

    .full-width-background {
   margin-left: -100px;
   margin-right: -100px;
 }
 
 .full-width {
   margin-left: -100px;
   margin-right: -100px;
 }
 .fwb-red {
   background-color: royalblue;
 }
 
 
 .fwb-bl {
   background-color: gray;
 }
 .full-width-bl {
   margin-left: -100px;
   margin-right: -100px;
  height: 35px;
 }
 
 
 
 
 
</style>
</head>
<body  >
    
    <div style="position:relative;top:63px;" class="full-width-background fwb-red">something</div>
   <div style="position:relative;top:63px;" width="100" class="full-width-bl fwb-bl" >something</div>
   <div style="position:relative;top:60px;" class="full-width-background fwb-red">something</div>
   
    <table >
        <tr bgcolor="#eeffee" height="30" width="1300">
            
        </tr>
        <tr >
        <a href="./contactus.html"><img src="contac.png" height="27" width="30" style="position:relative;left:1050px;top:-130px;"/></a>
        <a href="adminlog.html" style="position: relative;left:1070px;top:-137px;">Administrator</a>
        
        <img style="position:relative;left:100px;top:-20px;" src="ss.png" height="120px" width="100px"/>
        </tr>
    </table>
     <div style="position:relative;top:-25px;left:70px;"><font style="color:steelblue; " size="4" >
       
Hom</font></div>
<div style="position:relative;top:-45px;left:180px;">
    
        <font style="color:gray; " size="4">
<a href="./aboutus.html">About us</a></font>


    
</div>
<div style="position:relative;top:-65px;left:280px;"><font style="color:gray;" size="4">
    <a href="./faqs.html">FAQs</a></font></div></br>
    
    <div style="position:relative;top:-105px;left:350px;"><font style="color:gray;" size="4">
    <a href="./courses.jsp">Courses</a></font></div></br>

    
    <img src="back.jpeg" width="1400" height="500"style="transparency:5;"/>
    <pre><font style="position:relative;top:-410px;left:380px;color: white; "  size="7"><b>Deeper Insights From 
    The World</b></font>
                <b><hr width="50"  style="position:relative;top:-390px;color:white;"></b></pre>

    

 <pre><font style="position:relative;top:-380px;left:300px;color: white; "  size="6"><b>Our Portal is fine-tuned to help you 
    grasp the world of knowledge
  </b></font>
                </pre>




    
   


    <div style="position:absolute;top:840px;left: 1030px;">
        
<form name="login" method="post" action="./login" onsubmit="return check_submit()" style="box-shadow:10px 10px 10px gray;position: relative;left:-15px;top:20px;">
		

    <center><img src="lgin.jpeg" width="200" style="position:relative;left:-30px;"></center>

User :
</br><input type="text" id="uname" name="uname"size="20" maxlength="25" value=""></br></br>

Password :
<br><input type="password" id="pwd" name="pwd" size="20" maxlength="25" value=""></br></br>

User type :
<br><select name="utype">
<option value="student">student</option>
<option value="faculty">faculty</option>
</select>

<br><br><input type="SUBMIT" value="SIGN IN" name="submit" style=" ">

</form></div>
    <div  style="background-color:steelblue;position:absolute;top:870px;left: 100px;"> 
        <font color="steelblue" size="7"  >Registration</font>
        <font color="white" size="5" style="position: relative;left: -8px;top:-10px;" ><i>Registration</i></font>
  <font color="steelblue" size="7"  >Registration</font>
       
    </div>
        </div>
        
        <a href="./stureg.html"><img id="animation" style="position:absolute;top:970px;left: 200px;" src="sreg.png" /></a>
        <a href="facreg.html"><img id="animation" style="position:absolute;top:1170px;left: 200px;" src="freg.png" /></a>
        
<div style="position:relative;top:240px; background-color:royalblue;"  >
    <font color="white" style="position:relative;left:560px;">Copyright � 2018</font></div>
   
    
    
</body>
</html>

