# encoding: UTF-8
class OrdersController < ApplicationController

  respond_to :html, :xml, :js, :json

#	before_filter :find_order, :except => [:index, :new, :create]
  load_and_authorize_resource

  # GET /orders
  # GET /orders.xml
  def index
		@orders = Order.all
    respond_with(@orders)
  end

  # GET /orders/1
  # GET /orders/1.xml
  def show
    respond_with @order
  end

  # GET /orders/new
  # GET /orders/new.xml
  def new
    @order = Order.new
    @order.items << Item.new
    respond_with @order
  end

  # GET /orders/1/edit
  def edit
    respond_with @order
  end

  # POST /orders
  # POST /orders.xml
  def create
    @order = Order.new(params[:order])
    flash[:notice] = 'Se guardó el nuevo Order.' if @order.save
    respond_with(@order)
  end

  # PUT /orders/1
  # PUT /orders/1.xml
  def update
    flash[:notice] = 'Se actualizó el Order.' if @order.update_attributes(params[:order])
    respond_with(@order)
  end

  # DELETE /orders/1.xml
  def destroy
    flash[:notice] = 'Se eliminó el Order.' if @order.destroy
    respond_with(@order)
  end

  protected

  def find_order
    @order = Order.find(params[:id])
  end
end

