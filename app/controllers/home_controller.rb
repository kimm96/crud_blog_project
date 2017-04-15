class HomeController < ApplicationController
  def index
    @posts = Post.all.order("id desc")
  end
  
  def postpage
  end
  
  def write
    one_post = Post.new
    one_post.title =params["title"]
    one_post.contents = params["contents"]
    one_post.save
    redirect_to '/'
  end
  
  def show
    #lion = Post.find(params["id"])
    @lion = Post.where("id" => params["id"]).last #.take, first, second, last... 
  end
  
  def destroy
    lion = Post.find(params["id"])
    lion.destroy
    redirect_to '/'
  end
  
  def edit
    @lion = Post.find(params["id"])
  end
  
  def update
    lion = Post.find(params["id"])
    lion.title = params["title"]
    lion.contents = params["contents"]
    lion.save
    redirect_to "/show/"+lion.id.to_s  #to_s는 형변환! lion.id 숫자를 --> 문자(string)으로
                                          #to_i (string --> int)
  end

  def sul
    
  end
  
end