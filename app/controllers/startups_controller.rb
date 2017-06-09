class StartupsController < ApplicationController

  def index
    @startups = Startup.all

    render("startups/index.html.erb")
  end

  def show
    @startup = Startup.find(params[:id])

    render("startups/show.html.erb")
  end

  def new
    @startup = Startup.new

    render("startups/new.html.erb")
  end

  def create
    @startup = Startup.new

    @startup.name = params[:name]
    @startup.image_url = params[:image_url]
    @startup.address = params[:address]
    @startup.funding = params[:funding]
    @startup.industry = params[:industry]
    @startup.intro = params[:intro]
    @startup.founder = params[:founder]
    @startup.description = params[:description]
    @startup.User_id = current_user.id

    save_status = @startup.save

    if save_status == true
      redirect_to("/startups/#{@startup.id}", :notice => "Startup created successfully.")
    else
      render("startups/new.html.erb")
    end
  end

  def edit
    @startup = Startup.find(params[:id])

    render("startups/edit.html.erb")
  end

  def update
    @startup = Startup.find(params[:id])

    @startup.name = params[:name]
    @startup.image_url = params[:image_url]
    @startup.address = params[:address]
    @startup.funding = params[:funding]
    @startup.industry = params[:industry]
    @startup.intro = params[:intro]
    @startup.founder = params[:founder]
    @startup.description = params[:description]

    save_status = @startup.save

    if save_status == true
      redirect_to("/startups/#{@startup.id}", :notice => "Startup updated successfully.")
    else
      render("startups/edit.html.erb")
    end
  end

  def destroy
    @startup = Startup.find(params[:id])

    @startup.destroy

    if URI(request.referer).path == "/startups/#{@startup.id}"
      redirect_to("/", :notice => "Startup deleted.")
    else
      redirect_to(:back, :notice => "Startup deleted.")
    end
  end
end
