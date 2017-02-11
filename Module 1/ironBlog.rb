class Blog
  def initialize
    @posts = []
  end
  def add_post(post)
    @posts << post
  end
  def print_posts
    order_posts = ordering_posts
    order_posts.each do |post|
      title = post.sponsored ? "******#{post.title}******" : post.title
      puts "#{title}\n**************\n#{post.text}\n----------------"
    end
  end
  def ordering_posts
    @posts.sort_by {|post| post.date}
  end
end
class Post
  attr_reader :title, :date, :text, :sponsored
  def initialize(title,date,text,sponsored = false)
    @title = title
    @date = date
    @text = text
    @sponsored = sponsored
  end
end

blog = Blog.new
blog.add_post Post.new("Post1","20161019","content Post1")
blog.add_post Post.new("Post2","20161015","content Post2")
blog.add_post Post.new("Post3","20161016","content Post3",true)
blog.add_post Post.new("Post4","20161020","content Post4")

blog.print_posts
