define('upLoader',function(require,exports){

	var pathConvert = require('pathConvert');
	require('messages_zh');
	require('jquery.validate');
	require('fileinput_new');
	
	//options传过来的参数，type 1--文件传输，2--图片传输
	function init(options,type){
		var upLoadUrl;
		if(type==1){
			upLoadUrl = "upload/file";
		}else if(type==2){
			upLoadUrl = "upload/image";
		}
		var id = options.id;
		var returnId = options.returnId;
		var allowedFileExtensions = options.allowedFileExtensions;
		var maxFileCount = options.maxFileCount;
		$("#"+id).fileinput({
			language : 'zh',
			contentType    : 'application/x-www-form-urlencoded; charset=utf-8' ,
			uploadUrl:upLoadUrl,
			allowedFileExtensions:allowedFileExtensions,
			browseClass: "btn btn-primary", //按钮样式  
			showPreview:false,
			maxFileCount:maxFileCount
		})
		$("#"+id).on('fileuploaded',function(event,data,previewId,index){
			var result = data.response;
			var code = result.code;
			if(code==0){
				alert(data.message);
			}
			if(code==1){
				$("#"+returnId).val(result.url);
				alert("上传成功!")
			}
		})
	}

	exports.upLoadImg = function(options){
		init(options,2);
	}
	exports.uploadFile = function(options){
		init(options,1);
	}
})