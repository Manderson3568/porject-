class NaturesController < ApplicationController
    def index
        @natures = Nature.all
    end
end
