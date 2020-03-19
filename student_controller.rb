require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/student')
require_relative('./models/house')
also_reload('./models/*')

#CRUD - READ / index / GET
get '/students' do
  @students = Student.all()
  erb(:index)
end

#CRUD - CREATE  / new / GET
get '/students/new' do
  @houses = House.all()
  erb(:new)
end

#CRUD - READ / show / GET
get '/students/:id' do
  @student = Student.find(params[:id].to_i())
  erb (:show)
end

#CRUD - CREATE/ create / POST
post '/students' do
  @student = Student.new(params)
  @student.save
  erb (:create)
end

#CRUD - UPDATE / edit / GET
get '/students/:id/edit' do
  @houses = House.all()
  @student = Student.find(params[:id].to_i())
  erb(:edit)
end

#CRUD - UPDATE / update / POST
post '/students/:id' do
  Student.new(params).update()
  redirect to '/students'
end

#CRUD - DELETE / delete / POST
post '/students/:id/delete' do
  Student.find(params[:id].to_i()).delete()
  redirect to '/students'
end
