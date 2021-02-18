class TimelinesController < ApplicationController
    before_action :authenticate_user!

    def show
        @posts = Post.where(user_id: user_ids)
    end
end