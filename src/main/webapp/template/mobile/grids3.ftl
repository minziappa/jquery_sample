<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>
<style>

</style>
<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="header">
    <h1>Responsive Layout</h1>
  </div>

  <div data-role="main" class="ui-content">
    <h3>Slowly resize the width of your browser window. The layout will adjust itself to fit the "new" width of the browser.</h3>
    <div class="ui-grid-b ui-responsive">
      <div class="ui-block-a">
        <a href="#" class="ui-btn ui-corner-all ui-shadow">First Column Button</a><br>
        <span>First Column: This is some text. This is some text. This is some text. This is some text. This is some text.</span>
      </div>
      <div class="ui-block-b">
        <a href="#" class="ui-btn ui-corner-all ui-shadow">Second Column Button</a><br>
        <span>Second Column: This is some text. This is some text. This is some text. This is some text.</span>
      </div>
      <div class="ui-block-c">
        <a href="#" class="ui-btn ui-corner-all ui-shadow">Third Column Button</a><br>
        <span>Third Column: This is some text. This is some text. This is some text. This is some text.</span>
      </div>
    </div>
  </div>
</div> 

</@layout.myLayout>