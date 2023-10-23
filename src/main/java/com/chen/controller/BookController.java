package com.chen.controller;

import com.chen.pojo.BookInLib;
import com.chen.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/books")
public class BookController {

    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    @RequestMapping("/allbooks")
    public String allBooks(Model model){
        List<BookInLib> bookList = bookService.queryAllBooks();
        model.addAttribute("bookList", bookList);

        return "allbooks";
    }

    @RequestMapping("/addbook")
    public String addBook(BookInLib book, Model model){
        int res = bookService.addBook(book);
        String msg = "";
        if(res == 1) {
            msg = "successed!";
        } else msg = "something wrong happened";

        model.addAttribute("msg", msg);

        return "redirect:/books/allbooks";
    }
    @RequestMapping("/updatebook")
    public String updateBook(BookInLib book, Model model){
        int res = bookService.updateBook(book);
        String msg = "";
        if(res == 1) {
            msg = "successed!";
        } else msg = "something wrong happened";

        model.addAttribute("msg", msg);

        return "redirect:/books/allbooks";
    }
    @RequestMapping("/toAddbook")
    public String toAddBook(){
        return "addbook";
    }

    @RequestMapping("/toUpdate")
    public String toUpdatebook(int id, Model model){
        BookInLib book = bookService.queryBookById(id);
        model.addAttribute("book", book);
        return "updatebook";
    }

    @RequestMapping("/deletebook")
    public String deleteBook(int id, Model model){
        int res = bookService.deleteBookById(id);
        String msg = "";
        if(res == 1) {
            msg = "successed!";
        } else msg = "something wrong happened";

        model.addAttribute("msg", msg);

        return "redirect:/books/allbooks";
    }

}
