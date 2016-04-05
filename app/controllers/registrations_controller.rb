class RegistrationsController < ApplicationController
  def new
    # using nested form
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
    # Using composition form
    user = User.find(params[:id])
    dog = user.dog
    toys = dog.toys
    @form = EditRegistrationForm.new(user: user, dog: dog, toys: toys)
  end

  def update
    user = User.find(params[:id])
    @form = EditRegistrationForm.new(user: user, dog: user.dog, toys: user.dog.toys)
    if @form.validate(params[:user])
      @form.save
      redirect_to users_path
    else
      render :new, alert: 'Errors Found'
    end
  end
end
