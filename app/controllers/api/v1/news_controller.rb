module Api
  module V1
    class NewsController < ::ApiController
      # GET /news
      def index
        if current_user
          news = News.filter(current_user).page(params[:page]).per(params[:per])
        else
          news = News.page(params[:page]).per(params[:per])
        end
        json_data(news: news)
      end
    end
  end
end
