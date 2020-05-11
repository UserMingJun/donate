package com.hmj.dao;

import com.hmj.entity.Article;

import java.util.List;

public interface ArticleDao {

    //查找文章
    List<Article> select();

    //添加文章
    int insert(Article article);

    //删除文章
    int delete(int id);



}