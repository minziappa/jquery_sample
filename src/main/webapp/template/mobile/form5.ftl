<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="main" class="ui-content">
    <form method="post" action="demoform.asp">
      <label for="fname">Write your name and click on one of the buttons:</label>
      <input type="text" name="fname" id="fname">
      <input type="button" value="Useless Button">
      <input type="reset" value="Reset Button">
      <input type="submit" value="Submit Button">
    </form>
  </div>
</div>

</@layout.myLayout>