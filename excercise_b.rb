users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

def get_user_twitter(user_name, user_hash)
  p user_hash[user_name][:twitter]
end

def get_user_home(user_name, user_hash)
  p user_hash[user_name][:home_town]
end

def get_user_lottery(user_name, user_hash)
  p user_hash[user_name][:lottery_numbers]
end

def users_type_of_pet_by_name(user_name, pet_name, user_hash)
  for pet in user_hash[user_name][:pets]
    if pet[:name] == pet_name
      p pet[:species]
    end
  end
end

def users_smallest_lottery_number(user_name, user_hash)
  numbers = user_hash[user_name][:lottery_numbers]
  numbers.sort!
  p numbers[0]
end

def users_even_lottery_numbers(user_name, user_hash)
  numbers = user_hash[user_name][:lottery_numbers]
  even_numbers = []
  for lottery_number in numbers
    if lottery_number % 2 == 0
      even_numbers.push(lottery_number)
    end
  end
  p even_numbers
end

def add_to_user_lottery_numbers(user_name, lottery_number, user_hash)
  numbers = user_hash[user_name][:lottery_numbers].push(lottery_number)
  p user_hash[user_name][:lottery_numbers]
end

def change_users_hometown(user_name, new_home, user_hash)
  user_hash[user_name][:home_town] = new_home
  p user_hash[user_name][:home_town]
end

def add_pet_to_user(user_name, pet_name, pet_species, user_hash)
  new_pet = {name: pet_name, species: pet_species}
  user_hash[user_name][:pets].push(new_pet)
  p user_hash[user_name][:pets]
end

# def add_user(user_name, twitter_in, lottery_numbers_in, home_town_in, pet_name_in, pet_species_in, user_hash)
#   new_user = {
#     user_name: {
#       {twitter: twitter_in}, {lottery_numbers: lottery_numbers_in}, {home_town: home_town_in}, {:pets = [{name: pet_name_in} {species: pet_species_in}]}
#     }
# end

get_user_twitter("Jonathan", users)
get_user_home("Erik", users)
get_user_lottery("Erik", users)
users_type_of_pet_by_name("Avril", "monty", users)
users_smallest_lottery_number("Erik", users)
users_even_lottery_numbers("Avril", users)
add_to_user_lottery_numbers("Erik", 7, users)
change_users_hometown("Erik", "Edinburgh", users)
add_pet_to_user("Erik", "Fluffy", "dog", users)
#add_user("Joe", "joe_s", [1,2,3,4,5,6], "Edinburgh", "Mick", "dog", users)
