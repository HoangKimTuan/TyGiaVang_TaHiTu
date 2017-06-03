/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import entitys.BuyGold;
import entitys.News;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import sessionbeans.BuyGoldFacadeLocal;

/**
 *
 * @author NguyenMinhHieu
 */
public class EditBuyGoldOnlineServlet extends HttpServlet {

    @EJB
    private BuyGoldFacadeLocal buyGoldFacade;
    private BuyGold buyGold;

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
        response.setContentType("text/html;charset=UTF-8");
        final String LOAD_DIRECTORY = "http://"+request.getServerName()+":"+request.getServerPort()+"/TyGiaVang-war/public/dist/img/";
        String image = "";
        String first_name = "";
        String last_name = "";
        String email = "";
        String phone_number = "";
        String code = "";
        String price = "";
        int id = 0;
        if(ServletFileUpload.isMultipartContent(request)){
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                                         new DiskFileItemFactory()).parseRequest(request);
                
                first_name = multiparts.get(2).getString("UTF-8");
                last_name = multiparts.get(3).getString("UTF-8");
                email = multiparts.get(4).getString("UTF-8");
                phone_number = multiparts.get(5).getString("UTF-8");
                code = multiparts.get(6).getString("UTF-8");
                price = multiparts.get(7).getString("UTF-8");
                id = Integer.parseInt(multiparts.get(0).getString("UTF-8"));
                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        String name = new File(item.getName()).getName();
                        String path = getServletContext().getRealPath("/") + "public\\dist\\img\\" + name;
                        image = LOAD_DIRECTORY + name;
                        item.write(new File(path));
                    }
                }
               //File uploaded successfully
               request.setAttribute("message", "File Uploaded Successfully");
            } catch (Exception ex) {
               request.setAttribute("message", "File Upload Failed due to " + ex);
            }         
        }else{
            request.setAttribute("message", "Sorry this Servlet only handles file upload request");
        }
        
        buyGold = new BuyGold(id, first_name, last_name, email, phone_number, code, price);
        buyGoldFacade.edit(buyGold);
        
        response.sendRedirect("admin_buy_gold.jsp");
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
