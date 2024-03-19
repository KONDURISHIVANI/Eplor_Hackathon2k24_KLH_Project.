/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

/**
 *
 * @author RAJASHRI
 */
@WebServlet(urlPatterns = {"/Blogcontrol"})
public class Blogcontrol extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<BlogPost> posts = getBlogPosts(); // Fetch posts from the database

        request.setAttribute("posts", posts);
        request.getRequestDispatcher("blog.jsp").forward(request, response);
    }

    private ArrayList<BlogPost> getBlogPosts() {
        // Logic to fetch blog posts from the database and return an ArrayList
        ArrayList<BlogPost> posts = new ArrayList<>();

        // Example blog posts
        BlogPost post1 = new BlogPost();
        post1.setTitle("Blog Post 1");
        post1.setDescription("This is the first blog post.");

        BlogPost post2 = new BlogPost();
        post2.setTitle("Blog Post 2");
        post2.setDescription("This is the second blog post.");

        posts.add(post1);
        posts.add(post2);

        return posts;
    }
}
