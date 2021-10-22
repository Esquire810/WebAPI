package com.web.gradebook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class GBService {
    @Autowired
    private StudentRepository studentRepository;
    @Autowired
    private GroupRepository groupRepository;
    @Autowired
    private SubjRepository subjRepository;
    @Autowired
    private MarkRepository markRepository;

    //Student
    @Transactional
    public void addStudent(Student student){studentRepository.save(student);}
    @Transactional
    public void deleteStudent (long[] idList){
        for(long id: idList)
            studentRepository.deleteById(id);
    }
    @Transactional(readOnly = true)
    public List<Student> findByGroup(Group group){return studentRepository.findByGroup(group);}
    @Transactional(readOnly = true)
    public List<Student> findByPattern (String pattern){return studentRepository.findByPattern(pattern);}

    //Group
    @Transactional
    public void addGroup(Group group){groupRepository.save(group);}
    @Transactional
    public void deleteGroup(Group group){groupRepository.delete(group);}
    @Transactional(readOnly=true)
    public Group findGroup(long id) {return groupRepository.findOne(id);}
    @Transactional(readOnly = true)
    public List<Group> findGroups(){return  groupRepository.findAll();}

    //Subject
    @Transactional
    public void addSubj(Subject subject){subjRepository.save(subject);}
    @Transactional
    public void deleteSubj(Subject subject){subjRepository.delete(subject);}
    @Transactional(readOnly = true)
    public List<Subject> findSubjects(){return  subjRepository.findAll();}

    //Mark
    @Transactional
    public void addMark (Mark mark){ markRepository.save(mark);}
    @Transactional(readOnly = true)
    public List<Mark> selectMark(Subject subject){return markRepository.selectMark(subject);}
    @Transactional(readOnly=true)
    public Subject findSubj(long id) {return subjRepository.findOne(id);}
}
