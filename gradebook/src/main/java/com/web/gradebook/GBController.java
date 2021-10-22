package com.web.gradebook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class GBController {
    @Autowired
    private GBService gbService;

    @RequestMapping("/")
    public String getIndex(Model model){
        model.addAttribute("groups", gbService.findGroups());
        model.addAttribute("subjects", gbService.findSubjects());
        return "index";
    }

    //Find student by group
    @RequestMapping("/group/{id}")
    public String listGroup(
            @PathVariable(value = "id") long groupId,
            Model model)
    {
        Group group = gbService.findGroup(groupId);
        model.addAttribute("groups", gbService.findGroups());
        model.addAttribute("students", gbService.findByGroup(group));
        model.addAttribute("subjects", gbService.findSubjects());
        return "index";
    }
    @RequestMapping("/subj/{id}")
    public String listSubj(
            @PathVariable(value = "id") long subjId,
            Model model)
    {
        Subject subject = gbService.findSubj(subjId);
        model.addAttribute("groups", gbService.findGroups());
        model.addAttribute("marks", gbService.selectMark(subject));
        model.addAttribute("subjects", gbService.findSubjects());
        return "index";
    }
    @RequestMapping("/mark_group/{id}")
    public String markListGroup(
            @PathVariable(value = "id") long groupId,
            Model model)
    {
        Group group = gbService.findGroup(groupId);
        model.addAttribute("groups", gbService.findGroups());
        model.addAttribute("students", gbService.findByGroup(group));
        model.addAttribute("subjects", gbService.findSubjects());
        return "mark_add_page";
    }

    //Create group
    @RequestMapping("/group_add_page")
    public String groupAddPage(Model model){
        model.addAttribute("groups", gbService.findGroups());
        return "/group_add_page";
    }

    @RequestMapping(value = "/group/add", method = RequestMethod.POST)
    public String groupAdd(@RequestParam String name){
        gbService.addGroup(new Group(name));
        return "redirect:/";
    }
    //Delete group
    @RequestMapping(value = "/group/delete", method = RequestMethod.POST)
    public String groupDelete(@RequestParam(value = "deleteGroup")Group group){
        gbService.deleteGroup(group);
        return "redirect:/";
    }

    //Create student
    @RequestMapping("/student_add_page")
    public String studentAddPage(Model model){
        model.addAttribute("groups", gbService.findGroups());
        return "/student_add_page";
    }

    @RequestMapping(value = "/student/add", method = RequestMethod.POST)
    public String studentAdd(@RequestParam String firstName,
                             @RequestParam String lastName,
                             Group group
                             )
    {
        gbService.addStudent(new Student(firstName, lastName, group));
        return "redirect:/";
    }
    //Delete students
    @RequestMapping(value = "/student/delete", method = RequestMethod.POST)
    public ResponseEntity<Void> delete(@RequestParam(value = "toDelete[]", required = false) long[] toDelete) {
        if (toDelete != null && toDelete.length > 0)
            gbService.deleteStudent(toDelete);

        return new ResponseEntity<>(HttpStatus.OK);
    }

    //Find student by pattern
    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public String search(@RequestParam String pattern, Model model){
        model.addAttribute("groups", gbService.findGroups());
        model.addAttribute("students", gbService.findByPattern(pattern));
        return "index";
    }

    //Create subj
    @RequestMapping("/subj_add_page")
    public String subjAddPage(Model model){
        model.addAttribute("subjects", gbService.findSubjects());
        return "/subj_add_page";
    }
    @RequestMapping(value = "/subj/add", method = RequestMethod.POST)
    public String subjAdd(@RequestParam String subjName){
        gbService.addSubj(new Subject(subjName));
        return "redirect:/";
    }
    //Delete subj
    @RequestMapping(value = "/subj/delete", method = RequestMethod.POST)
    public String subjDelete(@RequestParam(value = "deleteSubj")Subject subject){
        gbService.deleteSubj(subject);
        return "redirect:/";
    }

    //Add mark
    @RequestMapping("/mark_add_page")
    public String markAddPage(Model model){
        model.addAttribute("groups", gbService.findGroups());
        model.addAttribute("subjects", gbService.findSubjects());
        return "/mark_add_page";
    }
    @RequestMapping(value = "/mark/add", method = RequestMethod.POST)
    public String markAdd(
            Subject subject,
            @RequestParam String date,
            Student student,
            @RequestParam int mark)
    {
        gbService.addMark(new Mark(date,mark, subject, student));
        return "redirect:/";
    }

}
