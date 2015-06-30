<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<style type="text/css">

</style>

<div class="container">
	<div class="row row-offcanvas row-offcanvas-right">

		<div class="col-xs-12 col-sm-9">
		    <p class="pull-right visible-xs">
		    	<button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
			</p>
			<div class="jumbotron">

				<center>
				<form action="/image/captcha" method="post">
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
					<img src="captcha/CaptchaServlet"> 
			
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