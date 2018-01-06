/*
 * Copyright (c) 2017, Xuliang Huang. All rights reserved.
 */

package com.hxl.bean;


import java.util.ArrayList;
import java.util.function.Consumer;

public class WorldImpl implements WorldInter {
    @Override
    public void hello() {
        String a = new String();
        Integer num = 2;
        System.out.println(num + a);
        System.out.println("哈喽！");

        ArrayList<Object> arrayList = new ArrayList<>();
        arrayList.add(a);
        arrayList.add(num);

        for (Object o : arrayList) {
            System.out.println(o);
        }

    }


}
