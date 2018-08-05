module Api
    module V1
        class BooksController < ApplicationController

            # GET /books
            def index
                @books = Book.all
                render json: {status: 'SUCCESS', message: 'Loaded books', data: @books}, status: :ok
            end

            # GET /books/:id
            def show
                book = Book.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Loaded book', data: book}, status: :ok
            end

            # POST /books
            def create
                @book = Book.create(book_params)
                if @book.save
                    render json: {status: 'SUCCESS', message: 'Saved book', data: @book}, status: :created
                else 
                    render json: {status: 'ERROR', message: 'Failed to save book', data: @book.errors}, status: :unprocessable_entity
                end
            end

            # DELETE /books/:id
            def destroy
                @book = Book.find(params[:id])
                if @book.destroy
                   head(:ok)
                else
                   head(:unprocessable_entity)
                end
            end

             # PUT /books/:id
            def update
                
                @book = Book.find(params[:id])

                if @book.update_attributes(book_params)
                    render json: {status: 'SUCCESS', message: 'Updated book', data: @book}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Failed to update book', data: @book.errors}, status: :unprocessable_entity
                end
            end


            private

            # allowed valid params
            def book_params 
                params.require(:book).permit(:title, :author, :publisher, :genre)
            end
        end
    end
end
