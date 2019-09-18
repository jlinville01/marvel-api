def characters
	res = RestClient.get("#{BASE_HOST}/characters", nil)
	parsed_res = JSON.parse(res, symbolize_names: true)
	expect(res.code).to eql(200)
	expect(parsed_res[:status]).to eql('SUCCESS')
	expect(parsed_res[:message]).to eql('Loaded characters')
	parsed_res[:data]
rescue RuntimeError => e
	puts e.response
end

def specific_character(id)
	res = RestClient.get("#{BASE_HOST}/characters/#{id}", nil)
	parsed_res = JSON.parse(res, symbolize_names: true)
	expect(res.code).to eql(200)
	expect(parsed_res[:status]).to eql('SUCCESS')
	expect(parsed_res[:message]).to eql('Loaded character')
	expect(parsed_res[:data][:id]).to eql(id)
	parsed_res[:data]
rescue RuntimeError => e
	puts e.response
end

def create_character(char_alias, real_name, debut, status, powers, bio)
	payload = {
		alias: char_alias,
		real_name: real_name,
		debut: debut,
		status: status,
		powers: powers,
		bio: bio
	}
	res = RestClient.post("#{BASE_HOST}/characters", payload, nil)
	parsed_res = JSON.parse(res, symbolize_names: true)
	expect(res.code).to eql(200)
	expect(parsed_res[:status]).to eql('SUCCESS')
	expect(parsed_res[:message]).to eql('Saved character')
	expect(parsed_res[:data][:alias]).to eql(char_alias)
rescue RuntimeError => e
	puts e.response
end

def update_character(id)
	new_debut = "194777"
	payload = {
		debut: new_debut
	}
	res = RestClient.put("#{BASE_HOST}/characters/#{id}", payload, nil)
	parsed_res = JSON.parse(res, symbolize_names: true)
	expect(res.code).to eql(200)
	expect(parsed_res[:status]).to eql('SUCCESS')
	expect(parsed_res[:message]).to eql('Updated character')
	expect(parsed_res[:data][:debut]).to eql(new_debut)
rescue RuntimeError => e
	puts e.response
end

def delete_character(id)
	res = RestClient.delete("#{BASE_HOST}/characters/#{id}", nil)
	parsed_res = JSON.parse(res, symbolize_names: true)
	expect(res.code).to eql(200)
	expect(parsed_res[:status]).to eql('SUCCESS')
	expect(parsed_res[:message]).to eql('Deleted character')
rescue RuntimeError => e
	puts e.response
end