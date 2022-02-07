package kr.co.recipetoyou.board.recipe;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.recipetoyou.util.PagingVO;

@Repository("RecipeDAO")
public class RecipeDAOImpl implements RecipeDAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<RecipeVO> selectRecipeList(PagingVO vo) {
		List<RecipeVO> recipeList = sqlSession.selectList("mapper.recipe.selectRecipeList",vo);
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

	@Override
	public List<RecipeCateVO> selectRecipeCateList() {
		List<RecipeCateVO> recipeCateList = sqlSession.selectList("mapper.recipe.selectRecipeCateList");
		return recipeCateList;
	}

	@Override
	public void insertRecipe(Map recipeMap) {
		sqlSession.insert("mapper.recipe.insertRecipe",recipeMap);
		
	}

	@Override
	public RecipeVO selectRecipeDetail(int recipe_idx) {
		RecipeVO recipeVO = sqlSession.selectOne("mapper.recipe.selectRecipeDetail",recipe_idx);
		return recipeVO;
	}

	@Override
	public RecipeVO modifyRecipe(int recipe_idx) {
		return sqlSession.selectOne("mapper.recipe.modifyRecipe",recipe_idx);
	}

	@Override
	public void deleteRecipe(int recipe_idx) {
		sqlSession.delete("mapper.recipe.deleteRecipe",recipe_idx);
		
	}

	@Override
	public void updateRecipe(Map recipeMap) {
		sqlSession.update("mapper.recipe.updateRecipe",recipeMap);
		
	}

	@Override
	public int selectRecipeCount() {
		int result = sqlSession.selectOne("mapper.recipe.recipeCount");
		System.out.println("recipe dao:"+result);
		return result;
	}
	
	

}
