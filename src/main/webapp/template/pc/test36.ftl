<#import "../layout/testLayout.ftl" as layout>
<@layout.myLayout>
<style>
.navbar .nav li.dropdown.open>.dropdown-toggle .caret {
    border-top-color: transparent;
    border-bottom: 4px solid #000000;
    position: relative;
    top: -3px;
}
</style>

<script>

</script>


<div id="navi">
<div class="container">
  <nav>
    <div class="navbar">
      <div class="navbar-inner">
        <div class="row">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          
          <div class="span2">
            <a class="brand" href="#"></a>
          </div>
            
          <div class="span10">
            <div class="nav-collapse collapse">
              <div class="row">
                <div class="span8">
                  <ul class="nav">
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Lorem 3 opes<b class="caret"></b></i></a>
                      <ul class="dropdown-menu">
                        <li><a href="#">Lorem</a></li>
                        <li><a href="institucional.html">Olosmpa</a></li>
                        <li><a href="#">Lorem 2 isum</a></li>
                        
                      </ul>
                    </li>
                  
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Lorem mas<b class="caret"></b></a>
                      <ul class="dropdown-menu">
                        <li><a href="#">Lorem</a></li>
                        <li><a href="institucional.html">Olosmpa</a></li>
                        <li><a href="#">Lorem 2 isum</a></li>
                        
                      </ul>
                    </li>
                    
                   
                    
                  </ul> 
                </div><!-- /span8 -->
                  
                <div class="span2">
                  <div>
                    <form id="buscar-fixed" class="navbar-form form-search">
                      <div class="input-append">
                        <input class="inputBusqueda span2" type="text" placeholder="Buscar..." />
                        <button class="btn" type="button"><i class="icon-search icon-white"></i></button>
                        
                        
                      </div>
                    </form>
                    
                  </div>
                </div><!-- /span2 -->
              </div><!-- /row -->
            </div><!--/.nav-collapse -->
          </div><!-- /span10 -->
        </div><!-- /row -->
      </div><!-- /nav-inner -->
    </div><!-- /navbar -->
  </nav>
</div><!-- /container -->
</div><!-- fin #nav-sup -->

</@layout.myLayout>