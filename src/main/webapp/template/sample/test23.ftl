<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<p>Input some special characters: <input type="text" id="demo" size="20"></p>
<button type="button" id="bTest" onclick="Validation();">Add Some Elements</button>

<script>

function Validation() {
	var txtTitles = document.getElementById('demo');
 	console.log(">>>>> " + txtTitles.value);
	if (isValidCharacter(txtTitles.value) == false) {
		console.log("Please enter valid title. No special character allowed.");
		return false;
	}
}

function isValidCharacter(txtTitle) {
	var regExp = /['"]/

	if (regExp.test(txtTitle)) {
		return false;
	} else {
		return true;
	}

}
</script>

</@layout.myLayout>