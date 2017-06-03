/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import entitys.User;
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
import sessionbeans.UserFacadeLocal;

/**
 *
 * @author HoangKimTuan
 */
public class EditMemberServlet extends HttpServlet {

    @EJB
    private UserFacadeLocal userFacade;
    private User user;
    
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
        int id = 0;
        String username = "";
        String password = "";
        String job = "";
        String first_name = "";
        String last_name = "";
        String birthday = "";
        String gender = "";
        String address = "";
        String phone_number = "";
        String avatar = "";
        if(ServletFileUpload.isMultipartContent(request)){
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                                         new DiskFileItemFactory()).parseRequest(request);
                id = Integer.parseInt(multiparts.get(0).getString("UTF-8"));
                username = multiparts.get(1).getString("UTF-8");
                password = multiparts.get(2).getString("UTF-8");
                job = multiparts.get(3).getString("UTF-8");
                first_name = multiparts.get(4).getString("UTF-8");
                last_name = multiparts.get(5).getString("UTF-8");
                birthday = multiparts.get(6).getString("UTF-8");
                gender = multiparts.get(7).getString("UTF-8");
                address = multiparts.get(8).getString("UTF-8");
                phone_number = multiparts.get(9).getString("UTF-8");
                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        String name = new File(item.getName()).getName();
                        String path = getServletContext().getRealPath("/") + "public\\dist\\img\\" + name;
                        avatar = LOAD_DIRECTORY + name;
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
                
        user = new User(id, username, password, job, first_name, last_name, birthday, gender, address, phone_number, avatar, "2");
        userFacade.edit(user);
        
        response.sendRedirect("http://"+request.getServerName()+":"+request.getServerPort()+"/TyGiaVang-war/admin_views/admin_member.jsp");
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
