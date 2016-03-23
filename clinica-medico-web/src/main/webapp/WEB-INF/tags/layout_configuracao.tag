<%-- 
    Document   : layout_configuracao
    Created on : 17/01/2016, 10:37:00
    Author     : emanuel
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib tagdir="/WEB-INF/tags/" prefix="l"%>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="content" required="true" fragment="true"%>
<%@attribute name="numOpcao" required="true" rtexprvalue="true" type="java.lang.Integer"%>
<%@attribute name="head" fragment="true" %>
<%@attribute name="scripts" fragment="true" %>
<l:layout_home title="Configuracao" numMenuLeft="1" subTitle="Editar Dados" >
    <jsp:attribute name="head">
        <jsp:invoke fragment="head"/>
    </jsp:attribute>
    <jsp:attribute name="content">
        <div class="row">
            <div class="col-md-3">
                <div class="box box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Menu</h3>
                        <div class="box-tools">
                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                    </div>
                    <div class="box-body no-padding" style="display: block;">
                        <ul class="nav nav-pills nav-stacked">
                            <li <c:if test="${numOpcao==0}">class="active"</c:if>><a href="/painel/user/configuracao/pessoal"><i class="fa fa-user"></i>Dados Pessoais</a></li>
                            <li <c:if test="${numOpcao==1}">class="active"</c:if>><a href="/painel/user/configuracao/email"><i class="fa fa-envelope-o"></i>E-mail</a></li>
                            <li <c:if test="${numOpcao==2}">class="active"</c:if>><a href="/painel/user/configuracao/endereco"><i class="fa fa-home"></i>Endereços</a></li>
                            <li <c:if test="${numOpcao==3}">class="active"</c:if>><a href="/painel/user/configuracao/senha"><i class="fa fa-unlock-alt"></i>Senha</a></li>
                            </ul>
                        </div><!-- /.box-body -->
                    </div>
                </div>
                <div class="col-md-9">
                <c:if test="${msg!=null}">
                    <div class="alert alert-success alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <h4>	<i class="icon fa fa-check"></i> Sucesso!</h4>
                        ${msg}
                    </div>
                </c:if>
                <c:if test="${erros!=null}">
                    <div class="alert alert-warning alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <h4><i class="icon fa fa-warning"></i> Error!</h4>
                        <c:forEach items="${erros}" var="erro">
                            ${erro.defaultMessage}<br>
                        </c:forEach>
                    </div>
                </c:if>
                <jsp:invoke fragment="content"/>
            </div>
        </div>
    </jsp:attribute>
    <jsp:attribute name="scripts">
        <jsp:invoke fragment="scripts"/>
    </jsp:attribute>

</l:layout_home>
