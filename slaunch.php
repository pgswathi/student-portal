<html>

   <head>
       <title>zaaz</title>
	   
	   <script type="text/javascript">
	      function validate()
		  {
		     if(document.myform.email.value=="")
			 {
			    alert("Please provide your email!");
				document.myform.email.focus();
				return false;
			 }
			 if(document.myform.password.value=="")
			 {
			    alert("Please provide your password!");
				document.myform.password.focus();
				return false;
			 }
		  }
		  
		  function page1(){ window.location = "";}
		  function page2(){ window.location = "ssignup.php";}
		  
		  
	   </script>
	       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
		   <link rel="stylesheet" href="slaunch.css">
		   <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	       <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
   </head>
   
   
     
   <body style="background-image:url(s4.jpg);" >
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	 

	      <div class="c1">
		      <form >
		        <input id="c2" class="s1" type="button" value="LOGIN"  onClick="page1();"/>
		        <input id="c3" class="s1" type="button" value="SIGNUP" onClick="page2();"/>
		        
	         </form>
			 
			 <form action="stafflogin_p.php" name="myform">
		   
	        <input id="c1" type="text" maxlength="40" placeholder="staffId" size="36" name="staffId"/>
		   
		    <input id="c1" type="password" maxlength="20" placeholder="Password" size="36" name="password" />
		     <input type="text" value="hai"/>
		    <input id="c1" type="submit" value="Login" />
		   
	    </form>
		  </div>
		 
 <?php ?>
   </body>
</html>
