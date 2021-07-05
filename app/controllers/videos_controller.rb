class VideosController < ApplicationController
    before_action :authenticate_user, only: [:create]

    def index
        render json: {videos: Video.all}
    end

    def create
        @video = current_user.videos.create(url: params[:url])
        if @video.save
            render json: {video: @video}, status: 200
        else
            render json: {errors: @video.errors}, status: :unprocessable_entity
        end
    end
end
