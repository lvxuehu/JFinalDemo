package com.demo.blog;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;

/**
 * BlogController
 * 所有 sql 写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
@Before(BlogInterceptor.class)
public class BlogController extends Controller {
    public void index() {
        Integer pageNum = getParaToInt("pageNum");
        if (pageNum == null || pageNum == 0) {
            pageNum = 1;
        }
        Page<Blog> page = Blog.dao.paginate(pageNum, 4);
        setAttr("page", page);
        render("blog.jsp");
    }

    public void add() {
    }

    @Before(BlogValidator.class)
    public void save() {
        getModel(Blog.class).save();
        redirect("/blog");
    }

    public void edit() {
        setAttr("blog", Blog.dao.findById(getParaToInt()));
    }

    @Before(BlogValidator.class)
    public void update() {
        getModel(Blog.class).update();
        redirect("/blog");
    }

    public void delete() {
        Blog.dao.deleteById(getParaToInt());
        redirect("/blog");
    }
}


