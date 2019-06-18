ActiveAdmin.register Repair do

  permit_params :where, :number, :client, :price, :worker, :end, :name, :status_id

  form do |f|
      f.inputs do
        f.input :name
        f.input :where
        f.input :number
        f.input :client
        f.input :price
        f.input :worker
        f.input :end#, :input_html => { :value => f.object.end.try(:strftime, '%Y-%m-%d') }
        f.input :status_id, :as => :select, :collection => Status.all.map{|u| ["#{u.name}", u.id]}
      end
     f.actions
  end
end
