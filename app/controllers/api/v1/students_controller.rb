module Api
  module V1
    class StudentsController < ApplicationController

      def index
        @students = Student.all
        render json: @students
      end
      
      def new
        @student = Student.new
      end

      def show
        @student = Student.find(params[:id])
        render json: @student
      end

      def edit
      end

      def create
        @student = Student.create(student_params)
        if @student.save
          render json: @student
        else
          render('error')
        end
      end

      def update
        @student = Student.find(params[:id])
        if @student.update(student_params)
          render json: @student
        else
          render('error')
        end
      end

      def destroy
        @student = Student.find(params[:id])
        @student.destroy
      end

      private

      def student_params
        params.require(:student).permit(:studentName, :studentRollNo, :StudentClass, :studentMail)
      end
    end
  end
end
