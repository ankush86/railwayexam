module RequestSpecHelper
  def login_user
    before(:each) do
      @current_user = create(:user)
      post new_user_session_path,params:  {user: {:email => @current_user.email, :password => 'password'}}
    end
  end
end