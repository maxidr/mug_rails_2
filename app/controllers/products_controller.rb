# coding: utf-8
class ProductsController < ApplicationController

  respond_to :html, :xml, :js, :json

	before_filter :find_product, :except => [:index, :new, :create]

  # GET /products
  # GET /products.xml
  def index
		@search = Product.search(params[:search])
		@products = @search.paginate(:page => params[:page], :per_page => 15)
    respond_with(@products)
  end

  # GET /products/1
  # GET /products/1.xml
  def show
    respond_with @product
  end

  # GET /products/new
  # GET /products/new.xml
  def new
    @product = Product.new
    respond_with @product
  end

  # GET /products/1/edit
  def edit
    respond_with @product
  end

  # POST /products
  # POST /products.xml
  def create
    @product = Product.new(params[:product])
    flash[:notice] = 'Se guardó el nuevo Product.' if @product.save
    respond_with(@product)
  end

  # PUT /products/1
  # PUT /products/1.xml
  def update
    flash[:notice] = 'Se actualizó el Product.' if @product.update_attributes(params[:product])
    respond_with(@product)
  end

  # DELETE /products/1.xml
  def destroy
    flash[:notice] = 'Se eliminó el Product.' if @product.destroy
    respond_with(@product)
  end

  protected

  def find_product
    @product = Product.find(params[:id])
  end
end

