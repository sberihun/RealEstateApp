package RealEstateSideProject.controller;

import RealEstateSideProject.data.AgentRepository;
import RealEstateSideProject.data.ClientRepository;
import RealEstateSideProject.model.Agent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ManyToManyController {

    @Autowired
    private AgentRepository agentRepo;

    @Autowired
    private ClientRepository clientRepo;

//    @PostMapping("/endpoint1")
//    public void endpoint1(@RequestBody Agent) {
//
//    }
}
