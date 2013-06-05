require 'test_helper'

class UserAddsTaskTest < ActionDispatch::IntegrationTest
  test "add task" do
  	Task.create!(title: "Task 1", body: "This is the first task")
  	Task.create!(title: "Task 2", body: "This is the second task")
    assert_equal 2, Task.count
  	visit '/tasks'
    assert_include page.body, "All Tasks"
  	assert_include page.body, "Task 1"
    assert_include page.body, "Task 2"
  end
end
