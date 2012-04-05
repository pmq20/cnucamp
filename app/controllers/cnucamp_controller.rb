class CnucampController < ApplicationController
  def index
    @randoms = Dir.glob("#{Rails.root}/app/assets/images/bg/*.jpg").to_a
    @bg_file = @randoms[Random.new.rand(0..@randoms.size-1)]
  end
end