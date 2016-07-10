<#import "../layout/pcLayout.ftl" as layout>
<@layout.myLayout>
<script type="text/javascript">

</script>

<div class="container">
	<div class="row row-offcanvas row-offcanvas-right">

		<div class="col-xs-12 col-sm-9">
		    <p class="pull-right visible-xs">
		    	<button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
			</p>
			<div class="jumbotron">
				<iframe name="iframe1" src="mobile/page3" scrolling=no name=ce width=320 height=568 frameborder=0></iframe>
			</div>
		</div><!--/.col-xs-12.col-sm-9-->

	    <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
		    <div class="list-group">
		      <a href="#" class="list-group-item active">Link</a>
		      <a href="mobile/page1" target="iframe1" class="list-group-item">page1</a>
		      <a href="mobile/page2" target="iframe1" class="list-group-item">page2</a>
		      <a href="mobile/page3" target="iframe1" class="list-group-item">page3</a>
		      <a href="mobile/form1" target="iframe1" class="list-group-item">form1</a>
		      <a href="mobile/form2" target="iframe1" class="list-group-item">form2</a>
		      <a href="mobile/form3" target="iframe1" class="list-group-item">form3</a>
		      <a href="mobile/form4" target="iframe1" class="list-group-item">form4</a>
		      <a href="mobile/form5" target="iframe1" class="list-group-item">form5</a>
		      <a href="mobile/form6" target="iframe1" class="list-group-item">form6</a>
		      <a href="mobile/form7" target="iframe1" class="list-group-item">form7</a>
		    </div>
		</div><!--/.sidebar-offcanvas-->

	</div><!--/row-->
</div><!--/.container-->

</@layout.myLayout>