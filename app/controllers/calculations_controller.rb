class CalculationsController < ApplicationController

  def flex_square
    @user_number = params["number"].to_f
    @square = (@user_number**2).round(4)
    render("calculations/flex_square.html.erb")
  end

  def flex_square_root
    @user_number = params["number"].to_f
    @squareroot = (@user_number**0.5).round(4)
    render("calculations/flex_square_root.html.erb")
  end

  def flex_payment
    @years = params["years"].to_f
    @principal = params["principal"].to_f
    @apr = params["apr"].to_f/100
    @monthly_payment = (((@apr/100/12) * (@principal)) / (1- (1+@apr/100/12)**(@years*-12))).round(2)
    render("calculations/flex_payment.html.erb")
  end

  def flex_random
    @min = params["min"].to_f
    @max = params["max"].to_f
    @user_number = rand(@min..@max)
    render("calculations/flex_random.html.erb")
  end

  def square_form
    render("calculations/square_form.html.erb")
  end

  def square_results
    @user_number = params[:user_number].to_f
    @square = @user_number**2
    render("calculations/square_results.html.erb")
  end

  def squareroot_form
    render("calculations/squareroot_form.html.erb")
  end

  def squareroot_results
    @user_number = params[:user_number].to_f
    @squareroot = @user_number**0.5
    render("calculations/squareroot_results.html.erb")
  end


  def payment_form
    render("calculations/payment_form.html.erb")
  end

  def payment_results
    @years = params["years"].to_f
    @principal = params["principal"].to_f
    @apr = params["apr"].to_f/100
    @monthly_payment = (((@apr/100/12) * (@principal)) / (1- (1+@apr/100/12)**(@years*-12))).round(2)
    render("calculations/payment_results.html.erb")
  end

  def random_form
    render("calculations/random_form.html.erb")
  end

  def random_results
    @min = params["min"].to_f
    @max = params["max"].to_f
    @user_number = rand(@min..@max)
    render("calculations/random_results.html.erb")
  end

end
