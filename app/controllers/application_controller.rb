class ApplicationController < ActionController::Base
    #login後メインページに飛ぶ
    def after_sign_in_path_for(resource)
        home_show_path
    end

    def after_sign_out_path_for(resource)
        new_user_session_path # ログアウト後に遷移するpathを設定
    end
end
