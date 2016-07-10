<#import "../layout/pcLayout.ftl" as layout>
<#import "/spring.ftl" as spring/>
<@layout.myLayout>

<script type="text/javascript">
$(document).ready(function() {
    $('#new-status form').submit(function(e) {
        e.preventDefault();

        $.ajax({
            type: 'POST',
            url: 'http://localhost:9000/ajax/ajaxPost',
            contentType: "application/json",
            dataType: "json",
            data: "{ \"text\" : \"" + $('#new-status').find('textarea').val() + "\"}",
            success: function(data, textStatus, jqXHR) {
            	// {"aaa":"ddd"}, Don't do this like that {'aaa':'ddd'}
            	console.log(">>>" + data.aaa); // >>>ddd
                $('#statuses').append('<li>' + data.aaa + '</li>');
                $('#new-status').find('textarea').val('');
            },
            error: function(xhr, status) {
            	//alert(xhr.responseText);
            }

        });
    });
});
</script>

<div id="new-status">
<h2>Ajax - Post</h2>
<form action="">
  <textarea></textarea><br>
  <input type="submit" value="Post"/>
</form>
</div>

<div id="statuses">
<h2>Responsed Data</h2>
<ul></ul>
</div>
</@layout.myLayout>