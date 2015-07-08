<#import "../layout/testLayout.ftl" as layout>
<@layout.myLayout>
<style>

</style>
<script>

jQuery.fn.cleck_test = function() {
	console.log("duplicate >> 1");
	$(this).attr("disabled", false);	
	return this.each(function() {
		$(this).click(function() {
			console.log("duplicate >> 3");
			$(this).attr("disabled", true);
    	});
	});
};

$(document).ready(function(){
	$('#test').cleck_test();
});

</script>

<button id="test">Click me</button>

</@layout.myLayout>