package infinitystone.chalKag.controller.jobHuntPost;

import com.google.gson.Gson;
import infinitystone.chalKag.biz.jobHuntPost.JobHuntPostDTO;
import infinitystone.chalKag.biz.jobHuntPost.JobHuntPostService;
import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JobHuntPostListController {

	@Autowired
	private JobHuntPostService jobHuntPostService;

	@RequestMapping("/jobHuntPostList")
	public String jobHuntPostList(HttpSession session, Model model, JobHuntPostDTO jobHuntPostDTO, Gson gson) {

		System.out.println("JobHuntPostListController In로그");

		 String memberId = (String)session.getAttribute("member");
		    if (memberId == null) {
		    	memberId = null;
			}
		    jobHuntPostDTO.setMemberId(memberId);
		
		    jobHuntPostDTO.setSearchCondition("jobHuntPostList");
		
		String jobHuntPostListResult = gson.toJson(jobHuntPostService.selectAll(jobHuntPostDTO));

		model.addAttribute("jobHuntPostList", jobHuntPostListResult);

		System.out.println("JobHuntPostListController Out로그");

		return "jobHuntPost/jobHuntPostList";
	}

}
