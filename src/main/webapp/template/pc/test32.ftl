<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<style>
div {
    width: 200px;
    height: 100px;
    border: 1px solid black;
}

#contentContainer {
    width: 300px;
    height: 200px;
    border: 5px black solid;
    overflow: hidden;
    background-color: #F2F2F2;
    cursor: pointer;
}

#imgImg {
    position: relative;
	// -webkit-user-drag: none;
    left: 10px;
    top: 10px;
    // transition: left .5s ease-in, top .5s ease-in;
}
</style>

http://deepliquid.com/content/Jcrop.html

This is only chrom 
	
<div id="contentContainer">
	<img id="imgImg" src="/img/icon.jpg" alt="Smiley face" height="100" width="100"/>
</div>

<script type="text/javascript">

var img01 = document.getElementById('imgImg');
var xMousePoint;
var yMousePoint;
var xImage;
var yImage;

window.onload = function() {
	img01.style.zIndex = 1;

	img01.addEventListener('dragstart', getStartPosition, false);
	img01.addEventListener('drag', drag, false);
	img01.addEventListener('dragend', getEndPosition, false);

	//drag.addEventListener('dragleave', handleDragLeave, false);
	
	console.log("test");
}

function getStartPosition(e) {
	if (!e) { var e= window.event};

	xMousePoint = e.clientX;
	yMousePoint = e.clientY;
	console.log("client: (" + xMousePoint + "," + yMousePoint + ")");

	// Assign default values for top and left properties
    if(!img01.style.left) { img01.style.left='0px'};
    if(!img01.style.top) { img01.style.top='0px'};

    xImage = parseInt(img01.style.left);
    yImage = parseInt(img01.style.top);
    console.log("image : (" + xImage + "," + yImage + ")");
	// img01.setAttribute('draggable', 'false');
}

function drag(e) {
	if (!e) { var e= window.event};

    var xMousePointDrag = e.clientX;
    var yMousePointDrag = e.clientY;

	if(xMousePointDrag == "0" && yMousePointDrag == "0") {
		console.log("drag position : (" + xMousePointDrag + "," + yMousePointDrag + ")");
		return;
	}

    img01.style.left = xImage + xMousePointDrag - xMousePoint + 'px';
    img01.style.top = yImage + yMousePointDrag - yMousePoint + 'px';

    return false;
}

function getEndPosition(e) {
	console.log("dragend: (" + e.x + "," + e.y + ")");
}

</script>

</@layout.myLayout>