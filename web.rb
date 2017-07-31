require 'sinatra'
require 'json'

get '/' do
    "Why are you here scrub? Don't you know how to API?"
end

post '/start' do
    requestBody = request.body.read
    requestJson = requestBody ? JSON.parse(requestBody) : {}

    # Get ready to start a game with the request data
    # eg: {"width"=>20, "height"=>20, "game_id"=>"8b262835-cd6e-416b-b667-a162c96a612f"}

    responseObject = {
        "name" => "skinny-snek",
        "color" => "#8107C4",
        "secondary_color" => "AB8D00",
        "head_type" => "bendr",
        "tail_type" => "freckled",
        "head_url"=> "http://i604.photobucket.com/albums/tt127/ZulackiDrood/Private/Log.Horizon.Avatar.jpg",
        "taunt" => "Do you SMELL. What the SNEK. IS COOKING?!",
    }

    responseObject.to_json
end

post '/move' do
    requestBody = request.body.read
    requestJson = requestBody ? JSON.parse(requestBody) : {}

    # Calculate a move with the request data

    # Dummy response
    responseObject = {
        "move" => "up",
        "taunt" => "going north!",
    }

    responseObject.to_json
end

post '/end' do
    requestBody = request.body.read
    requestJson = requestBody ? JSON.parse(requestBody) : {}

    # No response required
    responseObject = {}

    responseObject.to_json
end
