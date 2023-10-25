package RealEstateSideProject.controller;

import RealEstateSideProject.data.AgentRepository;
import RealEstateSideProject.data.ClientRepository;
import RealEstateSideProject.data.PropertyRepository;
import RealEstateSideProject.model.Agent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class SingleTableController {

    @Autowired
    private AgentRepository agentRepo;

    @Autowired
    private ClientRepository clientRepo;

    @Autowired
    private PropertyRepository propertyRepo;

    @GetMapping("/agents")
    public List<Agent> findAll(){

        //the findAll method can be used out of the box
        //note it is not defined in the AgentRepository interface

        return agentRepo.findAll();

    }

    //HOW DO I KNOW WHICH METHODS ARE CUSTOM VS OUT OF THE BOX??
}
