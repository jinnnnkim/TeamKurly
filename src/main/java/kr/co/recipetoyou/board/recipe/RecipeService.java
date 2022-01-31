package kr.co.recipetoyou.board.recipe;

import java.util.List;

public interface RecipeService {

	public List<RecipeVO> recipeList();

	public List<RecipeCateVO> recipeCateTitleList();

	public List<RecipeCateVO> recipeCateDetailList();

}
