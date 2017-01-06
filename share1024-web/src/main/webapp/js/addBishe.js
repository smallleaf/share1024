$.validator.setDefaults({
    submitHandler: function() {
    	
    }
});
$().ready(function() {
    $("#addBisheFrom").validate();
    
});

$(function(){
	$("#saveBtn").click(function(){
		var uuid = $("#contentUuid").val();
		var projectName=$("#projectName").val();
		var projectDesc=$("#projectDesc").val();
		var projectType=$("#projectType").val();
		var projectMoney=$("#projectMoney").val();
		var projectPic=$("#projectPic").val();
		var isRecommend=$("input[name='isRecommend']:checked").val();
		if(uuid==null||uuid==""){
			alert("请上传文件");
		}else{
//			  var graduationProject={
//					  'projectType':projectType,
//					  'projectName':projectName,
//					  'projectDesc':projectDesc,
//					  'money':projectMoney,
//					  'contentUuid':uuid,
//					  'recommendStatus':isRecommend,
//					  'projectPic':projectPic
//			  }
//			  $.ajax({
//				  type:'POST',
//				  url:"${basePath}/project/save.do",
//				  data:graduationProject,
//				  dataType:"json", 
//				  success:function(result){
//					  if(result.code==1){
//						  aleret("提交成功!");
//					  }else{
//						  aleret("提交失败!");
//					  }
//				  }
//			  })
			document.getElementById("addBisheFrom").submit();
		}
	})
})