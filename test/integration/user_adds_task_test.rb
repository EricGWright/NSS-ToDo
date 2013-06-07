require 'test_helper'

class UserAddsTaskTest < ActionDispatch::IntegrationTest
  test "add task" do
  	Task.create(description: "first task")
  	Task.create(description: "second task")
    assert_equal 2, Task.count
  	visit '/'
  	assert_include page.body, "first"
    assert_include page.body, "second"
  end
end
