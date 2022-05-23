class SessionsController < ApplicationController

def index
    session[:article_views] ||= 0
    cookies[:article_views] ||= cookies[:article_views].to_i + 1
    render json: { session: session, cookies: cookies.to_hash }
end

end