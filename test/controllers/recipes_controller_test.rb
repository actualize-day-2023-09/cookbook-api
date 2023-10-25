require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/recipes.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Recipe.count, data.length
  end

  test "show" do
    get "/recipes/#{Recipe.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "title", "chef", "prep_time", "image_url", "ingredients", "directions", "created_at", "updated_at"], data.keys
  end

  test "create" do
    assert_difference "Recipe.count", 1 do
      post "/recipes.json", params: { title: "Cake", chef: "Jay", image_url: "test.jpg", prep_time: 10, ingredients: "Batter", directions: "Bake" }
      assert_response 200
    end
  end
end
