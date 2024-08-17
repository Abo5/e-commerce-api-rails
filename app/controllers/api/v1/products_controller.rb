module Api
  module V1
    class ProductsController < ApplicationController
      # before_action :authenticate_user!, except: [:index, :show]
      before_action :set_product, only: [:show, :edit, :update, :delete, :destroy]

      # GET /api/v1/products
      def index
        @products = Product.all
        render json: @products
      end

      # GET /api/v1/products/:id
      def show
        render json: @product
      end

      # GET /api/v1/products/:id/edit
      def edit
        render json: @product
      end

      # POST /api/v1/products
      def create
        @product = Product.new(product_params)
        if @product.save
          render json: @product, status: :created
        else
          render json: @product.errors, status: :unprocessable_entity
        end
      end

      # POST /api/v1/products/:id
      def update
        @product = Product.find(params[:id])
        if @product.update(product_params)
          render json: @product
        else
          render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
        end
      rescue ActiveRecord::RecordNotFound
        render json: { error: "Product not found" }, status: :not_found
      end

      # GET /api/v1/products/:id/delete
      def delete
        if @product.destroy
          render json: { message: "Product successfully deleted" }, status: :ok
        else
          render json: { error: "Failed to delete product" }, status: :unprocessable_entity
        end
      end

      # POST /api/v1/products/:id
      def destroy
        @product.destroy
        head :no_content
      end

      private

      def set_product
        @product = Product.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { error: "Product not found" }, status: :not_found
      end

      def product_params
        params.require(:product).permit(:name, :price, :description, :stock_quantity, :brand, :category_id, :is_available)
      end
    end
  end
end