class LeadsController < ApplicationController
  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.create(params[:lead])
    if @lead.save
      redirect_to root_url, notice: "Thank you for your interest in TrendVetter. We will contact you shortly."
    else
      render "new"
    end
  end
end
