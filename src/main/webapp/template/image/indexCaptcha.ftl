<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<style type="text/css">
input, textarea { border: 1px solid #ccc }

tr { margin: 5px; padding:5px;}

.alert { font-size:15px; color:red; font-weight:bolder }
</style>

<div class="container">
	<div class="row row-offcanvas row-offcanvas-right">

		<div class="col-xs-12 col-sm-9">
		    <p class="pull-right visible-xs">
		    	<button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
			</p>
			<div class="jumbotron">

				<center>
				<form method="post">
					<table cellspacing="15">
						<tr>
						<td>Name</td>
						<td><input type="text" name="name"></td>
						</tr>
						<tr>
						<td>Message</td>
						<td> <textarea type="text" cols="25" rows="8" name="message"></textarea></td>
						</tr>
						<tr>
						<td>Are you human?</td>
						<td><input type="text" name="code"></td>
						</tr>
					</table>
			
					<br>
					<img src="/image/captcha">
					<br><br>
					<input type="submit" value="submit">
				</form>
				<br>
				${alert}
				</center>

			</div>
		</div><!--/.col-xs-12.col-sm-9-->


	</div><!--/row-->
</div><!--/.container-->

</@layout.myLayout>