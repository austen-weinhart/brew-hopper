class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  before_save :format_user_input

  attr_reader :password

  def password=(unencrypted_password)
    unless unencrypted_password.empty?
      @password = unencrypted_password
      self.password_digest = BCrypt::Password.create(unencrypted_password)
    end
  end

  def authenticate(unencrypted_password)
    if BCrypt::Password.new(self.password_digest) == unencrypted_password
      return self
    else
      return false
    end
  end

  def format_user_input
    self.name = self.name.titleize
    self.email = self.email.downcase
  end
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    authorized?
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to edit_user_path(current_user)
    else
      render :edit
    end
  end

  #validations
  validates :name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}

  has_secure_password
  validates :password, presence: true, confirmation: true, length: {in: 6..20}, allow_blank: true


  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to acceess that page!"
      redirect_to login_path
    end
  end
end
