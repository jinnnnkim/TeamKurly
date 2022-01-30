package kr.co.recipetoyou.board.recipe;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller("recipeContoller")
public class RecipeContollerImpl {
	
	private static String ARTICLE_IMAGE_REPO ="C:/work-spring-datapop/";
	
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
	
	@RequestMapping(value="/community/communityRecipeDetail.do", method=RequestMethod.GET )
	public ModelAndView communityRecipeDetail(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	
	

}
