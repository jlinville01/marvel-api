Given(/^I send a valid GET request to get all characters$/) do
	characters
end

Then(/^all characters should return in the response$/) do

end

Given(/^I send a valid request for a specific character$/) do
	specific_character(1)
end

Then(/^a specific character should return in the response$/) do

end

Given(/^I send a valid request to create character$/) do
	create_character(CHAR_ALIAS, REAL_NAME, DEBUT, STATUS, POWERS, BIO)
end

Then(/^a new character should be created$/) do

end

Given(/^I send a valid request to update character$/) do
	update_character(1)
end

Then(/^the character should be updated$/) do

end

Given(/^I send a valid request to delete character$/) do
	delete_character(1)
end

Then(/^the character should be deleted$/) do

end