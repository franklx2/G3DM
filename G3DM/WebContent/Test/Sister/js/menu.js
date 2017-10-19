$(document).ready(function() {
$(".submenu").hide();
	
 $(".editBackground").hide();
 
 $(".editAbout").hide();
 
 $(".upload").hide();
 
 $(".uploadProfilePicture").hide();
 
 $("#A1a").click(
		 function()
		 {
			 $("#A1b").toggle();
			 return false;
		 }
 );
 
 $("#A2a").click(
		 function()
		 {
			 $("#A2b").toggle();
			 return false;
		 }
 );
 
 $("#B2a").click(
		 function()
		 {
			 $("#B2b").toggle();
			 return false;
		 }
 );
 
 $("#B1a").click(
		 function()
		 {
			 $("#B1b").toggle();
			 return false;
		 }
 );
 
 $("#C1").click(
		 function()
		 {
			 return false;
		 }
 );
 
 $(".uploadProfilePictureButton").click( 
			function()
			{
					$(".uploadProfilePicture").show();
					$(".uploadProfilePictureButton").hide();
			}
			);
 
 $(".cancelUploadProfilePicture").click( 
			function()
			{
					$(".uploadProfilePicture").hide();
					$(".uploadProfilePictureButton").show();
			}
			);
 
 $(".uploadButton").click( 
			function()
			{
					$(".upload").show();
					$(".uploadButton").hide();
			}
			);

$(".cancelUpload").click( 
			function()
			{
					$(".upload").hide();
					$(".uploadButton").show();
			}
			);


 
$(".edit").click( 
		function()
		{
				$(".background").hide();
				$(".editBackground").show();
		}
		);

$(".cancel").click( 
		function()
		{
				$(".editBackground").hide();
				$(".background").show();
		}
		);

$(".editAboutWrapper").click( 
		function()
		{
				$(".about").hide();
				$(".editAboutButton").hide();
				$(".editAbout").show();
		}
		);

$(".cancelAbout").click( 
		function()
		{
				$(".editAbout").hide();
				$(".editAboutButton").show();
				$(".about").show();
		}
		);


});