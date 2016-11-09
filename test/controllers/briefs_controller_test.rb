require 'test_helper'

class BriefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brief = briefs(:one)
  end

  test "should get index" do
    get briefs_url, as: :json
    assert_response :success
  end

  test "should create brief" do
    assert_difference('Brief.count') do
      post briefs_url, params: { brief: { jira_epic: @brief.jira_epic, objective: @brief.objective, overview: @brief.overview, references: @brief.references, status: @brief.status, status_value: @brief.status_value, ticket: @brief.ticket } }, as: :json
    end

    assert_response 201
  end

  test "should show brief" do
    get brief_url(@brief), as: :json
    assert_response :success
  end

  test "should update brief" do
    patch brief_url(@brief), params: { brief: { jira_epic: @brief.jira_epic, objective: @brief.objective, overview: @brief.overview, references: @brief.references, status: @brief.status, status_value: @brief.status_value, ticket: @brief.ticket } }, as: :json
    assert_response 200
  end

  test "should destroy brief" do
    assert_difference('Brief.count', -1) do
      delete brief_url(@brief), as: :json
    end

    assert_response 204
  end
end
