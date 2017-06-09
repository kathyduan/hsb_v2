class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all

    render("workouts/index.html.erb")
  end

  def show
    @workout = Workout.find(params[:id])

    render("workouts/show.html.erb")
  end

  def new
    @workout = Workout.new

    render("workouts/new.html.erb")
  end

  def create
    @workout = Workout.new

    @workout.workout_type = params[:workout_type]
    @workout.address = params[:address]
    @workout.neighborhood_id = params[:neighborhood_id]
    @workout.hsb_rating = params[:hsb_rating]
    @workout.notes = params[:notes]
    @workout.studio_name = params[:studio_name]

    save_status = @workout.save

    if save_status == true
      redirect_to("/workouts/#{@workout.id}", :notice => "Workout created successfully.")
    else
      render("workouts/new.html.erb")
    end
  end

  def edit
    @workout = Workout.find(params[:id])

    render("workouts/edit.html.erb")
  end

  def update
    @workout = Workout.find(params[:id])

    @workout.workout_type = params[:workout_type]
    @workout.address = params[:address]
    @workout.neighborhood_id = params[:neighborhood_id]
    @workout.hsb_rating = params[:hsb_rating]
    @workout.notes = params[:notes]
    @workout.studio_name = params[:studio_name]

    save_status = @workout.save

    if save_status == true
      redirect_to("/workouts/#{@workout.id}", :notice => "Workout updated successfully.")
    else
      render("workouts/edit.html.erb")
    end
  end

  def destroy
    @workout = Workout.find(params[:id])

    @workout.destroy

    if URI(request.referer).path == "/workouts/#{@workout.id}"
      redirect_to("/", :notice => "Workout deleted.")
    else
      redirect_to(:back, :notice => "Workout deleted.")
    end
  end
end
