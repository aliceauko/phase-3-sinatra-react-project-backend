class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/bosses" do
    Boss.all.to_json
  end

  get '/employees' do
    Employee.all.to_json
  end

  get '/bosses/:boss_id/employees' do
    boss = Boss.find(params[:boss_id])
    boss.employees.to_json
  end

  post '/employees' do
    employee = Employee.create(
      name: params[:name],
      category: params[:category],
      is_present: params[:is_present],
      boss_id: params[:boss_id]
    ).to_json
  end

  post '/bosses' do
    boss = Boss.create(
      name: params[:name]
    ).to_json(include: :employees)
  end

  patch '/employees/:id' do
    employee = Employee.find(params[:id])
    employee.update(
      name: params[:name],
      category: params[:category],
      is_present: params[:is_present]
    ).to_json
  end

  delete '/employee/:id' do
    employee = Employee.find(params[:id])
    employee.destroy
    employee.to_json
  end

end
