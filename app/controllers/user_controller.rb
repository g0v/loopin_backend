class UserController < ApplicationController 
  def create
    user = User.new
    if User.where( :uid => params[:uid] ).empty?
      render :text => "The uid is already exist."
    else
      user.uid = params[:uid]
      user.save
      render :json => {:status => "success" , :uid => user.uid }.to_json
    end
  end
  def data_new
    data = Raw.new
    begin
      unless User.where( :uid => params[:uid]).empty?
      data.uid = params[:uid]
      data.date = Date.parse(params[:date]
      data.delta_x = params[:delta_x].to_f
      data.delta_y = params[:delta_y].to_f
      data.delta_z = params[:delta_z].to_f
      data.longtitude = params[:longtitude].to_f
      data.latitude = params[:latitude].to_f
      data.save
      render :json => { :status => "success" }.to_json
     else
      render :json => { :status => "fails" , :message => "unknown uid please register your uid first" }.to_json
    rescue
     render :json => { :status => "fails" , :message => $!.to_s , :location => $@.to_s }.to_json
    end
  end 
end
