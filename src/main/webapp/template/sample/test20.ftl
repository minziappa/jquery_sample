<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<style>

</style>

<script type="text/javascript">

function getImgSize(imgSrc){
    var newImg = new Image();
    newImg.src = imgSrc;
    var height = newImg.height;
    var width = newImg.width;
    p = $(newImg).ready(function(){
        return {width: newImg.width, height: newImg.height};
    });
    alert (p[0]['width']+" "+p[0]['height']);
}

</script>

<img id="imgId01" src="/img/search.png" onclick="getImgSize('/img/search.png');">
<br><br>

</@layout.myLayout>