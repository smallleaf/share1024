//获取文件绝对路径
var pathName = window.document.location.pathname;
//文件目录
var folder = pathName.substring(0,pathName.substr(1).indexOf('/')+1);

(function(){
	var alias = {
		'jquery':'jquery/jquery.js',
		'bootstrap':'bootstrap/js/bootstrap.min.js',
		'jquery.flipster':'jquery/jquery.flipster.js',
		'jquery.validate':'jquery/jquery.validate.min',
		'fileinput':'fileinput/js/fileinput.js',
		'fileinput_new':'fileinput/js/fileinput_new.js',
		'messages_zh':'fileinput/js/messages_zh.js',
		'pathConvert':'common/pathConvert.js',
		'upLoader':'common/upLoader.js'
	};
	seajs.config({
		alias:alias,
		base:folder+"/js/libs"
	});
})();

define("app",function(require,exports){
	
	var pathConvert = require('pathConvert');

	exports.load = function(fileName){
		if(typeof(fileName) == 'undefined' || fileName == "") return;
		fileName.split(',').forEach(function(name){
			if(name){
				require.async(pathConvert('js/'+name) + ".js",function(mod){
					if(mod && mod.init){
						mod.init();
					}
				})
			}
		});
	}
});