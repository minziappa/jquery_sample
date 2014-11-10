		<form id="file-form" action="/sample/index/ajaxUploadFile" method="POST">
			<input type="file" id="file-select" name="photos[]" multiple/>
		  <button type="submit" id="upload-button">Upload</button>
		</form>

		<script type="text/javascript">

		// Set up the request.
		var xhr = new XMLHttpRequest();
		
		var form = document.getElementById('file-form');
		var fileSelect = document.getElementById('file-select');
		var uploadButton = document.getElementById('upload-button');

		form.onsubmit = function(event) {
		  event.preventDefault();

		  // Update button text.
		  uploadButton.innerHTML = 'Uploading...';
		// Get the selected files from the input.
		  var files = fileSelect.files;
			// Loop through each of the selected files.
			for (var i = 0; i < files.length; i++) {
			  var file = files[i];

			  // Check the file type.
			  if (!file.type.match('image.*')) {
			    continue;
			  }

			  // Add the file to the request.
			  formData.append('photos[]', file, file.name);
			}
			// Create a new FormData object.
			var formData = new FormData();
			xhr.open('POST', '/sample/index/ajaxUploadFile', true);

			// Set up a handler for when the request finishes.
			xhr.onload = function () {
			  if (xhr.status === 200) {
			    // File(s) uploaded.
			    uploadButton.innerHTML = 'Upload';
			  } else {
			    alert('An error occurred!');
			  }
			};
			xhr.send(formData);
		}

		console.log("test");
		</script>
