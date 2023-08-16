package br.com.estoque.model;


import br.com.estoque.model.Funcionario;
import br.com.estoque.model.Produto;
import br.com.estoque.model.TipoMovimento;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author kelvi
 */
public class MovimentoEstoque {
    
    private int idMovimentoEstoque;
    private String entradaSaida;
    private String documento;
    private String data;
    private double quantidade;
    private double valorMovimento;   
    private Produto produto;
    private TipoMovimento tipoMovimento;   
    private Funcionario funcionario;

    public MovimentoEstoque(int idMovimentoEstoque, String entradaSaida, String documento,String data, double quantidade, double valorMovimento, Produto produto, TipoMovimento tipoMovimento, Funcionario funcionario) {
        this.idMovimentoEstoque = idMovimentoEstoque;
        this.entradaSaida = entradaSaida;
        this.documento = documento;
        this.data = data;
        this.quantidade = quantidade;
        this.valorMovimento = valorMovimento;
        this.produto = produto;
        this.tipoMovimento = tipoMovimento;
        this.funcionario = funcionario;
    }

    public MovimentoEstoque() {
        this.idMovimentoEstoque = 0;
        this.entradaSaida ="";
        this.documento = "";
        this.data = "";
        this.quantidade = 0;
        this.valorMovimento = 0;
        this.produto = new Produto();
        this.tipoMovimento = new TipoMovimento();
        this.funcionario = new Funcionario();
    }

    public int getIdMovimentoEstoque() {
        return idMovimentoEstoque;
    }

    public void setIdMovimentoEstoque(int idMovimento) {
        this.idMovimentoEstoque = idMovimento;
    }

    public String getEntradaSaida() {
        return entradaSaida;
    }

    public void setEntradaSaida(String entradaSaida) {
        this.entradaSaida = entradaSaida;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public double getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(double quantidade) {
        this.quantidade = quantidade;
    }

    public double getValorMovimento() {
        return valorMovimento;
    }

    public void setValorMovimento(double valorMovimento) {
        this.valorMovimento = valorMovimento;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public TipoMovimento getTipoMovimento() {
        return tipoMovimento;
    }

    public void setTipoMovimento(TipoMovimento tipoMovimento) {
        this.tipoMovimento = tipoMovimento;
    }

    public Funcionario getFuncionario() {
        return funcionario;
    }

    public void setFuncionario(Funcionario funcionario) {
        this.funcionario = funcionario;
    }
           
    
}
