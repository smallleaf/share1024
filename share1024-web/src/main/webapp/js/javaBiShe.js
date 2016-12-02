$(function(){
	//初始化毕设类型
	var type=$("#type").val();
	if(type==''){
		type=0;
	}
	$("#project"+type).addClass("active");
})