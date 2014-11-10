<script>
   var client = new XMLHttpRequest();

   function upload() 
   {
      var file = document.getElementById("uploadfile");

      /* Create a FormData instance */
      var formData = new FormData();
      
      var file = photo.files[0];

      /* Add the file */ 
      formData.append("upload", file.files[0]);

      client.open("post", "/sample/index/ajaxUploadFile", true);
      client.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
      client.send(formData);  /* Send to server */ 
   }

   /* Check the response status */
   client.onreadystatechange = function() 
   {
      if (client.readyState == 4 && client.status == 200) 
      {
         alert(client.statusText);
      }
   }
</script>
<input type="file" id="uploadfile" name="upload" />
<input type="button" value="upload" onclick="upload()" />
