/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbeans;

import entitys.BuyGold;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author HoangKimTuan
 */
@Local
public interface BuyGoldFacadeLocal {

    void create(BuyGold buyGold);

    void edit(BuyGold buyGold);

    void remove(BuyGold buyGold);

    BuyGold find(Object id);

    List<BuyGold> findAll();

    List<BuyGold> findRange(int[] range);

    int count();
    
}
