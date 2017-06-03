/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitys;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author HoangKimTuan
 */
@Entity
@Table(name = "buy_gold_online")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "BuyGoldOnline.findAll", query = "SELECT b FROM BuyGoldOnline b")
    , @NamedQuery(name = "BuyGoldOnline.findById", query = "SELECT b FROM BuyGoldOnline b WHERE b.id = :id")
    , @NamedQuery(name = "BuyGoldOnline.findByImage", query = "SELECT b FROM BuyGoldOnline b WHERE b.image = :image")
    , @NamedQuery(name = "BuyGoldOnline.findByCode", query = "SELECT b FROM BuyGoldOnline b WHERE b.code = :code")
    , @NamedQuery(name = "BuyGoldOnline.findByPrice", query = "SELECT b FROM BuyGoldOnline b WHERE b.price = :price")})
public class BuyGoldOnline implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "image")
    private String image;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "code")
    private String code;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "price")
    private String price;

    public BuyGoldOnline() {
    }

    public BuyGoldOnline(Integer id) {
        this.id = id;
    }
    
    public BuyGoldOnline(String image, String code, String price) {
        this.image = image;
        this.code = code;
        this.price = price;
    }

    public BuyGoldOnline(Integer id, String image, String code, String price) {
        this.id = id;
        this.image = image;
        this.code = code;
        this.price = price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof BuyGoldOnline)) {
            return false;
        }
        BuyGoldOnline other = (BuyGoldOnline) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entitys.BuyGoldOnline[ id=" + id + " ]";
    }
    
}
