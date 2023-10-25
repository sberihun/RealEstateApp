package RealEstateSideProject.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Property {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long propertyNumber;

    private String propertyType;

    private int numberOfBeds;

    private int numberOfBaths;

    private boolean basement;

    private int totalSqFootage;

    private long salePrice;

    private String propertyAddress;

    private Date closingDate;
}
