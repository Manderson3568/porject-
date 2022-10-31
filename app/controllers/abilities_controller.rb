class AbilitiesController < ApplicationController
    def seed
        xlsx = Roo::Spreadsheet.open('/Users/michael/Projects/project1/pokemon_team_builder/seedData/Untitled spreadsheet.xlsx')
        xlsx.sheet(0).each do |r|
            ability = Ability.create(:name => r[0], :info => r[1])
        end
    end
    def upload

    end
    def index
    end

end
