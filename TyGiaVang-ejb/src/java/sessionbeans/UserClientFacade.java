/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbeans;

import entitys.UserClient;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author HoangKimTuan
 */
@Stateless
public class UserClientFacade extends AbstractFacade<UserClient> implements UserClientFacadeLocal {

    @PersistenceContext(unitName = "TyGiaVang-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UserClientFacade() {
        super(UserClient.class);
    }
    
    @Override
    public List<UserClient> authentication(String username, String password) {
        String sql = "SELECT u FROM UserClient u WHERE u.email = ?1 and u.password = ?2";
        Query query = em.createQuery(sql);
        query.setParameter(1, username);
        query.setParameter(2, password);
        return query.getResultList();
    }
}
