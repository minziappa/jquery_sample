<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="header">
    <h1>Icons</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>A "search" icon with a gray circle around it (default):</p>
    <a href="#anylink" class="ui-btn ui-btn-inline ui-icon-search ui-btn-icon-left ui-corner-all ui-shadow">With circle (default)</a>  
    <a href="#anylink" class="ui-btn ui-btn-inline ui-icon-search ui-btn-icon-notext ui-corner-all ui-shadow">With circle (default)</a>

    <p>A "search" icon without the grey circle (class="ui-nodisc-icon"):</p>
    <a href="#anylink" class="ui-btn ui-btn-inline ui-icon-search ui-btn-icon-left ui-corner-all ui-shadow ui-nodisc-icon">Without circle</a>   
    <a href="#anylink" class="ui-btn ui-btn-inline ui-icon-search ui-btn-icon-notext ui-corner-all ui-shadow ui-nodisc-icon">Without circle</a>
    <p>Notice that when you specify the ui-nodisc-icon class while only displaying the icon, the gray background is removed, but the circle is not.
  </div>
  
  <div data-role="footer">
    <h1>Footer Text</h1>
  </div>
</div> 

</@layout.myLayout>