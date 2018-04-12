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

get_user_twitter("Jonathan", users)
get_user_home("Erik", users)
get_user_lottery("Erik", users)
users_type_of_pet_by_name("Avril", "monty", users)
