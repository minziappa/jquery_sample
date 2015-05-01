<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">
	document.onmousemove = mouseMove;
	document.onmouseup   = mouseUp; 
	var dragObject  = null; 
	var mouseOffset = null; 
	function getMouseOffset(target, ev){ 
		ev = ev || window.event; 
		var docPos    = getPosition(target); 
		var mousePos  = mouseCoords(ev); 
		return {x:mousePos.x - docPos.x, y:mousePos.y - docPos.y}; 
	} 
	function getPosition(e){ 
		var left = 0; 
		var top  = 0; 
		while (e.offsetParent){ 
			left += e.offsetLeft; 
			top  += e.offsetTop; 
			e     = e.offsetParent; 
		} 
		left += e.offsetLeft; 
		top  += e.offsetTop; 
		return {x:left, y:top}; 
	} 
	function mouseMove(ev){ 
		ev           = ev || window.event; 
		var mousePos = mouseCoords(ev); 
		if(dragObject){ 
			dragObject.style.position = 'absolute'; 
			dragObject.style.top      = mousePos.y - mouseOffset.y; 
			dragObject.style.left     = mousePos.x - mouseOffset.x; 
			return false; 
		}
	}
	function mouseUp(){ 
		dragObject = null; 
	}
	function makeDraggable(item){ 
		if(!item) return; 
		item.onmousedown = function(ev){ 
			dragObject  = this; 
			mouseOffset = getMouseOffset(this, ev); 
			return false; 
		}
	}
</script>

<h2>Javascript Picture</h2>
Click the following image.

<img draggable="false" id="img01" src="/img/icon.jpg" alt="Smiley face" height="42" width="42"/>

</@layout.myLayout>