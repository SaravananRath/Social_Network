class LikesController < ApplicationController
 def create

		@post = Post.find(params[:post_id])
		@like = @post.likes.create(like_params)
		redirect_to  post_path(@post)
	end
	private
		def like_params
			params.require(:like).permit(:user_id)
		end

end
