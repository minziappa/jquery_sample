<#macro myLayout title="JavaScript Sample">
<html>
	<#include "header.ftl"/>
	<body>
	<#include "menu.ftl"/>

	<div class="container">
		<div class="row row-offcanvas row-offcanvas-right">
			<div class="col-xs-12 col-sm-9">
			    <p class="pull-right visible-xs">
			    	<button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
				</p>
				<div class="jumbotron">

				<#nested/>

				</div>
			</div><!--/.col-xs-12.col-sm-9-->

			<#include "pcSubMenu.ftl"/>

		</div><!--/row-->
	</div><!--/.container-->
	<#include "pcFooter.ftl"/>
	</body>
</html>
</#macro>