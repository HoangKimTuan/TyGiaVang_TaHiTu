/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbeans;

import entitys.WorldGoldPrice;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author HoangKimTuan
 */
@Stateless
public class WorldGoldPriceFacade extends AbstractFacade<WorldGoldPrice> implements WorldGoldPriceFacadeLocal {

    @PersistenceContext(unitName = "TyGiaVang-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public WorldGoldPriceFacade() {
        super(WorldGoldPrice.class);
    }
    
}
