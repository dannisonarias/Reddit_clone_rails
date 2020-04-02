require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: 'Welcome to my post', body: 'Create your Post model by referencing your data plan')
  end

  test 'post title presence' do
    @post.title = '  '
    assert_not @post.valid?, "title can't be blank"
  end

  test 'post body presence' do
    @post.body = '  '
    assert_not @post.valid?, "body can't be blank"
  end
end
