<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>
<style>
.ui-block-a, .ui-block-b, .ui-block-c {
    background-color: lightgray;
    border: 1px solid black;
    height: 100px;
    font-weight: bold;
    text-align: center;
    padding: 30px;
}
</style>
<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="header">
    <h1>Customized Columns</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>Three-column Styled Layout:</p>
    <div class="ui-grid-b">
      <div class="ui-block-a"><span>First Column</span></div>
      <div class="ui-block-b"><span>Second Column</span></div>
      <div class="ui-block-c"><span>Third Column</span></div>
    </div>
  </div>
</div> 

</@layout.myLayout>