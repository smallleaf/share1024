define('index',function(require,exports){
	require('jquery.flipster');

	$(function(){
		 $(".flipster").flipster({ style: 'carousel', start: 0 }); 
	});
})