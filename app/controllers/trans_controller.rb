class TransController < ApplicationController
    def new
        @account = Account.new
    end
end
