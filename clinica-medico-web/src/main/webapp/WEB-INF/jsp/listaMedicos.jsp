<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Lista m�dicos</title>
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

        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Hover Data Table</h3>
            </div><!-- /.box-header -->
            <div class="box-body">
                <table id="example2" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Clinica</th>
                            <th>E-mail</th>
                            <th>Telefone</th>
                            <th>Cidade</th>
                            <th>Especialidade</th>
                        </tr>
                    </thead>
                    <tbody>
                            <tr>
                                <td>${medico.nome}</td>
                                <td>${medico.nomeClinica}</td>
                                <td>${medico.email}</td>
                                <td>${medico.telefone}</td>
                                <td>${medico.cidade}</td>
                                <td>${medico.especialidade}</td>
                            </tr>                        
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Rendering engine</th>
                            <th>Browser</th>
                            <th>Platform(s)</th>
                            <th>Engine version</th>
                            <th>CSS grade</th>
                        </tr>
                    </tfoot>
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

        </script>
    </body>
</html>2