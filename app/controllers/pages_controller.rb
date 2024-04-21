class PagesController < ApplicationController

  def home

    render({ :template => "pages_templates/home" })

  end

  def rock

    words = ["rock", "paper", "scissors"]
    they_play = words.sample
    
    if they_play=="paper"
      output = "We lost!"
    elsif they_play=="scissors"
      output = "We won!"
    elsif they_play=="rock"
      output = "We tied!"
    end

    @outcome = "We played rock!\n\nThey played #{they_play}!\n\n#{output}"

  
    render({ :template => "pages_templates/rock" })

  end

  def paper
    
    words = ["rock", "paper", "scissors"]
    they_play = words.sample
    
    if they_play=="paper"
      output = "We tied!"
    elsif they_play=="scissors"
      output = "We lost!"
    elsif they_play=="rock"
      output = "We won!"
    end
  
    @outcome = "We played paper! \n\n They played #{they_play}! \n\n #{output}"


    render({ :template => "pages_templates/paper" })

  end

  def scissors

    words = ["rock", "paper", "scissors"]
    they_play = words.sample
    
    if they_play=="paper"
      output = "We won!"
    elsif they_play=="scissors"
      output = "We tied!"
    elsif they_play=="rock"
      output = "We lost!"
    end
  
    @outcome = "We played scissors!\n\nThey played #{they_play}!\n\n#{output}"
  
    render({ :template => "pages_templates/scissors" })

  end

end
