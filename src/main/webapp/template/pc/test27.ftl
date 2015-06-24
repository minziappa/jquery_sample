<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

// var img01 = document.getElementById("img01");
var x = 0;

function moveImage(img) {
	img.style.position = 'absolute'; 
	img.style.zIndex = 1;
	var stopInterval = setInterval(function () {
			getPosition(img);
			if(x > 100){
				clearInterval(stopInterval);
			}
		}, 20);
}

function getPosition(img) {
	x += 1;
	console.log("x >> "+ img.x);
	console.log("y >> "+ img.y);
	console.log("xxx >> "+ x);
	img.style.left = (x).toString() + "px";
	img.style.top = (x).toString() + "px";
}

</script>

<h2>Javascript Picture</h2>
Click the following image.
<img id="img01" src="/img/icon.jpg" alt="Smiley face" height="42" width="42" onclick="moveImage(this)"/>

</@layout.myLayout>