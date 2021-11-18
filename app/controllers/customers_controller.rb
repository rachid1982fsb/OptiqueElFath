class CustomersController < ApplicationController
  before_action :set_customer, only: %i[ show edit update destroy ]

  # GET /customers or /customers.json
  def index
    @customers = Customer.order(params[:sort])
    if params[:search]
      search_customers()
    end
  end

 
  def search_customers
    if @customer = Customer.all.find{|customer| customer.phone1.include?(params[:search])}
      redirect_to customer_path(@customer)
    end
  end


  # GET /customers/1 or /customers/1.json
  def show
    @customer = Customer.find(params[:id])
  end

  

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers or /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: "Customer was successfully created." }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1 or /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: "Customer was successfully updated." }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1 or /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: "Customer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :phone1, :phone2, :email, :l_r_measurement, :l_l_measurement, :l_add_measurement, :adress, :last_d_v_date, :doctor_name)
    end

    def order_params
      params.require(:order).permit(:frame_name, :r_measurement, :l_measurement, :add_measurement, :Kind_of_glasses, :glasses_type, :indice, :last_d_v_date, :image_doctor_visit, :glass_Cost_in, :glass_price_out, :total_price, :comment, :customer_id)
    end
end
