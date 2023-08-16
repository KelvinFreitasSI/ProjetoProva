<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<jsp:include page="/header.jsp"/>
<jsp:include page="/menu.jsp"/>


        <h2>Tipo de Movimento</h2><!-- comment -->
        <table id="datatable" class="table table-striped table-bordered basic-datatable">
            <thead>
                <tr>
                    <th align="left">ID</th>
                    <th align="left">Descrição</th><!-- comment -->
                    <th align="right"></th><!-- comment -->
                    <th align="right"></th><!-- comment -->
                </tr>
            </thead>
            <tbody>
                <c:forEach var="tipomovimento" items="${tipomovimentos}">
                    <tr>
                    <td align="left">${tipomovimento.idTipoMovimento}</td><!-- comment -->
                    <td align="left">${tipomovimento.descricao}</td>
        
                    
                    
                    <td align="center">
                        <a href=
                        "${pageContext.request.contextPath}/TipoMovimentoExcluir?idTipoMovimento=${tipomovimento.idTipoMovimento}">
                             Excluir</a></td>
                             
                    <td align="center">
                        <a href=
                        "${pageContext.request.contextPath}/TipoMovimentoCarregar?idTipoMovimento=${tipomovimento.idTipoMovimento}">
                             Alterar </a></td>
                             
                </tr><!-- comment -->
                </c:forEach>
                             
            </tbody>
            
</table><!-- comment -->

<div align="center">
    <a href="${pageContext.request.contextPath}/TipoMovimentoNovo">Novo</a><!-- comment -->
    <a href="index.jsp">voltar à Página Inicial</a><!-- comment -->
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
                    "sSearch": "Buscar:",
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

