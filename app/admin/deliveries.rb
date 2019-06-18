ActiveAdmin.register Delivery do
permit_params :where, :number, :owner, :price

form do |f|
    f.inputs do
      f.input :where
      f.input :number
      f.input :owner
      f.input :price
    end
   f.actions
end
end
