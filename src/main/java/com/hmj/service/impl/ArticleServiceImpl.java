package com.hmj.service.impl;

import com.hmj.dao.ArticleDao;
import com.hmj.entity.Article;
import com.hmj.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleDao articleDao;

    @Override
    public List<Article> selectNewArticle() {
        return articleDao.select();
    }

    @Override
    public int addArticle(Article article) {
        return articleDao.insert(article);
    }

    @Override
    public int deleteArticle(int id) {
        return articleDao.delete(id);
    }


}