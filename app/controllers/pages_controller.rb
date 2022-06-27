class PagesController < ApplicationController
  def home
    @blogs = Blog.all
  end

  def about
    @portfolios = Portfolio.all
  end

  def contact
    @skills = Skill.all
  end
end
