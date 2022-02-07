package kr.co.recipetoyou.board.recipe;

import java.util.List;
import java.util.Map;

import kr.co.recipetoyou.util.PagingVO;

public interface RecipeDAO {

	public List<RecipeVO> selectRecipeList(PagingVO vo);

	public List<RecipeCateVO> selectRecipeCateTitleList();

	public List<RecipeCateVO> selectRecipeCateDetailList();

	public List<RecipeCateVO> selectRecipeCateList();

	public void insertRecipe(Map recipeMap);

	public RecipeVO selectRecipeDetail(int recipe_idx);

	public RecipeVO modifyRecipe(int recipe_idx);

	public void deleteRecipe(int recipe_idx);

	public void updateRecipe(Map recipeMap);

	public int selectRecipeCount();

}
