package com.miracle.wee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class WmService {
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private GroupRepository groupRepository;
    @Autowired
    private ImgRepository imgRepository;

    @Transactional
    public void addProduct(Product product){productRepository.save(product);}

    @Transactional
    public void addGroup(Group group){groupRepository.save(group);}

    @Transactional
    public  void addImg(Img img){imgRepository.save(img);}

    @Transactional(readOnly = true)
    public List<Group> findGroups(){
        return  groupRepository.findAll();
    }

    @Transactional(readOnly = true)
    public List<Img> findImg(){return imgRepository.findAll();}

    @Transactional
    public void deleteGroup(Group group) {
        groupRepository.delete(group);
    }

    @Transactional(readOnly = true)
    public List<Product> findByGroup(String groupUUID){
       return productRepository.findByGroup(groupUUID);
    }

    @Transactional(readOnly = true)
    public Group findGroup(String uuid){
        return groupRepository.findOne(uuid);
    }
}
