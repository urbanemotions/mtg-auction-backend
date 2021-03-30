class MtgcardsController < ApplicationController

    #show all the mtg cards available for auction
    def index
        mtgcards = Mtgcard.all
        render json: mtgcards, include: [:bids]
    end

    #show all the mtg cards on the right hand side of the page 
    def show 
        mtgcard = Mtgcard.find(params[:id])
        render json: mtgcard
    end

    #stretch goal
    def create 
        mtgcard = Mtgcard.new(name: params[:name], image: params[:image], year: params[:year], overall_condition: params[:overall_condition], centering: params[:centering], 
                              corners: params[:corners], edges: params[:edges], surface: params[:surface], card_serial_number: params[:card_serial_number], graded_by: params[:graded_by])
        if mtgcard.save
            render json: mtgcard
        else
            render json: {error: 'MTG Card Was Not Created'}
        end
    end
    
    #stretch goal
    def update
        mtgcard = Mtgcard.find(params[:id])
        if mtgcard.update(name: params[:name], image: params[:image], year: params[:year], overall_condition: params[:overall_condition], centering: params[:centering], 
                          corners: params[:corners], edges: params[:edges], surface: params[:surface], card_serial_number: params[:card_serial_number], graded_by: params[:graded_by])
            render json: mtgcard
        else
            render json: {error: 'MTG Card Was Not Updated'}
        end
    end

end
