require 'test_helper'

class UserViewsTasksTest < ActionDispatch::IntegrationTest
  test "viewing tasks" do
    Task.create(description: "Test 1")
    Task.create(description: "Test 2")
    visit '/'
    assert_include page.body, "Test 1"
    assert_include page.body, "Test 2"
  end
end
