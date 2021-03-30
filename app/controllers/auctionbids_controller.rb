class AuctionbidsController < ApplicationController

    #CRUD-READ
    #show all the bids with the username under each mtg card
    def index
        auctionbids = Auctionbid.all
        render json: auctionbids, include: [:users]
    end

    #CRUD-READ
    #show all the bids on the right bottom hand side of the page 
    def show 
        auctionbid = Auctionbid.find(params[:id])
        render json: auctionbid           
    end

    #CRUD-CREATE
    def create
        auctionbid = Auctionbid.new(bid: params[:bid], user_id: params[:user_id], mtgcard_id: params[:mtgcard_id])
        if auctionbid.save
            render json: auctionbid
        else
            render json: {error: 'Your Auction Bid Was Not Created'}
        end
    end

    #CRUD-UPDATE
    def update 
        auctionbid = Auctionbid.find(params[:id])
        if auctionbid.update(bid: params[:bid], user_id: params[:user_id], mtgcard_id: params[:mtgcard_id])
            render json: auctionbid
        else
            render json: {error: 'Your Auction Bid Was Not Updated'}
        end
    end

    #CRUD-DELETE
    def destroy
        Auctionbid.find(params[:id]).destroy
        render json: {message: 'Your Auction Bid Has Been Successfully Removed'}
    end 

end