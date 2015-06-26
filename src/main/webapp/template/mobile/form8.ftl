<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="main" class="ui-content">
    <form method="post" action="demoform.asp">
      <label for="fname">First name (with data-role="none"):</label>
      <input type="text" name="fname" id="fname" data-role="none">
      <label for="fname">Last name (without data-role="none"):</label>
      <input type="text" name="fname" id="fname">
      <input type="submit" data-inline="true" value="Submit">
    </form>
  </div>
</div>

</@layout.myLayout>