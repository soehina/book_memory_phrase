class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    # ログアウト後に遷移するpathを設定
    def after_sign_in_path_for(resource)
        home_show_path
    end

    #アカウント編集後のリダイレクト先
    def after_update_path_for(resource)
        home_show_path
    end

    #ログアウト後に遷移するpathを設定
    def after_sign_out_path_for(resource)
        new_user_session_path
    end

    def authenticate_user
        if current_user == nil
            home_top_path
        end
    end

    protected
    def configure_permitted_parameters
        added_attrs = [ :name, :email, :password, :password_confirmation, :image]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
        devise_parameter_sanitizer.permit :account_update, keys: added_attrs
        devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    end
end
