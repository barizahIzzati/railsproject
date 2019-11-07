class ApplicationController < ActionController::Base
    before_action :authenticate_user! 
    #skip_before_action :authenticate_user!, if: :admin_user_signed_in?
end
