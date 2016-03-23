<%-- 
    Document   : layout_home
    Created on : 03/01/2016, 08:32:52
    Author     : Emanuel Batista da Silva Filho - https://github.com/emanuelbatista
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="beforeHead" fragment="true" %>
<%@attribute name="head" fragment="true" %>
<%@attribute name="content" fragment="true" required="true"%>
<%@attribute name="scripts" fragment="true" %>
<%@attribute name="numMenuLeft" required="true" rtexprvalue="true" type="java.lang.Integer" %>
<%@attribute name="title" required="true"%>
<%@attribute name="subTitle" required="false"%>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Cartápio | Painel de Controle</title>
        <jsp:invoke fragment="beforeHead"/>
        <jsp:include page="/WEB-INF/jsp/framents/head.jsp"/>
        <jsp:invoke fragment="head"/>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
    <!--
    BODY TAG OPTIONS:
    =================
    Apply one or more of the following classes to get the
    desired effect
    |---------------------------------------------------------|
    | SKINS         | skin-blue                               |
    |               | skin-black                              |
    |               | skin-purple                             |
    |               | skin-yellow                             |
    |               | skin-red                                |
    |               | skin-green                              |
    |---------------------------------------------------------|
    |LAYOUT OPTIONS | fixed                                   |
    |               | layout-boxed                            |
    |               | layout-top-nav                          |
    |               | sidebar-collapse                        |
    |               | sidebar-mini                            |
    |---------------------------------------------------------|
    -->
    <body class=" hold-transition skin-red-light sidebar-mini">
        <div class="wrapper">

            <jsp:include page="/WEB-INF/jsp/framents/header.jsp"/>
            <jsp:include page="/WEB-INF/jsp/framents/menu-left.jsp">
                <jsp:param name="num" value="${numMenuLeft}"/>
            </jsp:include>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        ${title}
                        <small>${subTitle}</small>
                    </h1>
                    <ol class="breadcrumb">
                        <!--<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>-->
                        <li class="active">${subTitle}</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <jsp:invoke fragment="content"/>
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->



        </div>
        <jsp:include page="/WEB-INF/jsp/framents/scripts.jsp"/>
        <jsp:invoke fragment="scripts"/>
        <!-- Optionally, you can add Slimscroll and FastClick plugins.
             Both of these plugins are recommended to enhance the
             user experience. Slimscroll is required when using the
             fixed layout. -->
    </body>
</html>

