package com.demo.user;

import com.demo.blog.Blog;
import com.demo.blog.BlogValidator;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;

/**
 * Created with IntelliJ IDEA.
 * User: liliangyang
 * Date: 2014/5/4
 * Time: 16:44
 */
public class UserController extends Controller {
   public void index(){
       Integer pageNum=getParaToInt("pageNum");
       if (pageNum==null||pageNum==0){
           pageNum=1;
       }
       Page<User> page=User.dao.pageinate(pageNum,4);
       setAttr("page",page);
       render("user.jsp");
   }

    public void add(){

    }

    @Before(UserValidator.class)
    public void save() {
        getModel(User.class).save();
        redirect("/user");
    }


    public void edit(){
        setAttr("user",User.dao.findById(getParaToInt()));
    }

    public  void update(){
        getModel(User.class).update();
        redirect("/user");
    }

    public void delete(){
        User.dao.deleteById(getParaToInt());
        redirect("/user");
    }
}
