class NumbersController < ApplicationController
  def winners
    @lucky_num = Array.new

    5.times do
      num = rand(1...100)
      
      @lucky_num.push(num)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

  def losers
    @unlucky_num = Array.new
    5.times do
      num = rand(1...100)
      @unlucky_num.push(num)

    end

    render({ :template => "lottery_stuff/boohoo.html.erb"})
  end

end
