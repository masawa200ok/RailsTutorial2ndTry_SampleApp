class StaticPagesController < ApplicationController
  def home
    puts "@@@@@@@@@@@1"
    if logged_in?
      puts "@@@@@@@@@@@2"
      @micropost = current_user.microposts.build
      puts "@@@@@@@@@@@3"
      @feed_items = current_user.feed.paginate(page: params[:page])
      puts "@@@@@@@@@@@4"
    end  
    puts "@@@@@@@@@@@5"
  end

  def help
  end

  def about
  end

  def contact
  end
end
