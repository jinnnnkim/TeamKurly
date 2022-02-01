package kr.co.recipetoyou.board.recipe;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("recipeService")
public class RecipeServiceImpl implements RecipeService{
	
	@Autowired
	private RecipeDAO recipeDAO;

	@Override
	public List<RecipeVO> recipeList() {
		List<RecipeVO> recipeList = recipeDAO.selectRecipeList();
		return recipeList;
	}

	@Override
	public List<RecipeCateVO> recipeCateTitleList() {
		List<RecipeCateVO> recipeCateTitleList = recipeDAO.selectRecipeCateTitleList();
		return recipeCateTitleList;
	}

	@Override
	public List<RecipeCateVO> recipeCateDetailList() {
		List<RecipeCateVO> recipeCateDetailList = recipeDAO.selectRecipeCateDetailList();
		return recipeCateDetailList;
	}
	
	

}
