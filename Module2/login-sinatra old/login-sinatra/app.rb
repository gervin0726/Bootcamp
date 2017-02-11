require 'sinatra'
require 'sinatra/reloader' if development?

enable(:sessions)

# extra: que user sea un modelo en lib folder
@@users = [{username: "wolas", password: "B5%khjsd"}]

get '/' do
  erb(:index)
end

post "/log_in" do
  # comprobar que username y password machean a un usuario
end


post '/register' do
  # añadir un usuario
  # extras: 
      # no permitir username o password en blanco
      # no permitir username que ya este registrados
  @@users << user
  @message = "Registro completado. ahora mete datos, venga. "
  redirect("/")
end

get '/profile' do
  # solo puedes llegar si estas registrado
  if session[:logged_in]
    erb(:profile)
  else
    @message = "Eres un trampas"
    redirect('/')
  end
end