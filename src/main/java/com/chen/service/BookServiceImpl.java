package com.chen.service;

import com.chen.dao.BookMapper;
import com.chen.pojo.BookInLib;
import org.mybatis.spring.SqlSessionTemplate;

import java.util.List;

public class BookServiceImpl implements BookService{
    private SqlSessionTemplate sqlSession;

    public void setSqlSession(SqlSessionTemplate sqlSession){
        this.sqlSession = sqlSession;
    }

    @Override
    public List<BookInLib> queryAllBooks() {
        return sqlSession.getMapper(BookMapper.class).queryAllBooks();
    }

    @Override
    public int addBook(BookInLib book) {

        return sqlSession.getMapper(BookMapper.class).addBook(book);
    }

    @Override
    public int updateBook(BookInLib book) {
        return sqlSession.getMapper(BookMapper.class).updateBook(book);
    }

    @Override
    public int deleteBookById(int id) {
        return sqlSession.getMapper(BookMapper.class).deleteBookById(id);
    }

    @Override
    public BookInLib queryBookById(int id) {
        return sqlSession.getMapper(BookMapper.class).queryBookById(id);
    }
}
