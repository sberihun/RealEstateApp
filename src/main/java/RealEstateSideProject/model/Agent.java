package RealEstateSideProject.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Agent {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long agentNumber;

    private String lastName;

    private String firstName;

    private String emailAddress;

    private int yrsAsAgent;
    
}
