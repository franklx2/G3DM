$(document).ready(function() {

 $(".editBackground").hide();
 
 $(".editAbout").hide();
 
 $(".upload").hide();
 
 $(".uploadProfilePicture").hide();
 
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