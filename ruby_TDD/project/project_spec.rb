require_relative 'project' # include our Project class in our spec file
RSpec.describe Project do  
    before(:each) do
        @project1 = Project.new('Project 1', 'description 1', "John Doe")
        @project2 = Project.new('Project 2', 'description 2', "Jane Smith")
    end

    it 'has a getter and setter for name attribute' do
        @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
        expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
    end 

    it 'has a getter and setter for name attribute' do
        @project1.owner = "Changed Owner" 
        expect(@project1.owner).to eq("Changed Owner") 
    end 

    it 'has a method elevator_pitch to explain name and description' do
        expect(@project1.elevator_pitch).to eq("Project 1, description 1")
        expect(@project2.elevator_pitch).to eq("Project 2, description 2")
    end

    it 'has a method tasks to return the tasks for each project' do
        @project1.add_tasks("clean")
        expect(@project1.tasks.include?("clean")).to eq(true)
    end

    it 'has a method print_tasks to print the tasks for each project' do
        @project1.add_tasks("clean").add_tasks("study")
        expect{@project1.print_tasks}.to output("clean\nstudy\n").to_stdout
    end
end
