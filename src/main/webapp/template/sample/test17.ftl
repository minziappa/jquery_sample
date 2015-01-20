<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
		
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />    	
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Autocomplete Search with Images</title>		

<meta name="description" content="An IMDB and Apple inspired Ajax Search Field with Autocompleted Results with Images."/>
<meta name="keywords" content="autocomplete with images, ajax autocomplete, autocomplete search, imdb like search box script, apple search script"/>

</head>
	
<body>

<div id="content_wrapper">

<form id="autocompleteForm" name="autocompleteForm" action="" method="post">
	<h1>Autocomplete Search with Images</h1>    
	<p>
    <input type="text" name="s" id="s" value="Search" />
    <input type="button" name="submitSearch" id="submitSearch" value="Submit" />
    </p>
    For the basic demo - search for any alphabet e.g. "a"
</form>

</div>
<!-- content wrapper ends -->

<style>
//JavaScript Document
@charset "utf-8";

html{
	margin-top:0;
}

body{
	font: 13px/23px Tahoma, Arial, Helvetica, sans-serif;
	background-color:#e1e1e1;
	color:#2c2c2c;
}

h1{	
	margin-bottom:35px;
}

h1, h2{
	font-weight:normal;
}

#content_wrapper{
	width:980px;
	margin:0 auto;
	text-align:center;
}

/* The Form*/

#autocompleteForm{
	height:500px;
	width:980px;
	text-align:center;
	display:table-cell;
	vertical-align:middle;
	background:transparent url(../../img/glow.png) center center no-repeat;
}

#s{	
	font:17px Tahoma, Arial, Helvetica, sans-serif;
	padding:4px 7px;
	border:1px solid #dcdcdc;
	background-color:#efefef;
	width:350px;
	vertical-align:middle;
	color:#3c3c3c;
}

input:focus {
    outline: none;
}

#submitSearch{
	font:16px Tahoma, Arial, Helvetica, sans-serif;
	padding:4px 10px;
	border:1px solid #dcdcdc;	
	vertical-align:middle;	
	color:#3c3c3c;
	background-color:#efefef;
}

/* Styling for Autocomplete */

/* CSS Document */
.ac_results{overflow:hidden;z-index:99999;margin:0;padding:0;}
.ac_results ul{list-style-position:outside;list-style:none;background:#f5f5f5;margin:0;padding:5px 10px 10px}
.ac_results li{cursor:pointer;display:block;overflow:auto;margin:0;padding:0;border-top:1px solid #e1e1e1;}
.ac_results li:first-child{border:0;}
.ac_loading{background-image:url(../images/loading.gif);background-position:97% center;background-repeat:no-repeat;}
.ac_over{background-color:#FFFFF0;color:#fb0}
.ac_over a:hover{color:#000}
.ac_results li a{display:block; overflow:auto; padding:10px; color:#2c2c2c;}
.ac_results li a img{width:80px; height:auto; max-height:80px;float:left; margin-right:15px;}
</style>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script type='text/javascript' src='/js/lib/jquery.autocomplete.js'></script>

<script type="text/javascript">
var completeResults = [{ "permalink": "index.html", "image": "./images/noimg.png", "title": "This is a demo title" }, { "permalink": "index.html", "image": "./images/noimg.png", "title": "Another example of a title" }, { "permalink": "index.html", "image": "./images/noimg.png", "title": "Yet another random title" }, { "permalink": "index.html", "image": "./images/noimg.png", "title": "The 2nd last title in our array" }, { "permalink": "index.html", "image": "./images/noimg.png", "title": "Last title for the static example" }];

//JavaScript Document
(function($) {
	$(document).ready(function() {

		$( '#s' ).each( function(){
		$(this).attr( 'title', $(this).val() )
		  .focus( function(){
			if ( $(this).val() == $(this).attr('title') ) {
			  $(this).val( '' );
			}
		  } ).blur( function(){
			if ( $(this).val() == '' || $(this).val() == ' ' ) {
			  $(this).val( $(this).attr('title') );
			}
		  } );
		} );

		$('input#s').result(function(event, data, formatted) {
			$('#result').html( !data ? "No match!" : "Selected: " + formatted);
		}).blur(function(){		
		});
		
		$(function() {		
		function format(mail) {
			return "<a href='"+mail.permalink+"'><img src='" + mail.image + "' /><span class='title'>" + mail.title +"</span></a>";			
		}
		
		function link(mail) {
			return mail.permalink
		}

		function title(mail) {
			return mail.title
		}
		
		$("#s").autocomplete(completeResults, {
			width: $("#s").outerWidth()-2,			
			max: 5,			
			scroll: false,
			dataType: "json",
			matchContains: "word",
			parse: function(data) {
				return $.map(data, function(row) {
					return {
						data: row,
						value: row.title,
						result: $("#s").val()
					}
				});
			},
			formatItem: function(item) {				
				return format(item);
			}
			}).result(function(e, item) {
				$("#s").val(title(item));
				//location.href = link(item);
			});						
		});
				
	});
})(jQuery);

</script>

</body>
</html>
