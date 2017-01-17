define('pathConvert',function(require,exports,module){

	module.exports = function(path){
		//获取文件绝对路径
		var pathName = window.document.location.pathname;
		//文件目录
		var folder = pathName.substring(0,pathName.substr(1).indexOf('/')+1);
		
		if(path==null||path.substring(0,1)!='/'){
			path = "/"+path;
		}
		return folder+path;
	}

})