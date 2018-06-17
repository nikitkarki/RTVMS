<html>
<head>
  <title> contact page</title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">
    body {padding-top:20px;} 
    </style>
    <script type="text/javascript">
     function validate() {    	                                      	 
    var name = document.forms["RegForm"]["Name"];              
   var email = document.forms["RegForm"]["Email"]; 
   var message = document.forms["RegForm"]["Message"];  
   
   if (name.value == "")                                 
   {
       window.alert("Please enter your name.");
       name.focus();
       return false;
   }
   if (email.value == "")                                 
   {
       window.alert("Please enter your email.");
       email.focus();
       return false;
   }
  
   if (message.value == "")                                 
   {
       window.alert("Please enter your message.");
       message.focus();
       return false;
   }
        } 
     
</script>
</head>
<body>
     <div class="container">
     
     <h3><b>Traffic Law Violation Management System pvt. ltd.</b></h3> 
    <h6>Munalpath, Biratnagar,Nepal</h6>
    <h6>Tel:021463849</h6>
    <hr>
    <h6><b>Customer support</b></h6>
    <h6>Email:abc@gmail.com</h6>
    <h6>Facebook:rtvms@facebook.com</h6>
    <h6>Viber no:9840030000</h6>
    <h6>Whatsapp no:9876543210</h6>
    
    <h6>(for general inquiry and technical assistance)</h6>
     
     
	<div class="row">
	  <div class="col-md-6 col-md-offset-3">
        <div class="well well-sm">
    <form name="RegForm" class="form-horizontal" action="#" onsubmit="return validate()" method="post">
<fieldset>
<legend class="text-center">Contact us</legend>
<div class="form-group">
  <label class="col-md-3 control-label" for="name">Name</label>
  <div class="col-md-9">
 <input type="text" name="Name" placeholder="Your name" class="form-control">
</div>
</div>
<div class="form-group">
  <label class="col-md-3 control-label" for="email">Email</label>
  <div class="col-md-9">
<input type="text" name="Email" placeholder="Your Email" class="form-control" >
</div>
</div>
<div class="form-group">
  <label class="col-md-3 control-label" for="subject">Subject</label>
  <div class="col-md-9">
<input type="text" name="Subject" placeholder="Subject (optional)" class="form-control">
</div>
</div>
<div class="form-group">
  <label class="col-md-3 control-label" for="message">Message</label>
  <div class="col-md-9">
  <textarea class="form-control" name="Message"  placeholder="Please enter your message here..." rows="5"></textarea>
  </div>
  </div>
   <div class="form-group">
              <div class="col-md-12 text-right">
<input type="submit" value="Submit">
</div>
</div>
</fieldset>
</form>
</div>
</div>
</div>
</div>
</body>
</html>
