<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
input[type=text], select {
    width: 35%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=password], select {
    width: 35%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 25%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 10px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}

div {
 
    background-color: #A9A9A9;
    background-image:url("https://media.istockphoto.com/photos/concept-of-education-or-back-to-school-on-green-background-picture-id494617082?k=6&m=494617082&s=612x612&w=0&h=5GPK50lgZMHQCLqKu_llIOXglXO73i2JKdwHK5UPB80=");
    background-repeat: no-repeat;
     background-size: 1510px 750px;
    padding: 200px;
    
}
<body>
</style>
<center>

<div>
  <form action="Regiaction.jsp" name="fm" method="post">
  
    <br>
    <input type="text" id="name" name="name" placeholder="Your name.." required>

    <br>
    <input type="text" id="phno" name="phno" placeholder="Mobile Number" required>

   <br>
    <input type="text" id="Uname" name="Uname" placeholder="User Name" required>
    
    <br>
    <input type="password" id="pwd" name="pwd" placeholder="Type your Pasword">
    
    <br>
    <input type="password" id="cpwd" name="cpwd" required" placeholder="Re-Enter Password">
    
  <br>
    <input type="submit" value="Submit">
  </form>
</div>

</center>
</body>
</html>