require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get project_params, as: :json
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post project_params, params: { project: { client_id: @project.client_id, description: @project.description, name: @project.name, complete: @project.complete } }, as: :json
    end

    assert_response 201
  end

  test "should show project" do
    get project_params(@project), as: :json
    assert_response :success
  end

  test "should update project" do
    patch project_params(@project), params: { project: { client_id: @project.client_id, description: @project.description, name: @project.name, complete: @project.complete  } }, as: :json
    assert_response 200
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_params(@project), as: :json
    end

    assert_response 204
  end
end
