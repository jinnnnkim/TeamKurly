package kr.co.recipetoyou.board.recipe;

import java.util.List;

public interface RecipeDAO {

	public List<RecipeVO> selectRecipeList();

	public List<RecipeCateVO> selectRecipeCateTitleList();

	public List<RecipeCateVO> selectRecipeCateDetailList();

}
