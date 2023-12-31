<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<jsp:include page="/header.jsp"/>
<jsp:include page="/menu.jsp"/>


        <h2>Funcionario </h2><!-- comment -->
        <table id="datatable" class="table table-striped table-bordered basic-datatable">
            <thead>
                <tr>
                    <th align="left">ID</th>
                    <th align="left">Nome</th><!-- comment -->
                    <th align="right"></th><!-- comment -->
                    <th align="right"></th><!-- comment -->
                </tr>
            </thead>
            <tbody>
                <c:forEach var="funcionario" items="${funcionarios}">
                    <tr>
                    <td align="left">${funcionario.idFuncionario}</td><!-- comment -->
                    <td align="left">${funcionario.nomeFuncionario}</td>
        
                    
                    
                    <td align="center">
                        <a href=
                        "${pageContext.request.contextPath}/FuncionarioExcluir?idFuncionario=${funcionario.idFuncionario}">
                             Excluir</a></td>
                             
                    <td align="center">
                        <a href=
                        "${pageContext.request.contextPath}/FuncionarioCarregar?idFuncionario=${funcionario.idFuncionario}">
                             Alterar </a></td>
                             
                </tr><!-- comment -->
                </c:forEach>
                             
            </tbody>
            
</table><!-- comment -->

<div align="center">
    <a href="${pageContext.request.contextPath}/FuncionarioNovo">Novo</a><!-- comment -->
    <a href="index.jsp">voltar � P�gina Inicial</a><!-- comment -->
</div>
    
    <script>
        $(document).ready(function() {
            console.log('entrei ready');
            
            $('#datatable').DataTable({
                "oLanguage": {
                    "sProcessing":"Processando...",
                    "sLengthMenu": "Mostrar _MENU_ registros",
                    "sZeroRecords":"Nenhum registro encontrado",
                    "sInfo": "Mostrando de _START_ at� _END_ de _TOTAL_ registros",
                    "sInfoEmpty": "Mostrando de 0 at� 0 de 0 registros",
                    "sInfoFiltered": "",
                    "sInfoPostFix": "",
                    "sSearch": "Buscar:",
                    "sUrl": "",
                    "oPaginate": {
                    "sFirst": "Primeiro",
                    "sPrevious": "Anterior",
                    "sNext": "Seguinte",
                    "sLast": "�ltimo"
                }
            }
        });
    });
        
    </script>
    
    <%@ include file="/footer.jsp"%> 