$(function(){
	
	var itemboxes = document.getElementsByClassName("item_box");
	
	for(var i=0; i<itemboxes.length;i++){
		var filetitle = $(itemboxes[i]).find(".item_title").attr("value").split(".")[0];
		
		$(itemboxes[i]).find(".imagefile").css("background", "url('./groupware/view/depboard/upload/thumbnail/"+ filetitle +"_thumb.jpg') no-repeat center center")
	}
})

function onUpload() {
	alert("upup");
//	var files = document.getElementById("fileUp").files;
//	for(var i=0; i<files.length; i++){
//		alert(files[i].size);
//	}
//	
	document.sharefolderForm.action = "depFileInsertAction.gw";
	document.sharefolderForm.submit();
}

function onDownload() {
	alert("dada");
	document.sharefolderForm.action = "downloadAction.gw";
	document.sharefolderForm.submit();
}