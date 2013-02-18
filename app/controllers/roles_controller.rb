class RolesController < ApplicationController
  def index
    @roles = Role.find(:all)
  end

	def show
		@role = Role.find_by_id(params[:id])
	end

	def new
		@role = Role.new
	end

  def create
    @role = Role.new(params[:role])
    if @role.save
      redirect_to(@role, :notice => "Saved")
    else
      flash[:error] = "Sorry! Role couldn't be added."
      render :action => "new"
    end
  end

	def edit
		@role = Role.find_by_id(params[:id])
	end

	def destroy
		Role.find(params[:id]).destroy
		flash[:notice] = "Role has been deleted."
		redirect_to :action => 'index'
	end
end
