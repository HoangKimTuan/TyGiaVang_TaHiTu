/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbeans;

import entitys.BuyGoldOnline;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author HoangKimTuan
 */
@Local
public interface BuyGoldOnlineFacadeLocal {

    void create(BuyGoldOnline buyGoldOnline);

    void edit(BuyGoldOnline buyGoldOnline);

    void remove(BuyGoldOnline buyGoldOnline);

    BuyGoldOnline find(Object id);

    List<BuyGoldOnline> findAll();

    List<BuyGoldOnline> findRange(int[] range);

    int count();
    
}
