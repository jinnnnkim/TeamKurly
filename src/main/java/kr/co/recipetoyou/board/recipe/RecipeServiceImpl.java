package kr.co.recipetoyou.board.recipe;

import java.util.List;
import java.util.Map;

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

	@Override
	public List<RecipeCateVO> recipeCateList() {
		List<RecipeCateVO> recipeCateilList = recipeDAO.selectRecipeCateList();
		return recipeCateilList;
	}

	@Override
	public void addRecipe(Map recipeMap) {
		recipeDAO.insertRecipe(recipeMap);
		
	}

	@Override
	public RecipeVO recipeDetail(int recipe_idx) {
		RecipeVO recipeVO = recipeDAO.selectRecipeDetail(recipe_idx);
		return recipeVO;
	}

	@Override
	public RecipeVO recipeModify(int recipe_idx) {
		return recipeDAO.modifyRecipe(recipe_idx);
	}

	@Override
	public void recipeDelete(int recipe_idx) {
		recipeDAO.deleteRecipe(recipe_idx);
	}

	@Override
	public void updateRecipe(Map recipeMap) {
		recipeDAO.updateRecipe(recipeMap);
		
	}
	

}
