class PortfoliosController < ApplicationController

    def index
        @portfolio_items = Portfolio.all
    end

    def new
        @portfolio_item = Portfolio.new
    end

    def create
        @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle))

        respond_to do |format|
            if @portfolio_item.save()
                format.html {redirect_to portfolios_path}
            end
        end
    end

    def edit
        @portfolio_item = Portfolio.find(params[:id])
    end

    def update
        @portfolio_item = Portfolio.find(params[:id])

        respond_to do |format|
            if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle))
                format.html {redirect_to portfolios_path}
            end
        end
    end

    def show
        
        @portfolio_item = Portfolio.find(params[:id])
    
    end

    def destroy
        @portfolio_item = Portfolio.find(params[:id])

        respond_to do |format|
            if @portfolio_item.destroy()
                format.html {
                    redirect_to(portfolios_path)
                }
            end
        end
    end

end
