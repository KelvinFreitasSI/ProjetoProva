<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<jsp:include page="/header.jsp"/>
<jsp:include page="/menu.jsp"/>


        <h2>Movimento Estoque</h2><!-- comment -->
        <table id="datatable" class="table table-striped table-bordered basic-datatable">
            <thead>
        <tr>
            <th align="left">ID</th>
            <th align="left">Entrada/Saida</th>
            <th align="left">Documento</th>
            <th align="left">Data</th>
            <th align="left">Quantidade</th>
            <th align="left">Valor Movimentado</th>
            <th align="left">Produto</th>
            <th align="left">Tipo Movimento</th>
             <th align="left">Funcionario</th>
           
        </tr>
    </thead>
    <tbody>
        <c:forEach var="movimentoestoque" items="${movimentoestoques}">
            <tr>
                <td align="left">${movimentoestoque.idMovimentoEstoque}</td>
                <td aling="left">${movimentoestoque.entradaSaida}</td>
                <td aling="left">${movimentoestoque.documento}</td>
                <td aling="left">${movimentoestoque.data}</td>
                <td aling="left">${movimentoestoque.quantidade}</td>
                <td aling="left">${movimentoestoque.valorMovimento}</td>
                <td aling="left">${movimentoestoque.produto.nomeProduto}</td>
                <td aling="left">${movimentoestoque.tipoMovimento.descricao}</td>
                <td aling="left">${movimentoestoque.funcionario.nomeFuncionario}</td>
                <td align="center">
        <a href=
           "${pageContext.request.contextPath}/MovimentoEstoqueExcluir?idMovimentoEstoque=${movimentoestoque.idMovimentoEstoque}">
            Excluir</a></td>
            <td align="center">
                <a href=
                   "${pageContext.request.contextPath}/MovimentoEstoqueCarregar?idMovimentoEstoque=${movimentoestoque.idMovimentoEstoque}">
                    Alterar</a></td>
            </tr>
                </c:forEach>
                             
            </tbody>
            
</table><!-- comment -->

<div align="center">
    <a href="${pageContext.request.contextPath}/MovimentoEstoqueNovo">Novo</a><!-- comment -->
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

