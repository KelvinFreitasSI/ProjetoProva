/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package br.com.estoque.controller.tipomovimento;

import br.com.estoque.dao.GenericDAO;
import br.com.estoque.dao.TipoMovimentoDAO;
import br.com.estoque.model.TipoMovimento;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kelvi
 */
@WebServlet(name = "TipoMovimentoCadastrar", urlPatterns = {"/TipoMovimentoCadastrar"})
public class TipoMovimentoCadastrar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=iso-8859-1");
        int idTipoMovimento = Integer.parseInt(request.getParameter("idtipomovimento"));
        String descricao = request.getParameter("descricao");
        String mensagem = null;
        
        TipoMovimento oTipoMovimento = new TipoMovimento();
        oTipoMovimento.setIdTipoMovimento(idTipoMovimento);
        oTipoMovimento.setDescricao(descricao);
        
        try{
            GenericDAO dao = new TipoMovimentoDAO();
            if (dao.cadastrar(oTipoMovimento)){
                mensagem = "Tipo Movimento cadastrado com sucesso!";
            }else{
                mensagem = "Problemas ao cadastrar Tipo Movimento.Verifique os dados informados e tente novamente!";
                }
            request.setAttribute("mensagem", mensagem);
            response.sendRedirect("TipoMovimentoListar");
            
        }catch(Exception ex){
            System.out.println("Problemas no Servlet ao cadastrar Tipo Movimento! Erro" + ex.getMessage());
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
