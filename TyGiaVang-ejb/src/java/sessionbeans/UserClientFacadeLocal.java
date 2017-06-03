/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbeans;

import entitys.UserClient;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author HoangKimTuan
 */
@Local
public interface UserClientFacadeLocal {

    void create(UserClient userClient);

    void edit(UserClient userClient);

    void remove(UserClient userClient);

    UserClient find(Object id);

    List<UserClient> findAll();

    List<UserClient> findRange(int[] range);

    int count();
    
    List<UserClient> authentication(String username, String password);
}
