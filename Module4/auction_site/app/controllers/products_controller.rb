class ProductsController < ApplicationController
  def index
    if user.present?
      @products = user.products.all
    else
      flas[:alert] = 'User no exist'
    end
  end

  def new
    @product = user.products.new
  end

  def create
    @product = user.products.new(entry_params)
    if (@product.save)
      flash[:notice] = "The user created success"
      redirect_to "/users/#{user.id}/products"
    else
      flash[:alert] = @product.errors.full_messages
      render 'new'
    end
  end

  def show
    product
  end

  def destroy
    if product.present?
      product.destroy
      flash[:notice] = "Product delected succes"
    else
      flash[:alert] = "Product no exist"
    end
    redirect_to "/users/#{user.id}/products"
  end

  private
    def user
      @user = User.find_by(id: params[:user_id])
    end

    def product
      @product = user.products.find_by(id: params[:id])
    end

    def entry_params
      params.require(:product).permit(:title, :description, :deadline)
    end
end
