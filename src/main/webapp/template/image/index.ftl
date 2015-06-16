<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<script src="/js/lib/jquery.Jcrop.js"></script>


<link rel="stylesheet" href="/css/demo_files/main.css" type="text/css" />
<link rel="stylesheet" href="/css/demo_files/demos.css" type="text/css" />
<link rel="stylesheet" href="/css/lib/jquery.Jcrop.css" type="text/css" />

<script type="text/javascript">

$(function(){
  $('#cropbox').Jcrop({
    aspectRatio: 1,
    onSelect: updateCoords
  });
});

function updateCoords(c) {
	$('#x').val(c.x);
	$('#y').val(c.y);
	$('#w').val(c.w);
	$('#h').val(c.h);
};

function checkCoords() {
	if (parseInt($('#w').val())) return true;
	alert('Please select a crop region then press submit.');
 	return false;
};

</script>

<style type="text/css">
#target {
  background-color: #ccc;
  width: 500px;
  height: 330px;
  font-size: 24px;
  display: block;
}

</style>

<div class="container">

	<!-- This is the image we're attaching Jcrop to -->
	<img src="/css/demo_files/pool.jpg" id="cropbox" />

	<!-- This is the form that our event handler fills -->
	<form action="crop" method="post" onsubmit="return checkCoords();">
		<input type="hidden" id="x" name="x" />
		<input type="hidden" id="y" name="y" />
		<input type="hidden" id="w" name="w" />
		<input type="hidden" id="h" name="h" />
		<input type="submit" value="Crop Image" class="btn btn-large btn-inverse" />
	</form>

</div>

</@layout.myLayout>