<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="main" class="ui-content">
    <form method="post" action="demoform.asp">
      <label for="fname">First name:</label>
      <input type="text" name="fname" id="fname">
    </form>
  </div>
</div>

</@layout.myLayout>