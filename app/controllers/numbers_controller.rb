class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

  def losers 
    @rabbit = Array.new 

    5.times do 
      dino = rand(1...100)

      @rabbit.push(dino)
    end

    render({:template => "lottery_stuff/bad.html.erb"})
  end

end
