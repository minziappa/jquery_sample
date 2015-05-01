<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<style type="text/css">
body {
    background-color: #FFF;
    margin: 30px;
    margin-top: 10px;
}
#contentContainer {
    width: 550px;
    height: 350px;
    border: 5px black solid;
    overflow: hidden;
    background-color: #F2F2F2;
    cursor: pointer;
}
#thing {
    position: relative;
    left: 50px;
    top: 50px;
    transition: left .5s ease-in, top .5s ease-in;
}
</style>

<div id="contentContainer">
    <img id="thing" src="http://www.kirupa.com/images/smiley_red.png">
</div>

<script>
var theThing = document.querySelector("#thing");
var container = document.querySelector("#contentContainer");
 
container.addEventListener("click", getClickPosition, false);

function getClickPosition(e) {
    var parentPosition = getPosition(e.currentTarget);
    var xPosition = e.clientX - parentPosition.x - (theThing.clientWidth / 2);
    var yPosition = e.clientY - parentPosition.y - (theThing.clientHeight / 2);
     
    theThing.style.left = xPosition + "px";
    theThing.style.top = yPosition + "px";
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