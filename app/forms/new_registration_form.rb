class NewRegistrationForm < Reform::Form
  include Reform::Form::ActiveModel

  model :user
  property :name
  property :age
  property :email

  validates :age, :name, :email, presence: true

  property :dog do
    property :name
    validates :name, presence: true

    collection :toys do
      property :name
      validates :name, presence: true
    end
  end

end
