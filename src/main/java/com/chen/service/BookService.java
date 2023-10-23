package com.chen.service;

import com.chen.pojo.BookInLib;

import java.util.List;

public interface BookService {
    //    select all
    List<BookInLib> queryAllBooks();
    //    insert
    int addBook(BookInLib book);
    //    update
    int updateBook(BookInLib book);
    //    delete
    int deleteBookById(int id);
    //    select
    BookInLib queryBookById(int id);
}
