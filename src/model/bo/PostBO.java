package model.bo;

import model.dao.PostDAO;
import model.bean.Post;

public class PostBO {
	PostDAO postDAO = new PostDAO();
	public boolean addPost(Post post) {
		return postDAO.InsertPost(post);
	}
}
