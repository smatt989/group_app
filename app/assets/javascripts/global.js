$(document).on("click", "a#facebook_login", function(e){
	window.location.replace("/auth/facebook");
	e.preventDefault();
})