class VenturefundsController < ApplicationController

  def index
    @venturefunds = Venturefund.all

    render("venturefunds/index.html.erb")
  end

  def show
    @venturefund = Venturefund.find(params[:id])

    render("venturefunds/show.html.erb")
  end

  def new
    @venturefund = Venturefund.new

    render("venturefunds/new.html.erb")
  end

  def create
    @venturefund = Venturefund.new

    @venturefund.name = params[:name]
    @venturefund.image_url = params[:image_url]
    @venturefund.address = params[:address]
    @venturefund.funding = params[:funding]
    @venturefund.industry = params[:industry]
    @venturefund.intro = params[:intro]
    @venturefund.partner = params[:partner]
    @venturefund.portfolio = params[:portfolio]

    save_status = @venturefund.save

    if save_status == true
      redirect_to("/venturefunds/#{@venturefund.id}", :notice => "Venturefund created successfully.")
    else
      render("venturefunds/new.html.erb")
    end
  end

  def edit
    @venturefund = Venturefund.find(params[:id])

    render("venturefunds/edit.html.erb")
  end

  def update
    @venturefund = Venturefund.find(params[:id])

    @venturefund.name = params[:name]
    @venturefund.image_url = params[:image_url]
    @venturefund.address = params[:address]
    @venturefund.funding = params[:funding]
    @venturefund.industry = params[:industry]
    @venturefund.intro = params[:intro]
    @venturefund.partner = params[:partner]
    @venturefund.portfolio = params[:portfolio]

    save_status = @venturefund.save

    if save_status == true
      redirect_to("/venturefunds/#{@venturefund.id}", :notice => "Venturefund updated successfully.")
    else
      render("venturefunds/edit.html.erb")
    end
  end

  def destroy
    @venturefund = Venturefund.find(params[:id])

    @venturefund.destroy

    if URI(request.referer).path == "/venturefunds/#{@venturefund.id}"
      redirect_to("/", :notice => "Venturefund deleted.")
    else
      redirect_to(:back, :notice => "Venturefund deleted.")
    end
  end
end
