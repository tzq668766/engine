module Locomotive
  module Api
    class ThemeAssetsController < Api::BaseController

      before_filter :load_theme_asset,  only: [:show, :update, :destroy]
      before_filter :load_theme_assets, only: [:index]

      def index
        authorize Locomotive::ThemeAsset
        respond_with @theme_assets.sort_by(&:local_path)
      end

      def show
        authorize @theme_asset
        respond_with @theme_asset
      end

      def create
        authorize Locomotive::ThemeAsset
        @theme_asset = current_site.theme_assets.build
        @theme_asset.from_presenter(params[:theme_asset]).save
        respond_with @theme_asset, location: main_app.locomotive_api_theme_asset_url(@theme_asset._id)
      end

      def update
        authorize @theme_asset
        @theme_asset.from_presenter(params[:theme_asset]).save
        respond_with @theme_asset, location: main_app.locomotive_api_theme_asset_url(@theme_asset._id)
      end

      def destroy
        authorize @theme_asset
        @theme_asset.destroy
        respond_with @theme_asset, location: main_app.locomotive_api_theme_assets_url
      end

      private

      def load_theme_asset
        @theme_asset = current_site.theme_assets.find(params[:id])
      end

      def load_theme_assets
        @theme_assets = current_site.theme_assets
      end

    end
  end
end
