$(function(){
	
	$("#contentUuid").val("");
	$('#projectPicLoad').fileinput(
			{  
				language : 'zh',
				contentType    : 'application/x-www-form-urlencoded; charset=utf-8' , 
				uploadUrl : '../upload/image', //后台访问路径
				allowedFileExtensions : [ 'jpg','png' ],
				browseClass: "btn btn-primary", //按钮样式  
				showPreview:false,
				maxFileCount: 1
			});
	//文件上传成功后的回调
	$('#projectPicLoad').on('fileuploaded',function(event, data, previewId, index) {
		var result = data.response;
		var code = result.code;
		if(code==0){
			alert(data.message);
		}
		if(code==1){
			$("#projectPic").val(result.url);
			alert("上传成功!")
		}
	});
	$('#projectFile').fileinput(
			{  
				language : 'zh',
				contentType    : 'application/x-www-form-urlencoded; charset=utf-8' , 
				uploadUrl : '../upload/project', //后台访问路径
				allowedFileExtensions : [ 'md' ],
				maxFileCount: 1
			});


	//文件上传成功后的回调
	$('#projectFile').on('fileuploaded',function(event, data, previewId, index) {
		var result = data.response;
		var code = result.code;
		if(code==0){
			alert(data.message);
		}
		if(code==1){
			$("#contentUuid").val(result.uuid);
			alert("上传成功!")
		}
	});

})









