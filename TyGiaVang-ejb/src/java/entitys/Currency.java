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
@Table(name = "currency")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Currency.findAll", query = "SELECT c FROM Currency c")
    , @NamedQuery(name = "Currency.findById", query = "SELECT c FROM Currency c WHERE c.id = :id")
    , @NamedQuery(name = "Currency.findByCodeNt", query = "SELECT c FROM Currency c WHERE c.codeNt = :codeNt")
    , @NamedQuery(name = "Currency.findByName", query = "SELECT c FROM Currency c WHERE c.name = :name")
    , @NamedQuery(name = "Currency.findByBuy", query = "SELECT c FROM Currency c WHERE c.buy = :buy")
    , @NamedQuery(name = "Currency.findByTransfer", query = "SELECT c FROM Currency c WHERE c.transfer = :transfer")
    , @NamedQuery(name = "Currency.findBySell", query = "SELECT c FROM Currency c WHERE c.sell = :sell")})
public class Currency implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "code_nt")
    private String codeNt;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "name")
    private String name;
    @Basic(optional = false)
    @NotNull
    @Column(name = "buy")
    private double buy;
    @Basic(optional = false)
    @NotNull
    @Column(name = "transfer")
    private double transfer;
    @Basic(optional = false)
    @NotNull
    @Column(name = "sell")
    private double sell;

    public Currency() {
    }

    public Currency(Integer id) {
        this.id = id;
    }
    
    public Currency(String codeNt, String name, double buy, double transfer, double sell) {
        this.codeNt = codeNt;
        this.name = name;
        this.buy = buy;
        this.transfer = transfer;
        this.sell = sell;
    }

    public Currency(Integer id, String codeNt, String name, double buy, double transfer, double sell) {
        this.id = id;
        this.codeNt = codeNt;
        this.name = name;
        this.buy = buy;
        this.transfer = transfer;
        this.sell = sell;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCodeNt() {
        return codeNt;
    }

    public void setCodeNt(String codeNt) {
        this.codeNt = codeNt;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getBuy() {
        return buy;
    }

    public void setBuy(double buy) {
        this.buy = buy;
    }

    public double getTransfer() {
        return transfer;
    }

    public void setTransfer(double transfer) {
        this.transfer = transfer;
    }

    public double getSell() {
        return sell;
    }

    public void setSell(double sell) {
        this.sell = sell;
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
        if (!(object instanceof Currency)) {
            return false;
        }
        Currency other = (Currency) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entitys.Currency[ id=" + id + " ]";
    }
    
}
