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
@Table(name = "buy_gold")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "BuyGold.findAll", query = "SELECT b FROM BuyGold b")
    , @NamedQuery(name = "BuyGold.findById", query = "SELECT b FROM BuyGold b WHERE b.id = :id")
    , @NamedQuery(name = "BuyGold.findByFirstName", query = "SELECT b FROM BuyGold b WHERE b.firstName = :firstName")
    , @NamedQuery(name = "BuyGold.findByLastName", query = "SELECT b FROM BuyGold b WHERE b.lastName = :lastName")
    , @NamedQuery(name = "BuyGold.findByEmail", query = "SELECT b FROM BuyGold b WHERE b.email = :email")
    , @NamedQuery(name = "BuyGold.findByPhoneNumber", query = "SELECT b FROM BuyGold b WHERE b.phoneNumber = :phoneNumber")
    , @NamedQuery(name = "BuyGold.findByCode", query = "SELECT b FROM BuyGold b WHERE b.code = :code")
    , @NamedQuery(name = "BuyGold.findByPrice", query = "SELECT b FROM BuyGold b WHERE b.price = :price")})
public class BuyGold implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "first_name")
    private String firstName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "last_name")
    private String lastName;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "phone_number")
    private String phoneNumber;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "code")
    private String code;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "price")
    private String price;

    public BuyGold() {
    }

    public BuyGold(Integer id) {
        this.id = id;
    }
    
    public BuyGold(String firstName, String lastName, String email, String phoneNumber, String code, String price) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.code = code;
        this.price = price;
    }

    public BuyGold(Integer id, String firstName, String lastName, String email, String phoneNumber, String code, String price) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.code = code;
        this.price = price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
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
        if (!(object instanceof BuyGold)) {
            return false;
        }
        BuyGold other = (BuyGold) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entitys.BuyGold[ id=" + id + " ]";
    }
    
}
