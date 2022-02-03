package kr.co.recipetoyou.board.recipe;

import java.util.List;
import java.util.Map;

public interface RecipeService {

	public List<RecipeVO> recipeList();

	public List<RecipeCateVO> recipeCateTitleList();

	public List<RecipeCateVO> recipeCateDetailList();

	public List<RecipeCateVO> recipeCateList();

	public void addRecipe(Map recipeMap);

	public RecipeVO recipeDetail(int recipe_idx);

	public RecipeVO recipeModify(int recipe_idx);

	public void recipeDelete(int recipe_idx);

	public void updateRecipe(Map recipeMap);

}
