/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbeans;

import entitys.Sitemap;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author HoangKimTuan
 */
@Local
public interface SitemapFacadeLocal {

    void create(Sitemap sitemap);

    void edit(Sitemap sitemap);

    void remove(Sitemap sitemap);

    Sitemap find(Object id);

    List<Sitemap> findAll();

    List<Sitemap> findRange(int[] range);

    int count();
    
}
