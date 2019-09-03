class ApplicationController < ActionController::API

        def current_client
        # mock hard coded version. Fix once there are more users.
            Client.first
        end

        def logged_in?
            !!current_client
        end

end
