// 		$("form :input.required").each(function () {
// 	        var $required = $("<strong class='high'>*</strong>");
// 	        $(this).parent().append($required);
// 	    });
$("#signupSubmit").click(function(){
	$("form :input").each(function(){
		fouseOut(this);
	});
	
	var $from = $("#registrationForm");
	if ($(".onError").length > 0) {
		return;
	} else {
		var o = formToJson($from);
		var action = "/userMangement/createuser";
		jQuery.ajax({
			url: action,
			type: "post",
			data: JSON.stringify(o),
			dataType: "json",
			contentType: "application/json; charset=utf-8",
	    	beforeSend: function () {
	    		$("#alert_wait").show();
	    	},
	    	complete: function () {
	    		$("#alert_wait").hide();
	    	},
	    	success: function(data){
	    		
	    	},
	    	error:function(data) {
//	    		var errorMsg = $(data.responseText).find(".error").html();
//	    		$("#errorMsg").show();
//	    		$("#errorMsg").append('<span style="color:#ff6600">' + errorMsg + '</span>');
	    	}
		});
	}
});

$("form :input").blur(function(){
	fouseOut(this);
});

function fouseOut(obj) {
	var $parent = $(obj).parent();
	$parent.find(".msg").remove();
	$parent.find(".high").remove();
	$(obj).removeAttr("style");
	if($(obj).is("#userName")){
		if($.trim(obj.value) == "" || $.trim(obj.value).length < 6){
			$(obj).attr("style","border-color: red");
			var $required = $("<strong class='high'>*</strong>");
	        $(obj).parent().append($required);
			var errorMsg = " Please input at least 6 characters！";
			$parent.append("<span class='msg onError'>" + errorMsg + "</span>");
		} else {
			var okMsg=" Input correct";
			$parent.find(".high").remove();
			$parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
		}
	}
	
	if($(obj).is("#email")){
		if($.trim(obj.value) == "" || ($.trim(obj.value) != "" && !/.+@.+\.[a-zA-Z]{2,4}$/.test($.trim(obj.value)))){
			$(obj).attr("style","border-color: red");
			var errorMsg = " Please input the mail adress！";
			$parent.append("<span class='msg onError'>" + errorMsg + "</span>");
		} else {
			var okMsg=" Input correct";
			$parent.find(".high").remove();
			$parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
		}
	}
	
	if($(obj).is("#userPassword")){
		if($.trim(obj.value) == "" || $.trim(obj.value).length < 6){
			$(obj).attr("style","border-color: red");
			var $required = $("<strong class='high'>*</strong>");
	        $(obj).parent().append($required);
			var errorMsg = " Please input at least 6 characters！";
			$parent.append("<span class='msg onError'>" + errorMsg + "</span>");
		} else {
			var okMsg=" Input correct";
			$parent.find(".high").remove();
			$parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
		}
	}
	
	if($(obj).is("#userPasswordagain")){
		if($.trim(obj.value) == "" || $.trim(obj.value).length < 6){
			$(obj).attr("style","border-color: red");
			var $required = $("<strong class='high'>*</strong>");
	        $(obj).parent().append($required);
			var errorMsg = " Please input at least 6 characters！";
			$parent.append("<span class='msg onError'>" + errorMsg + "</span>");
		} else if($.trim(obj.value) != $.trim($("#userPassword").val())){
			var errorMsg=" Please input the same password!";
			$parent.find(".high").remove();
			$parent.append("<span class='msg onError'>" + errorMsg + "</span>");
		} else {
			var okMsg=" Input correct";
			$parent.find(".high").remove();
			$parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
		}
	}
}