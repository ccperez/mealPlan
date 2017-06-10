require "test_helper"

describe RecipesController do
  it "should get index" do
    get recipes_index_url
    value(response).must_be :success?
  end

  it "should get show" do
    get recipes_show_url
    value(response).must_be :success?
  end

  it "should get new" do
    get recipes_new_url
    value(response).must_be :success?
  end

  it "should get edit" do
    get recipes_edit_url
    value(response).must_be :success?
  end

end
