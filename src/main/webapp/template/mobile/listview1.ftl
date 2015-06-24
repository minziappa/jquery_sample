<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<form>
    <input id="filter-for-listview" data-type="search" placeholder="Type to search...">
</form>
<ul data-role="listview" data-inset="true" data-filter="true" data-input="#filter-for-listview">
    <li><a href="#">Acura</a></li>
    <li><a href="#">Audi</a></li>
    <li><a href="#">BMW</a></li>
    <li><a href="#">Cadillac</a></li>
    <li><a href="#">Ferrari</a></li>
</ul>

</@layout.myLayout>