class MoesbioController < ApplicationController
    require 'yaml'

    def index
        file = Rails.root.join('app','assets','data','contactinfo.yml')
        @contactinfo = YAML::load_file(file)
    end
end
