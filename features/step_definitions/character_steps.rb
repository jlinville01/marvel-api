Given(/^I send a valid GET request to get all characters$/) do
	@characters = characters
end

Then(/^all characters should return in the response$/) do
	expect(@characters.count).to eql(10)
end

Given(/^I send a valid request for a specific character$/) do
	@character = specific_character(1)
end

Then(/^a specific character should return in the response$/) do
	expect(@character[:alias]).to eql('Captain America')
end

Given(/^I send a valid request to create character$/) do
	create_character(CHAR_ALIAS, REAL_NAME, DEBUT, STATUS, POWERS, BIO)
end

Then(/^a new character should be created$/) do
	character = specific_character(11)
	expect(character[:alias]).to eql(CHAR_ALIAS)
end

Given(/^I send a valid request to update character$/) do
	update_character(1)
end

Then(/^the character should be updated$/) do
	character = specific_character(1)
	expect(character[:debut]).to eql('194777')
end

Given(/^I send a valid request to delete character$/) do
	delete_character(3)
end

Then(/^the character should be deleted$/) do
	begin
		specific_character(3)
	rescue e
		puts e.response.code
		# expect(e.response.code).to eql()
	end
end