#coding: utf-8
ActiveAdmin.register Order do
	menu label: "Заказы"
	menu priority: 1
	permit_params :new, :comment, :name, :phone, :text
	actions :all, except: [:new, :show]
	
	form do |f|
    f.inputs "Заказ" do
      f.input :name, :input_html => { :disabled => true }
      f.input :phone, :input_html => { :disabled => true }
      f.input:text, :input_html => { :disabled => true }
      f.input :new
      f.input :comment
    end
    f.actions
  end
end
