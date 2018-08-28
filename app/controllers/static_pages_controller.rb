class StaticPagesController < ApplicationController
  

  def home
    if current_user
      if current_user.role == "atameken"
        redirect_to panel_url
      elsif current_user.role == "expert"
        redirect_to specialities_url
      elsif current_user.role == "coordinator"
        redirect_to universities_url
      else

      end
    end  
  end

  def help
  end 

  def about
  end

  def panel
  	   redirect_to(root_path) unless current_user && current_user.role == "atameken"
  end
  
  def expert_list
  	   redirect_to(root_path) unless current_user && current_user.role == "atameken"

       respond_to do |format|
        format.html
        format.xlsx 
      end
  end

  def coordinator_list
  	   redirect_to(root_path) unless current_user && current_user.role == "atameken"

       respond_to do |format|
        format.html
        format.xlsx
      end
  end

  def disciplines_list
  	   redirect_to(root_path) unless current_user && current_user.role == "atameken"

       respond_to do |format|
        format.html
        format.xlsx
      end
  end

  def vuz_list
  	   redirect_to(root_path) unless current_user && current_user.role == "atameken"
      respond_to do |format|
        format.html
        format.xlsx
      end
  end

  def spec_list
  	   redirect_to(root_path) unless current_user && current_user.role == "atameken"

       respond_to do |format|
        format.html
        format.xlsx
      end
  end

  def dis_of_uni
       redirect_to(root_path) unless current_user && current_user.role == "atameken"

       respond_to do |format|
        format.html
        format.xlsx
      end
  end
end
