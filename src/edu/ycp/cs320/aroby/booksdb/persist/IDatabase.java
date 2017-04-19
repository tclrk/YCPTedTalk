package edu.ycp.cs320.aroby.booksdb.persist;

import java.net.URL;
import java.sql.Date;
import java.util.List;

import edu.ycp.cs320.aroby.booksdb.model.Author;
import edu.ycp.cs320.aroby.booksdb.model.Book;
import edu.ycp.cs320.aroby.booksdb.model.Pair;
import edu.ycp.cs320.aroby.model.TedTalk;
import edu.ycp.cs320.aroby.controller.TedTalkController;
import edu.ycp.cs320.aroby.model.Topic;
import edu.ycp.cs320.aroby.model.Account;
import edu.ycp.cs320.aroby.model.Review;
import edu.ycp.cs320.aroby.model.Search;
import edu.ycp.cs320.aroby.model.Student;

public interface IDatabase {
	public List<Pair<Author, Book>> findAuthorAndBookByTitle(String title);
	public List<Pair<Author, Book>> findAuthorAndBookByAuthorLastName(String lastName);
	public Integer insertBookIntoBooksTable(String title, String isbn, int published, String lastName, String firstName);
	public List<Pair<Author, Book>> findAllBooksWithAuthors();
	public List<Author> findAllAuthors();
	public List<Author> removeBookByTitle(String title);
	//all above from lab 6
	
	
	//Chihea's 
	public void insertNewTedTalk();
	public void insertNewSpeaker();
	public void insertNewTopic();
	public void insertReview();
	
	// Me
	public Boolean createNewAccount(String email, String password, String firstname, String lastname, boolean admin);
	public Boolean createNewStudent(int ycp_id, String major, String email);
	public Account findAccount(String email);
	public Student findStudent(String email);
	
	// Me
	public List<Review> findReviewsbyAuthor(String firstname, String lastname);
	public List<Review> findReviewbyTopic(String topic);
	public List<Review> findReviewbyTitle(String title);
	public Topic findTopic(String topic);
	
	public List<TedTalk> findTedTalkbyAuthor(String search);
	public List<TedTalk> findTedTalkbyTopic(String search);
	public List<TedTalk> findTedTalkbyTitle(String search);
}
