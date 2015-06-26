<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>
<style>

</style>
<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="header">
    <h1>Multiple Rows</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>Three-column Layout:</p>
    <div class="ui-grid-b">
      <div class="ui-block-a" style="border:1px solid black;"><span>Some Text</span></div>
      <div class="ui-block-b" style="border:1px solid black;"><span>Some Text</span></div>
      <div class="ui-block-c" style="border:1px solid black;"><span>Some Text</span></div>
    </div>

    <p>Three-column Layout With Multiple Rows:</p>
    <div class="ui-grid-b">
      <div class="ui-block-a" style="border:1px solid black;"><span>Some Text</span></div>
      <div class="ui-block-b" style="border:1px solid black;"><span>Some Text</span></div>
      <div class="ui-block-c" style="border:1px solid black;"><span>Some Text</span></div>
      <div class="ui-block-a" style="border:1px solid black;"><span>Some Text</span></div>
      <div class="ui-block-b" style="border:1px solid black;"><span>Some Text</span></div>
      <div class="ui-block-a" style="border:1px solid black;"><span>Some Text</span></div>
    </div>
  </div>
</div> 

</@layout.myLayout>