<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<style type="text/css">
body {
    background-color: #FFF;
    margin: 30px;
    margin-top: 10px;
}
#contentContainer {
    width: 300px;
    height: 100px;
    border: 5px black solid;
    overflow: hidden;
    background-color: #F2F2F2;
    cursor: pointer;
}
#img01 {
    position: relative;
    left: 20px;
    top: 20px;
    transition: left .5s ease-in, top .5s ease-in;
}
</style>

<h2>Javascript Picture</h2>

<div id="contentContainer">
	<img id="img01" src="/img/icon.jpg" alt="Smiley face" height="42" width="42"/>
</div>

<script type="text/javascript">
var container = document.getElementById("contentContainer");
var img = document.getElementById("img01");
img.style.zIndex = 1;

container.addEventListener("click", getClickPosition, false);

function moveImage(img) {

}

function getClickPositionSimple(e) {
    var xPosition = e.clientX;
    var yPosition = e.clientY;
    console.log("x >> "+ xPosition);
    console.log("y >> "+ yPosition);
    img.style.left = (xPosition).toString() + "px";
    img.style.top = (yPosition).toString() + "px";
}

function getClickPosition(e) {
    var parentPosition = getPosition(e.currentTarget);
    console.log("w >> "+ parentPosition.x);
    console.log("h >> "+ parentPosition.y);
    var xPosition = e.clientX - parentPosition.x - (img01.clientWidth / 2);
    var yPosition = e.clientY - parentPosition.y - (img01.clientHeight / 2);

    img01.style.left = (xPosition).toString() + "px";
    img01.style.top = (yPosition).toString() + "px";
}

function getPosition(element) {
    var xPosition = 0;
    var yPosition = 0;

    while (element) {
        xPosition += (element.offsetLeft - element.scrollLeft + element.clientLeft);
        yPosition += (element.offsetTop - element.scrollTop + element.clientTop);
        element = element.offsetParent;
    }
    return { x: xPosition, y: yPosition };
}
</script>

</@layout.myLayout>