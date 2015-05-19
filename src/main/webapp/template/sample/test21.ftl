<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<script>

function keyDownMenu(e, num) {
    console.log("test1 >> " + e.innerHTML);
    var ui = document.getElementById('myUi');
    var li = ui.getElementsByTagName("li")[num];
    // li.setAttribute("class", "active"));
    console.log("test2 >> " + li.getAttribute("class"));

    if(e.innerHTML == "Admin") {
    	li.setAttribute("class", "active");
    	console.log(" >>>> ");
    } else if(e.innerHTML == "Employee") {
    	console.log("Employee");
    } else {
    	console.log("ELSE");
    }
    return false;
}


</script>

      <ul class="nav navbar-nav" id="myUi">
        <li><a href="javascript:void(0)" onclick="keyDownMenu(this,0)">Admin</a></li>
        <li class="active"><a href="#">Employee</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Help <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="">Admin</a></li>
            <li><a href="#">Employee</a></li>
            <li class="divider"></li>
            <li><a href="#">ETC</a></li>
          </ul>
        </li>
      </ul>

</@layout.myLayout>