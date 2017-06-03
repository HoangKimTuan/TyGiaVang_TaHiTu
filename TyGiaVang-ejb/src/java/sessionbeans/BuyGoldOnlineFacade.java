/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbeans;

import entitys.BuyGoldOnline;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author HoangKimTuan
 */
@Stateless
public class BuyGoldOnlineFacade extends AbstractFacade<BuyGoldOnline> implements BuyGoldOnlineFacadeLocal {

    @PersistenceContext(unitName = "TyGiaVang-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BuyGoldOnlineFacade() {
        super(BuyGoldOnline.class);
    }
    
}
