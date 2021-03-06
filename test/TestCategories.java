/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import dao.CategoryDAOImpl;
import dao.ProductDAOImpl;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import model.Category;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 *
 * @author VolkanOzkan
 */
public class TestCategories {
    
    public TestCategories() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    @Test
    @SuppressWarnings("CallToThreadDumpStack")
    public void testInsertCategory() throws SQLException 
    {
        
        String name = "TEST" + System.currentTimeMillis();
        double tax = 0;
        int id = 0;
        
        CategoryDAOImpl categoryDAO = new CategoryDAOImpl();
       
        Category category = new Category(id, name, tax);
        category.setId(id);
        category.setName(name);
        category.setTax(tax);
       
        Category catRtr = null; 
         
        try 
        {
            categoryDAO.addCategory(category);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        } 
        finally 
        {
            if (catRtr != null) 
            {
                categoryDAO.deleteCategory(catRtr.getId());
            }
        }
    }
    
    @Test
    @SuppressWarnings("CallToThreadDumpStack")
    public void testGetAllCategories() throws SQLException 
    {
        CategoryDAOImpl categoryDAO = new CategoryDAOImpl();

        List list = new LinkedList();
        
        try
        {
           list = categoryDAO.getAllCategories();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        } 
    }
}
