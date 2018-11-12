require "sinatra"
require "sendgrid-ruby"
require "./item_generator.rb"

include SendGrid


def cake_generator
  cakes = []
  vanilla_cake = Item.new("vanilla cake", "images/cakeImages/lemon.jpg","The most awesome cakes here: ","vanilla")
  strawbery_cake = Item.new("Strawbery cake", "images/cakeImages/strawbery1.jpg","The most awesome cakes here: ","strawberry")
  chocolate_cake = Item.new("Chocolate cake", "images/cakeImages/chocolate1.jpg","The most awesome cakes here: ","chocolate")
  
  [vanilla_cake, strawbery_cake,chocolate_cake]
end 


def cookie_generator
  cookies = []
  chocolate_cookie = Item.new("Chocolate cake", "images/cookies/cookie2.jpg","The most awesome cakes here: ","strawberry")
  strawbery_cookie = Item.new("Strawbery cake", "images/cookies/cookie3.jpg","The most awesome cakes here: ","strawberry")
  vanilla_cookie = Item.new("Strawbery cake", "images/cookies/cookie1.jpg","The most awesome cakes here: ","strawberry")
  [chocolate_cookie, strawbery_cookie,vanilla_cookie]
end 

def cupcake_generator
  cupcakes = []
  chocolate_cupcake = Item.new("Chocolate cake", "images/cupCakes/cupcakeStrawbery.jpg","The most awesome cakes here: ","strawberry")
  strawbery_cupcake = Item.new("Strawbery cake", "images/cupCakes/cupcakeStrawbery.jpg","The most awesome cakes here: ","strawberry")
  vanilla_cupcake = Item.new("Strawbery cake", "images/cupCakes/cupcakeStrawbery.jpg","The most awesome cakes here: ","strawberry")
  [chocolate_cupcake, strawbery_cupcake,vanilla_cupcake]
end

get "/" do
  erb :index
end

get "/index" do
  erb :index
end

get "/about" do
  erb :about
end

get "/cookies" do
  @cookies = cookie_generator
  erb :cookies
end

get "/cakes" do
  @cakes = cake_generator
  puts "cakes"
  erb :cakes
end

get "/cupcakes" do
  @cupcakes = cupcake_generator
  erb :cupcakes
end

get "/wedding" do
  erb :cookies
end

get "/birthday" do
  erb :muffins
end

get "/party" do
  erb :faq
end

get "/contact" do
  erb :contact
end


post "/contact" do
@email = params[:to]
@name = params[:name]
puts @name 
puts @email 

  from = Email.new(email: ENV["PERSONAL_EMAIL"])
  to = Email.new(email: @email )
  subject = "You have been subscribed!"
  content = Content.new(
    type: "text/html",
    value: "<p>Congratulations, you have been subscribe into Mariia\'s Shop Catalog.</p>
    <br>
    Below is a list of what we have to offer:
    <p>Thank you " + @name + ", here is your coupon code 'COOKIEMONSTA07' for 10,000 cookies for $10,000! (hurry while supplies last)</p>"
  )

# create mail object with from, subject, to and content
  mail = Mail.new(from, subject, to, content)

# sets up the api key
  sg = SendGrid::API.new(
    api_key: ENV["SENDGRID_API_KEY"]
  )
  response = sg.client.mail._("send").post(request_body: mail.to_json)

  redirect "/index"
end



