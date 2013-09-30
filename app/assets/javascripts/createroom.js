$(document).ready(function(){
	bindCreateRoomButtons();
});

function bindCreateRoomButtons(){
	$(document).off("click", ".create_room_button");
	$(document).on("click", ".create_room_button", function(){
		var room_obj = new Object();
		room_obj.title = $("#new_room_title").val();
		$.ajax({
			type: "post",
			url: "/rooms",
			data: { room: room_obj }
		});
	});
}
