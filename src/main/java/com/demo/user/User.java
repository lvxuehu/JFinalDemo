package com.demo.user;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

import javax.jws.soap.SOAPBinding;

/**
 * Created with IntelliJ IDEA.
 * User: liliangyang
 * Date: 2014/5/4
 * Time: 16:36
 */
public class User extends Model<User> {
     public static final User dao=new User();

    public Page<User> pageinate(int pageNumber,int pageSize){
        return paginate(pageNumber,pageSize,"select *","from user order by id desc");
    }

}
