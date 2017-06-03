/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbeans;

import entitys.BuyGold;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author HoangKimTuan
 */
@Stateless
public class BuyGoldFacade extends AbstractFacade<BuyGold> implements BuyGoldFacadeLocal {

    @PersistenceContext(unitName = "TyGiaVang-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BuyGoldFacade() {
        super(BuyGold.class);
    }
    
}
