class RegistrationsController < ApplicationController
  def new
    user = User.new
    user.build_dog
    user.dog.toys.build

    @form = NewRegistrationForm.new(user)
  end

  def create
    user = User.new
    user.build_dog
    user.dog.toys.build
    @form = NewRegistrationForm.new(user)
    if @form.validate(params[:user])
      @form.save
      redirect_to users_path
    else
      render :new, alert: 'Errors Found'
    end
  end

  def edit
  end

  def update
  end
end
