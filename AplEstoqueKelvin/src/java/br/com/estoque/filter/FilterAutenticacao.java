/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.estoque.filter;

import br.com.estoque.utils.SingleConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

;

/**
 *
 * @author kelvi
 */
@WebFilter(urlPatterns={"/*"})
public class FilterAutenticacao implements Filter {
    
    private static Connection conexao;

    @Override
      public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
        conexao = SingleConnection.getConnection();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
            throws IOException, ServletException {
       try{
           chain.doFilter(request,response);
       } catch (Exception e){
           System.out.println("Erro"+e.getMessage());
           e.printStackTrace();
       }
    }  

    @Override
    public void destroy() {
       try{
           conexao.close();
       } catch (SQLException ex){
           System.out.println("Erro: "+ex.getMessage());
           ex.printStackTrace();
       }
        
    }
}
