package com.hmj.service;

import com.hmj.entity.Article;
import org.springframework.stereotype.Service;

import java.util.List;



public interface ArticleService {

    List<Article> selectNewArticle();

    int addArticle(Article article);

    int deleteArticle(int id);



}