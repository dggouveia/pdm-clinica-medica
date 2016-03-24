<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Lista médicos</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.5 -->
        <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="/dist/css/AdminLTE.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="/plugins/iCheck/square/blue.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="hold-transition login-page">
        <div class="example-modal">
            <div class="modal" id="medico">
                <div class="modal-body">
                    <div class="modal-content">

                    </div>
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
        </div><!-- /.example-modal -->
        <div class="topbar-wrapper">
            <header>            
                <nav class="navbar navbar-default z-depth-1">
                    <div class="container-fluid">
                        <div class="navbar-header wow pulse" data-wow-delay="4s">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand">Avaliaçõe de Médicos</a>
                            <div class="user dropdown"></div>
                        </div>

                        <div class="collapse navbar-collapse navbar-content" id="menu">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="/clientes/logout">Sair</a></li>                            
                            </ul>
                        </div>                            
                    </div>                           
                </nav>              
            </header>
        </div>
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Médicos</h3>
            </div><!-- /.box-header -->
            <div class="box-body">
                <button data-toggle="modal" data-target="#newMedico" class="btn btn-success" onclick="addMedicoModal()">Cadastrar novo</button>
                <form action="/medicos/buscar">
                    <br />
                    <div class="form-group">
                        <input type="text" class="form-control" id="query" placeholder="Buscar" name="query">
                    </div>
                    <input type="submit" class="btn btn-info" value="buscar">
                </form>
                <table id="example2" class="table table-bordered table-hover">
                    <tr>
                        <th>Nome</th>
                        <th>Clinica</th>
                        <th>Contato</th>
                        <th>Cidade</th>
                        <th>Estado</th>
                        <th>Especialidade</th>
                    </tr>
                    <c:forEach items="${medicos}" var="medico">
                        <tr onclick="medicoModal(${medico.id})">
                            <td>${medico.nome}</td>
                            <td>${medico.nomeClinica}</td>
                            <td>${medico.contato}</td>
                            <td>${medico.cidade}</td>
                            <td>${medico.estado}</td>
                            <td>${medico.especialidade}</td>
                        </tr>                        
                    </c:forEach>
                    <tr>
                        <th>Nome</th>
                        <th>Clinica</th>
                        <th>Contato</th>
                        <th>Cidade</th>
                        <th>Estado</th>
                        <th>Especialidade</th>
                    </tr>
                </table>
            </div><!-- /.box-body -->
        </div><!-- /.box -->
        <!-- jQuery 2.1.4 -->
        <script src="/plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <!-- Bootstrap 3.3.5 -->
        <script src="/bootstrap/js/bootstrap.min.js"></script>
        <!-- iCheck -->
        <script src="/plugins/iCheck/icheck.min.js"></script>
        <script>
                            function addMedicoModal() {
                                $.ajax({
                                    url: "/medicos/addModal",
                                    context: document.body
                                }).done(function (data) {
                                    var wrapper = $('.modal-content');
                                    wrapper.empty();
                                    wrapper.append(data);
                                    $("#medico").modal();
                                });
                            }
                            function medicoModal(id) {
                                $.ajax({
                                    url: "/medicos/viewModal/" + id,
                                    context: document.body
                                }).done(function (data) {
                                    var wrapper = $('.modal-content');
                                    wrapper.empty();
                                    wrapper.append(data);
                                    $("#medico").modal();
                                });
                            }
        </script>
    </body>
</html>