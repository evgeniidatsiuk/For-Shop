ActiveAdmin.register Delivery do
permit_params :where, :number, :client, :price, :end, :status_id

form do |f|
    f.inputs do
      f.input :where
      f.input :number
      f.input :client
      f.input :price
      f.input :end
      f.input :status_id, :as => :select, :collection => Status.all.map{|u| ["#{u.name}", u.id]}
    end
   f.actions
end
end
