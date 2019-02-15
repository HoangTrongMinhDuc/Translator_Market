package Model.BO;

import Model.DAO.*;
import Model.bean.Post;

public class PostBO {
	PostDAO postDAO = new PostDAO();
	public boolean addPost(Post post) {
		return postDAO.InsertPost(post);
	}
}
