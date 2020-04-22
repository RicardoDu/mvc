package com.lagou.edu.service.impl;

import com.lagou.edu.dao.ResumeDao;
import com.lagou.edu.pojo.Resume;
import com.lagou.edu.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class ResumeServiceImpl implements ResumeService {

    @Autowired
    private ResumeDao resumeDao;

    @Override
    public List<Resume> queryAccountList() throws Exception {
        return resumeDao.findAll();
    }

    @Override
    public Resume queryOne(String id) throws Exception {
        Resume resume = new Resume();
        resume.setId(Long.valueOf(id));
        Example<Resume> example = Example.of(resume);
        Optional<Resume> one = resumeDao.findOne(example);
        return one.get();
    }

    @Override
    public void save(Resume resume) throws Exception {
        resumeDao.save(resume);
    }

    @Override
    public void del(String id) throws Exception {
        resumeDao.deleteById(Long.valueOf(id));
    }
}
