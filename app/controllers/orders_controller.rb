class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy ]

  # GET /orders or /orders.json
  def index
    @orders = Order.order(params[:sort])
  end
 

  # GET /orders/1 or /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders or /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: "Order was successfully created." }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
    @order.customer.doctor_name=@order.image_doctor_visit
    @order.customer.l_r_measurement=@order.r_measurement
    @order.customer.l_l_measurement=@order.l_measurement
    @order.customer.l_add_measurement=@order.add_measurement
    @order.customer.last_d_v_date=@order.last_d_v_date
    @order.item.quantity= @order.item.quantity-1
    @order.customer.save
    @order.item.save


  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: "Order was successfully updated." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1 or /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:frame_name, :r_measurement, :l_measurement, :add_measurement, :Kind_of_glasses, :glasses_type, :indice, :last_d_v_date, :image_doctor_visit, :glass_Cost_in, :glass_price_out, :total_price, :amount_paid, :return_date, :comment, :completed, :item_id, :image, :customer_id)
    end
end
