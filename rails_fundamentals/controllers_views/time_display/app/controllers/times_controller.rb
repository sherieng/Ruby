class TimesController < ApplicationController
  def main
    @t = Time.now 
  end
end
