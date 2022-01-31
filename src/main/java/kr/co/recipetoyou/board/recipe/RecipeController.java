package kr.co.recipetoyou.board.recipe;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface RecipeController {
	
	public ModelAndView communityRecipeMain(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView communityRecipeWrite(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView communityRecipeDetail(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
