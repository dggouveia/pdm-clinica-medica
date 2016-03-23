<%-- 
    Document   : layout_page_default
    Created on : 07/03/2016, 09:47:28
    Author     : emanuel
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="head" fragment="true" required="false" %>
<%@attribute name="main" fragment="true" required="true" %>
<%@attribute name="script" fragment="true" required="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cartápio</title>

        <!-- Social - begin -->
        <!-- Open Graph - begin -->
        <meta property="og:title" content="Cartápio | A forma mais fácil de pedir comida online" />
        <meta property="og:type" content="website" />
        <meta property="og:url" content="http://www.cartapio.com.br/" />
        <meta property="og:description" content="Peça sua comida favorita de forma fácil e com maior conforto. Podemos anotar o seu pedido?" />
        <meta property="og:image:type" content="image/png">
        <meta property="og:image:width" content="693">
        <meta property="og:image:height" content="436">
        <meta property="og:image" content="/cartapio/img/logo.png" />
        <meta property="og:locale" content="pt_BR" />
        <meta property="og:site_name" content="Cartápio" />
        <!-- Open Graph - end -->

        <!-- Twitter - begin -->
        <meta name="twitter:card" content="summary"/>
        <meta name="twitter:description" content="Peça sua comida favorita de forma fácil e com maior conforto. Podemos anotar o seu pedido?"/>
        <meta name="twitter:title" content="Cartápio | A forma mais fácil de pedir comida online"/>
        <meta name="twitter:image:src" content="/cartapio/img/logo.png"/>
        <!-- Twitter - end -->
        <!-- Social - end -->

        <!-- Info - begin -->
        <meta name="description" content="Peça sua comida favorita de forma fácil e com maior conforto. Podemos anotar o seu pedido?" />
        <meta name="keywords" content="comida, lanche, cadastro, empresa" />
        <link rel="icon" href="/cartapio/img/logo.png">
        <!-- Info - end -->

        <!-- Google Chrome colors -->
        <link rel="icon" href="/cartapio/img/logo.png">
        <meta name="msapplication-TileColor" content="#BA0000">
        <meta name="theme-color" content="#BA0000">
        <!-- Google Chrome colors - End -->

        <script type="text/javascript" src="/admin-lte/plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="/admin-lte/AdminLTE.min.css">
        <link rel="stylesheet" href="/admin-lte/skins/skin-red.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="bower_components/wow/css/libs/animate.css">
        <link rel="stylesheet" href="/cartapio/plugins/toastr/toastr.min.css">
        <link rel="stylesheet" href="/cartapio/css/topbar.css">
        <link rel="stylesheet" href="/cartapio/css/userdropdown.css">
        <link rel="stylesheet" href="/cartapio/css/footer.css">
        <link href="/cartapio/js/snackbarjs/dist/snackbar.min.css" rel="stylesheet" type="text/css"/>
        <link href="/cartapio/js/snackbarjs/themes-css/material.css" rel="stylesheet" type="text/css"/>
        <jsp:invoke fragment="head"></jsp:invoke>
            <link rel="icon" href="cartapio/img/favicon.png">        
        </head>
        <body>
            <div class="modal fade" id="modalPrincipal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="social">
                    </div>
                    <div class="modal-content">                      
                    </div>
                </div>
            </div>
            <div class="topbar-wrapper">
                <header>            
                    <nav class="navbar navbar-default z-depth-1">
                        <div class="social">
                            <div class="wow text-center fadeIn social-ico" data-wow-delay="1s">
                                <i class="fa ion-social-facebook"></i>
                                <i class="fa ion-social-twitter"></i>
                                <i class="fa ion-social-instagram"></i>
                                <i class="fa ion-social-googleplus"></i>
                            </div>
                        </div>                   
                        <div class="container-fluid">
                            <div class="navbar-header wow pulse" data-wow-delay="4s">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="/"><img alt="Brand" src="cartapio/img/logo2-completa.png" height="55"></a>
                                <div class="user dropdown"></div>
                            </div>

                            <div class="collapse navbar-collapse navbar-content" id="menu">
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="#">Quem Somos</a></li>                            
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Empresa<span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">Conheça as vantagens</a></li>
                                            <li role="separator" class="divider"></li>
                                            <li><a href="#" onclick="loadModal('/login/empresa')">Entrar</a></li>
                                            <li><a href="/cadastro/empresa">Cadastrar-se</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Usuário<span class="caret"></span></a>
                                        <ul class="dropdown-menu">                                                                        
                                            <li><a href="#" onclick="loadModal('/login/usuario')">Entrar</a></li>
                                            <li><a href="/cadastro/usuario">Cadastrar-se</a></li>                                                                        
                                        </ul>
                                    </li>
                                </ul>
                            </div>                            
                        </div>                           
                    </nav>              
                </header>
            </div>
            <div class="container-fluid">
            <jsp:invoke fragment="main"></jsp:invoke>
                <div class="bg-red row">
                    <footer class="text-muted text-center wow fadeInUp">
                        <a href="/">
                            <img class="logo" src="/cartapio/img/logo2-completa-branca.png" alt="Cartapio">            
                        </a>
                        <div class="social">
                            <div class="wow text-center fadeIn social-ico" data-wow-delay="1s">
                                <i class="fa ion-social-facebook"></i>
                                <i class="fa ion-social-twitter"></i>
                                <i class="fa ion-social-instagram"></i>
                                <i class="fa ion-social-googleplus"></i>
                            </div>
                        </div>
                        <div class="copyright">&copy; Cartápio - 2016</div>
                    </footer>
                </div>                
            </div>        
            <script type="text/javascript" src="/assets/js/location.js"></script>
            <script type="text/javascript" src="/bower_components/wow/dist/wow.min.js"></script>
            <script type="text/javascript" src="/admin-lte/js/app.min.js"></script>        
            <script type="text/javascript" src="/cartapio/plugins/toastr/toastr.min.js"></script>
            <script src="/cartapio/js/snackbarjs/dist/snackbar.min.js" type="text/javascript"></script>
            <script>
                                                new WOW().init();
            </script>        
            <script type="text/javascript" src="/cartapio/js/cartapio.js"></script>        
        <c:if test="${empresa != null || usuario != null}">            
            <script>
                                                carregarTopbar();
            </script>
        </c:if>
        <c:if test="${empresa != null}">
            <script type="text/javascript" src="/cartapio/js/novosPedidosEmpresa.js"></script>
        </c:if>            
        <jsp:invoke fragment="script"></jsp:invoke>
    </body>
</html>
