ActiveAdmin.register Delivery do
permit_params :where, :nubmer, :owner, :price

form do |f|
    f.inputs do
      f.input :where
      f.input :nubmer
      f.input :owner
      f.input :price
    end
   f.actions
end
end
