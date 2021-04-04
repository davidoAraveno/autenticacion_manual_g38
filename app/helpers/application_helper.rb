module ApplicationHelper

    def current_user

            User.find(session[:user_id])

    end

    def logged?
        if session[:user_id]
            true
        else
            false
        end
    end
end
