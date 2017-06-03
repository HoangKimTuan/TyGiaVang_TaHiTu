/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbeans;

import entitys.WorldGoldPrice;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author HoangKimTuan
 */
@Local
public interface WorldGoldPriceFacadeLocal {

    void create(WorldGoldPrice worldGoldPrice);

    void edit(WorldGoldPrice worldGoldPrice);

    void remove(WorldGoldPrice worldGoldPrice);

    WorldGoldPrice find(Object id);

    List<WorldGoldPrice> findAll();

    List<WorldGoldPrice> findRange(int[] range);

    int count();
    
}
