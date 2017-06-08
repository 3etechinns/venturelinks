class CofoundingsController < ApplicationController
  def index
    @cofoundings = Cofounding.all

    render("cofoundings/index.html.erb")
  end

  def show
    @cofounding = Cofounding.find(params[:id])

    render("cofoundings/show.html.erb")
  end

  def new
    @cofounding = Cofounding.new

    render("cofoundings/new.html.erb")
  end

  def create
    @cofounding = Cofounding.new

    @cofounding.founder_id = params[:founder_id]
    @cofounding.startup_id = params[:startup_id]

    save_status = @cofounding.save

    if save_status == true
      redirect_to("/cofoundings/#{@cofounding.id}", :notice => "Cofounding created successfully.")
    else
      render("cofoundings/new.html.erb")
    end
  end

  def edit
    @cofounding = Cofounding.find(params[:id])

    render("cofoundings/edit.html.erb")
  end

  def update
    @cofounding = Cofounding.find(params[:id])

    @cofounding.founder_id = params[:founder_id]
    @cofounding.startup_id = params[:startup_id]

    save_status = @cofounding.save

    if save_status == true
      redirect_to("/cofoundings/#{@cofounding.id}", :notice => "Cofounding updated successfully.")
    else
      render("cofoundings/edit.html.erb")
    end
  end

  def destroy
    @cofounding = Cofounding.find(params[:id])

    @cofounding.destroy

    if URI(request.referer).path == "/cofoundings/#{@cofounding.id}"
      redirect_to("/", :notice => "Cofounding deleted.")
    else
      redirect_to(:back, :notice => "Cofounding deleted.")
    end
  end
end
