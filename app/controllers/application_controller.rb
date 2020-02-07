class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
        home_show_path # ログアウト後に遷移するpathを設定
    end

    def after_sign_out_path_for(resource)
        new_user_session_path # ログアウト後に遷移するpathを設定
    end

    def authenticate_user
        if current_user==nil
            redirect_to("/")
        end
    end

    def user
        return User.find_by(id: self.user_id)
    end 

    protected
    def configure_permitted_parameters
        added_attrs = [ :name, :email, :password, :password_confirmation　]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
        devise_parameter_sanitizer.permit :account_update, keys: added_attrs
        devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    end
end
