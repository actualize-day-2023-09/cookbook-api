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
    assert_equal ["id", "user_id", "title", "chef", "prep_time", "friendly_prep_time", "image_url", "ingredients", "ingredients_list", "directions", "directions_list", "created_at", "friendly_created_at", "updated_at"], data.keys
  end

  test "create" do
    assert_difference "Recipe.count", 1 do
      # creates test instance of user
      post "/users.json", params: { name: "Test", email: "test@test.com", password: "password", password_confirmation: "password" }
      # logs in test instance of user
      post "/sessions.json", params: { email: "test@test.com", password: "password" }
      # recieve the JWT
      data = JSON.parse(response.body)
      jwt = data["jwt"]

      post "/recipes.json", params: { title: "Cake", chef: "Jay", image_url: "test.jpg", prep_time: 10, ingredients: "Batter", directions: "Bake" },
                            # passing in headers with JWT for current_user
                            headers: { "Authorization" => "Bearer #{jwt}" }

      assert_response 200
    end
  end

  test "update" do
    recipe = Recipe.first
    patch "/recipes/#{recipe.id}.json", params: { title: "Updated title" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated title", data["title"]
  end

  test "destroy" do
    assert_difference "Recipe.count", -1 do
      delete "/recipes/#{Recipe.first.id}.json"
      assert_response 200
    end
  end
end
