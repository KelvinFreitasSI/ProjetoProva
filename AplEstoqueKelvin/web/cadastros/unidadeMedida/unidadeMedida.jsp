<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<jsp:include page="/header.jsp"/>
<jsp:include page="/menu.jsp"/>


        <h2>Unidade Medida</h2>
      
        <table id="datatable" class="table table-striped table-bordered basic-datatable">
            <thead>
                <tr>
                    <th align="left">ID</th>
                    <th align="left">Descrição</th>
                    <th align="left">Sigla</th><!-- comment -->
                    <th align="right"></th><!-- comment -->
                    
                     
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach var="unidademedida" items="${unidademedidas}">
                    <tr>
                    <td align="left">${unidademedida.idUnidadeMedida}</td><!-- comment -->
                    <td align="left">${unidademedida.descricao}</td>
                    <td align="left">${unidademedida.sigla}</td>
                    <td align="right"></td>
                     
                    
                    <td align="center">
                        <a href=
                        "${pageContext.request.contextPath}/UnidadeMedidaExcluir?idUnidadeMedida=${unidademedida.idUnidadeMedida}">
                             Excluir</a></td>
                             
                    <td align="center">
                        <a href=
                        "${pageContext.request.contextPath}/UnidadeMedidaCarregar?idUnidadeMedida=${unidademedida.idUnidadeMedida}">
                             Alterar </a></td>
                             
                </tr><!-- comment -->
                </c:forEach>
                             
            </tbody>
            
</table><!-- comment -->

<div align="center">
    <a href="${pageContext.request.contextPath}/UnidadeMedidaNovo">Novo</a><!-- comment -->
    <a href="index.jsp">voltar para Pagina Inicial</a><!-- comment -->
</div>
    
    <script>
        $(document).ready(function() {
            console.log('entrei ready');
            
            $('#datatable').DataTable({
                "oLanguage": {
                    "sProcessing":"Processando...",
                    "sLengthMenu": "Mostrar _MENU_ registros",
                    "sZeroRecords":"Nenhum registro encontrado",
                    "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",
                    "sInfoEmpty": "Mostrando de 0 até 0 de 0 registros",
                    "sInfoFiltered": "", 
                    "sInfoPostFix": "",
                    "sSearch":"Buscar:",
                    "sUrl": "",
                    "oPaginate": {
                    "sFirst": "Primeiro",
                    "sPrevious": "Anterior",
                    "sNext": "Seguinte",
                    "sLast": "último"
                }
            }
        });
    });
        
    </script>
    
    <%@ include file="/footer.jsp"%>

