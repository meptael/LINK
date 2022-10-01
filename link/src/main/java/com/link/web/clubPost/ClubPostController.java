package com.link.web.clubPost;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.link.service.clubPost.ClubPostService;
import com.link.service.domain.ClubPost;

@Controller
@RequestMapping("/clubPost/*")
public class ClubPostController {

	@Autowired
	@Qualifier("clubPostServiceImpl")
	ClubPostService clubPostServiceImpl;
	
	public ClubPostController() {
		System.out.println(getClass() + " default 생성자 호출");
	}

	@RequestMapping(value = "addClubPostView", method = RequestMethod.GET)
	public String addClubPostView() throws Exception {
		System.out.println("/addClubPostView : GET");
		return "redirect:/clubPost/addClubPostView.jsp";
	}
	
	@RequestMapping(value = "addClubPost", method = RequestMethod.GET)
	public String addClubPost() throws Exception {
		System.out.println("/addClubPost : GET");
		ClubPost clubPost = new ClubPost();
		clubPostServiceImpl.addClubPost(clubPost);
		return "redirect:/clubPost/getClubPost.jsp";
	}

	/*
	@RequestMapping(value = "addClubPost", method = RequestMethod.GET)
	public String addClubPost(@ModelAttribute ClubPost clubPost) throws Exception {
		System.out.println("/addClubPost : POST");
		clubPostServiceImpl.addClubPost(clubPost);
		return "redirect:/clubPost/getClubPost.jsp";
	}
	*/

	@RequestMapping(value = "getClubPostList", method = RequestMethod.GET)
	public String getClubPostList() throws Exception {
		System.out.println("/getClubPostList : GET");
		//clubPostServiceImpl.addClubPost();
		return "redirect:/clubPost/getClubPostList.jsp";
	}

}
