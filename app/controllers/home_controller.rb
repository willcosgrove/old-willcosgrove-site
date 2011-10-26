class HomeController < ApplicationController
  def index
    if is_listening_to_something?
      @current_song = current_song
    end
  end
  
  def listening_to
    if is_listening_to_something?
      render :json => current_song
    else
      render :nothing => true, :status => 403
    end
  end

end
