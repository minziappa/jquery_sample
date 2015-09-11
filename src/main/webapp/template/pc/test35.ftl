<#import "../layout/testLayout.ftl" as layout>
<@layout.myLayout>
<style>

</style>

			<form action="/pc/test35" method="post">
				<table class="table table-striped">
					<tr>
						<td style="padding: 3px;">name</td>
						<td style="padding: 3px;">test</td>
					</tr>
					<tr>
						<td style="padding: 3px;">permition</td>
						<td style="padding: 3px;">
							<select class="form-control" name="state" onchange="testPermit(this);">
								<option value="0">Select one</option>
								<option value="1">Super-admin</option>
								<option value="2">Semi-admin</option>
								<option value="3">User</option>
							</select>
						</td>
					</tr>
					<tr id="menu0">
						<td style="padding: 3px;">menu</td>
						<td style="padding: 3px;">
							<select class="form-control" name="state">
								<option value="0">Select one</option>
								<option value="1">Select1</option>
								<option value="2">Select2</option>
								<option value="3">Select3</option>
								<option value="3">Select4</option>
							</select>
						</td>
					</tr>
					<tr id="menu1">
						<td style="padding: 3px;">Row</td>
						<td style="padding: 3px;">
				      <select multiple class="form-control" id="sel2">
				        <option>1</option>
				        <option>2</option>
				        <option>3</option>
				        <option>4</option>
				        <option>5</option>
				      </select>
						</td>
					</tr>
					<tr id="menu2">
						<td style="padding: 3px;">Column</td>
						<td style="padding: 3px;">
							<select multiple class="form-control" name="state">
								<option value="1">Test1</option>
								<option value="2">Test2</option>
							</select>
						</td>
					</tr>
        </table>
				<input class="btn btn-sm btn-primary" type="submit" value="Update"/>
				<input type="button" class="btn btn-sm btn-primary" onClick="history.go(-1);" value="cancel">
			</form>

<script>
var emenu0 = document.getElementById("menu0");
var emenu1 = document.getElementById("menu1");
var emenu2 = document.getElementById("menu2");
function testPermit(e) {
		if (e.value == "2") {
			emenu0.style.display = '';
			emenu1.style.display = '';
			emenu2.style.display = '';
//			emenu0.style.visibility = "visible";
//			emenu1.style.visibility = "visible";
//			emenu2.style.visibility = "visible";
		} else {
			emenu0.style.display = 'none';
			emenu1.style.display = 'none';
			emenu2.style.display = 'none';
//			emenu0.style.visibility = "hidden";
//			emenu1.style.visibility = "hidden";
//			emenu2.style.visibility = "hidden";
		}
}
emenu0.style.display = 'none';
emenu1.style.display = 'none';
emenu2.style.display = 'none';

//emenu0.style.visibility = "hidden";
//emenu1.style.visibility = "hidden";
//emenu2.style.visibility = "hidden";
</script>
</@layout.myLayout>