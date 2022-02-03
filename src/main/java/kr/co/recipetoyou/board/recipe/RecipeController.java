package kr.co.recipetoyou.board.recipe;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

public interface RecipeController {
	
	public ModelAndView communityRecipeMain(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView communityRecipeWrite(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception;

	public String communityRecipeWriteProcess(
			MultipartHttpServletRequest mhsr, HttpServletResponse response) throws Exception;
	
	public ModelAndView communityRecipeDetail(@RequestParam("recipe_idx") int recipe_idx, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView communityRecipeModify(@RequestParam("recipe_idx") int recipe_idx, Model model,
			HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public String communityRecipeModifyProcess(	MultipartHttpServletRequest multipartRequest,
			HttpServletResponse response) throws Exception;
	
	public ModelAndView communityRecipeModifyProcess(@RequestParam("recipe_idx") int recipe_idx, 
			HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public String communityRecipeDelete(@RequestParam("recipe_idx") int recipe_idx, 
			HttpServletRequest request, HttpServletResponse response) throws Exception;

}
