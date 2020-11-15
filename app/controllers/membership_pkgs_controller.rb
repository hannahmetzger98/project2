class MembershipPkgsController < ApplicationController
  before_action :set_membership_pkg, only: [:show, :edit, :update, :destroy]

  # GET /membership_pkgs
  # GET /membership_pkgs.json
  def index
    @membership_pkgs = MembershipPkg.all
  end

  # GET /membership_pkgs/1
  # GET /membership_pkgs/1.json
  def show
  end

  # GET /membership_pkgs/new
  def new
    @membership_pkg = MembershipPkg.new
  end

  # GET /membership_pkgs/1/edit
  def edit
  end

  # POST /membership_pkgs
  # POST /membership_pkgs.json
  def create
    @membership_pkg = MembershipPkg.new(membership_pkg_params)

    respond_to do |format|
      if @membership_pkg.save
        format.html { redirect_to @membership_pkg, notice: 'Membership pkg was successfully created.' }
        format.json { render :show, status: :created, location: @membership_pkg }
      else
        format.html { render :new }
        format.json { render json: @membership_pkg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /membership_pkgs/1
  # PATCH/PUT /membership_pkgs/1.json
  def update
    respond_to do |format|
      if @membership_pkg.update(membership_pkg_params)
        format.html { redirect_to @membership_pkg, notice: 'Membership pkg was successfully updated.' }
        format.json { render :show, status: :ok, location: @membership_pkg }
      else
        format.html { render :edit }
        format.json { render json: @membership_pkg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /membership_pkgs/1
  # DELETE /membership_pkgs/1.json
  def destroy
    @membership_pkg.destroy
    respond_to do |format|
      format.html { redirect_to membership_pkgs_url, notice: 'Membership pkg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_membership_pkg
      @membership_pkg = MembershipPkg.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def membership_pkg_params
      params.require(:membership_pkg).permit(:name, :price, :amenities)
    end
end
