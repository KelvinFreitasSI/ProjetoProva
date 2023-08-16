<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<jsp:include page="/header.jsp"/>
<jsp:include page="/menu.jsp"/>


        <h2>Produto</h2>
      
        <table id="datatable" class="table table-striped table-bordered basic-datatable">
            <thead>
                <tr>
                    <th align="left">ID Produto </th>
                    <th align="left">Nome Produto</th>
                    <th align="left">Ultimo Preço Pago</th>
                    <th align="left">Saldo Atual</th><!-- comment -->
                    <th align="left">Descricao</th><!-- comment -->
                    <th align="left">Sigla</th><!-- comment -->
                     
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach var="produto" items= "${produtos}">
                    <tr>
                    <td align="left">${produto.idProduto}</td><!-- comment -->
                    <td align="left">${produto.nomeProduto}</td>
                    <td align="left">${produto.ultimoPrecoPago}</td>
                    <td align="left">${produto.saldoAtual}</td>
                    <td align="left">${produto.tipoProduto.descricao}</td>
                    <td align="left">${produto.unidadeMedida.sigla}</td>
                     
                    
                    <td align="center">
                        <a href=
                        "${pageContext.request.contextPath}/ProdutoExcluir?idProduto=${produto.idProduto}">
                             Excluir</a></td>
                             
                    <td align="center">
                        <a href=
                        "${pageContext.request.contextPath}/ProdutoCarregar?idProduto=${produto.idProduto}">
                             Alterar </a></td>
                             
                </tr><!-- comment -->
                </c:forEach>
                             
            </tbody>
            
</table><!-- comment -->

<div align="center">
    <a href="${pageContext.request.contextPath}/ProdutoNovo">Novo</a><!-- comment -->
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