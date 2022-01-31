package kr.co.recipetoyou.board.recipe;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("RecipeDAO")
public class RecipeDAOImpl implements RecipeDAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<RecipeVO> selectRecipeList() {
		List<RecipeVO> recipeList = sqlSession.selectList("mapper.recipe.selectRecipeList");
		return recipeList;
	}

	@Override
	public List<RecipeCateVO> selectRecipeCateTitleList() {
		List<RecipeCateVO> recipeCateTitleList = sqlSession.selectList("mapper.recipe.selectRecipeCateTitleList");
		return recipeCateTitleList;
	}

	@Override
	public List<RecipeCateVO> selectRecipeCateDetailList() {
		List<RecipeCateVO> recipeCateTitleList = sqlSession.selectList("mapper.recipe.selectRecipeCateDetailList");
		return recipeCateTitleList;
	}
	
	

}
