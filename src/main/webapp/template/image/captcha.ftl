<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<style type="text/css">
* { font-size: 12px; font-family: Verdana }
input, textarea { border: 1px solid #ccc }
tr { margin: 5px; padding:5px;}
.alert { font-size:15px; color:red; font-weight:bolder }
</style>

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
		<img src="captcha/CaptchaServlet"> 

		<br><br>
		<input type="submit" value="submit">
	</form>
	<br><br>
	${resutl}
</center>
</@layout.myLayout>