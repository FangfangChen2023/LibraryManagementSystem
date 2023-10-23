package com.chen.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookInLib {
    private int bookID;
    private String bookName;
    private int bookNum;
    private String detail;
}
