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
@Table(name = "world_gold_price")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "WorldGoldPrice.findAll", query = "SELECT w FROM WorldGoldPrice w")
    , @NamedQuery(name = "WorldGoldPrice.findById", query = "SELECT w FROM WorldGoldPrice w WHERE w.id = :id")
    , @NamedQuery(name = "WorldGoldPrice.findByImage", query = "SELECT w FROM WorldGoldPrice w WHERE w.image = :image")})
public class WorldGoldPrice implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "image")
    private String image;

    public WorldGoldPrice() {
    }

    public WorldGoldPrice(Integer id) {
        this.id = id;
    }

    public WorldGoldPrice(Integer id, String image) {
        this.id = id;
        this.image = image;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof WorldGoldPrice)) {
            return false;
        }
        WorldGoldPrice other = (WorldGoldPrice) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entitys.WorldGoldPrice[ id=" + id + " ]";
    }
    
}
