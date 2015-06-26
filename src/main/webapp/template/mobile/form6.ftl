<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="main" class="ui-content">
    <form method="post" action="demoform.asp">
      <label for="fname">First name:</label>
      <input type="text" name="fname" id="fname">
      <input type="submit" value="Submit" data-icon="check" data-iconpos="right" data-inline="true">
    </form>
  </div>
</div>

</@layout.myLayout>