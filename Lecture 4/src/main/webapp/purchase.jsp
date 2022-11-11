<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
magin:0;
}
.grid-container {
	display: grid;
    justify-content: center;
    grid-template-columns: 150px 150px;
    padding: 10px;
}
.col-1{
 display : grid;
 magin-left:200px;
 min-width: 100;
}
.col-2{
 display : grid;
 magin-left:200px;
 min-width: 100;
}
select {
width :150px;
height: 55px;
}
.btn{
 background-color: #FF9999;
    color: black;
    padding: 10px;
    margin: 10px 660px;
    border: none;
    width: 150px;
    border-radius: 9px;
    cursor: pointer;
    font-size: 15px;
}
</style>
</head>
<body style="background:url(product-images/rawpixel.jpg);background-repeat: no-repeat;background-size: cover ;background-attachment :fixed">
<form name = 'ChoseItems'  method= GET action='Order Summary.jsp'>
<div class='grid-container'>
<div class='col-1'>
<h2>Processor</h2>
 <label class="form-control">
    <input type="radio" name="processor" value='Celeron D' />
    Celeron D
  </label>
  <label class="form-control">
    <input type="radio" name="processor" value='Pentium IV' />
    Pentium IV
  </label>
  <label class="form-control">
    <input type="radio" name="processor" value='Pentium D' />
    Pentium D
  </label>
 </div>
 <div class='col-2'>
  <h2>Accessories</h2>
  <label class="form-control">
  <input type="checkbox" name="checkbox" />
  Monitor
  </label>
	<select name="Items" multiple>
    <option  value='Camera'>Camera</option>
    <option value='Printer'>Printer</option>
    <option value='Scanner'>Scanner</option>
  </select>
</div>
</div>
  <input type="submit" value="PURCHASE" class="btn">
</form>
</body>
</html>