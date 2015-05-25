module ApplicationHelper

  def current_user
    if session[:id]
      @current_user ||= User.where(id: session[:id]).first
    else
      User.new(username: "guest")
    end
  end

  def logged_in?
    current_user.id
  end

  def logout
    session.delete(:id)
  end

  def sanitize(number)
    didgits = number.scan(/\d/)
    "+1" + didgits.join
  end



end
