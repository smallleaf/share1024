$('#file-0a').fileinput(
		{  
			language : 'zh',
			contentType    : 'application/x-www-form-urlencoded; charset=utf-8' , 
			uploadUrl : 'test/uploadMultipleFile.do', //后台访问路径
			allowedFileExtensions : [ 'jpg', 'png', 'gif' ], 
			allowedPreviewTypes : [ 'image', 'html', 'text', 'video', 'audio',
					'flash' ],
		});

//失败回调
$('#file-0a')
		.on(
				'fileuploaderror',
				function(event, data, previewId, index) {
					var form = data.form, files = data.files, extra = data.extra, response = data.response, reader = data.reader;
				/*	console.log(data);
					console.log('File upload error');*/
				});

//失败回调
$('#file-0a').on('fileerror', function(event, data) {
/*	
	console.log(data.id);
	console.log(data.index);
	console.log(data.file);
	console.log(data.reader);
	console.log(data.files);*/
});

//文件上传成功后的回调
$('#file-0a').on('fileuploaded',function(event, data, previewId, index) {
			var form = data.form, files = data.files, extra = data.extra, response = data.response, reader = data.reader;
			//console.log('File uploaded triggered');
			//console.log(data);
});

















