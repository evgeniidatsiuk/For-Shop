ActiveAdmin.register Repair do

  permit_params :where, :number, :client, :price, :worker, :end, :name

  form do |f|
      f.inputs do
        f.input :name
        f.input :where
        f.input :number
        f.input :client
        f.input :price
        f.input :worker
        f.input :end#, :input_html => { :value => f.object.end.try(:strftime, '%Y-%m-%d') }
      end
     f.actions
  end
end
