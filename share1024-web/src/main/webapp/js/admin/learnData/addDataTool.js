define('addDataTool',function(require,exports){

	var upLoader = require('upLoader');
	require('jquery.validate');

	$.validator.setDefaults({
	    submitHandler: function() {
	    	
	    }
	});
	$().ready(function() {
	    $("#addDataToolFrom").validate();

	    options = {
	    	id:"projectPicLoad",
	    	returnId:"projectPic",
	    	allowedFileExtensions:['png','jpg'],
	    	maxFileCount:1
	    }
	    upLoader.upLoadImg(options);
	});
})