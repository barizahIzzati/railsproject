class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    if params[:category].blank?
      @products = Product.all.order("created_at DESC")
      @products = Product.search(params[:search])
    else
      @category_id = Category.find_by(name: params[:category]).id
      @products = Product.where(:category_id => @category_id).order("created_at DESC")
    end

  end

  # GET /products/1
  # GET /products/1.json
  def show
    @comments = @product.comments.all
    @comment = @product.comments.build
  end

  # GET /products/new
  def new
    @product = current_user.products.build 
    @categories = Category.all.map{ |c| [c.name, c.id] }
    @statuses = Status.all.map{ |c| [c.name, c.id] }
    @companies = Company.all.map{ |c| [c.company_name, c.id] } 
  end

  # GET /products/1/edit
  def edit
    @categories = Category.all.map{ |c| [c.name, c.id] }
    @statuses = Status.all.map{ |c| [c.name, c.id] }
    @companies = Company.all.map{ |c| [c.company_name, c.id] }
  end

  # POST /products
  # POST /products.json
  def create
    @product = current_user.products.new(product_params)
    # @product.category_id = params[:category_id]
    # @product.status_id = params[:status_id]
    # @product.company_id = params[:company_id]

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        Rails.logger.debug @product.errors.inspect
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    @product.category_id = params[:category_id]
    @product.status_id = params[:status_id]
    respond_to do |format|
      
      if @product.update(product_params)
       
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:product_name, :brand, :picture, :price, :stock, :descrption, :halal_cert, :kkm_cert, :sirim_cert, :category_id, :status_id, :company_id)
    end
end
