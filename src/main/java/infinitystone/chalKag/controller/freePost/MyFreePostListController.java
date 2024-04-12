package infinitystone.chalKag.controller.freePost;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;

import infinitystone.chalKag.biz.freePost.FreePostDTO;
import infinitystone.chalKag.biz.freePost.FreePostService;
import jakarta.servlet.http.HttpSession;

@Controller
public class MyFreePostListController {
	@Autowired
	private FreePostService freePostService;
	
	@RequestMapping("/myFreePostList")
	public String myFreePostList(HttpSession session, FreePostDTO freePostDTO, Model model, Gson gson) {
		// 현재 세션에 있는 로그인 정보를 가지고 와서 해당 유저가 쓴 글을 전부 출력
		freePostDTO.setMemberId((String)session.getAttribute("member"));
		freePostDTO.setSearchCondition("freePostMemberList");
		String freePostDatas = gson.toJson(freePostService.selectAll(freePostDTO));
		
		model.addAttribute("freePostList", freePostDatas);
		
		
		return "myPost/myFreePostList";
	}
}
