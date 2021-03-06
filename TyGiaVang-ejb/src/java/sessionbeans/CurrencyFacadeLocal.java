/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbeans;

import entitys.Currency;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author HoangKimTuan
 */
@Local
public interface CurrencyFacadeLocal {

    void create(Currency currency);

    void edit(Currency currency);

    void remove(Currency currency);

    Currency find(Object id);

    List<Currency> findAll();

    List<Currency> findRange(int[] range);

    int count();
    
}
