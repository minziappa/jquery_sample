<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="header">
  <h1>Select Menus</h1>
  </div>

  <div data-role="main" class="ui-content">
    <form method="post" action="demoform.asp">
      <fieldset class="ui-field-contain">
        <label for="day">Select Day</label>
        <select name="day" id="day">
          <optgroup label="Weekdays">
            <option value="mon">Monday</option>
            <option value="tue">Tuesday</option>
            <option value="wed">Wednesday</option>
            <option value="thu">Thursday</option>
            <option value="fri">Friday</option>
          </optgroup>
          <optgroup label="Weekends">
            <option value="sat">Saturday</option>
            <option value="sun">Sunday</option>
          </optgroup>
        </select>
      </fieldset>
      <input type="submit" data-inline="true" value="Submit">
    </form>
  </div>
</div>

</@layout.myLayout>