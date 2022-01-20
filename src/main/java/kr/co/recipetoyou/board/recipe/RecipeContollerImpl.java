package kr.co.recipetoyou.board.recipe;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("recipeContoller")
public class RecipeContollerImpl {
	
	@RequestMapping(value="/community/communityRecipeMain.do", method=RequestMethod.GET )
	public ModelAndView communityRecipeMain(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value="/community/communityRecipeWrite.do", method=RequestMethod.GET )
	public ModelAndView communityRecipeWrite(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	

}
