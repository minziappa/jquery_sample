<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<script src="/js/lib/jquery.Jcrop.js"></script>
<script type="text/javascript">
  jQuery(function($){

    // How easy is this??
    $('#target').Jcrop();

  });

</script>
<link rel="stylesheet" href="demo_files/main.css" type="text/css" />
<link rel="stylesheet" href="demo_files/demos.css" type="text/css" />
<link rel="stylesheet" href="/css/lib/jquery.Jcrop.css" type="text/css" />

<div class="container">
<div class="row">
<div class="span12">
<div class="jc-demo-box">

<div class="page-header">
<ul class="breadcrumb first">
  <li><a href="../index.html">Jcrop</a> <span class="divider">/</span></li>
  <li><a href="../index.html">Demos</a> <span class="divider">/</span></li>
  <li class="active">Hello World</li>
</ul>
<h1>Hello World</h1>
</div>

  <img src="/css/demo_files/sago.jpg" id="target" alt="[Jcrop Example]" />

  <div class="description">
  <p>
    <b>This example demonstrates the default behavior of Jcrop.</b><br />
    Since no event handlers have been attached it only performs
    the cropping behavior.
  </p>
  </div>

<div class="tapmodo-footer">
  <a href="http://tapmodo.com" class="tapmodo-logo segment">tapmodo.com</a>
  <div class="segment"><b>&copy; 2008-2013 Tapmodo Interactive LLC</b><br />
    Jcrop is free software released under <a href="../MIT-LICENSE.txt">MIT License</a>
  </div>
</div>

<div class="clearfix"></div>

</div>
</div>
</div>
</div>



</@layout.myLayout>