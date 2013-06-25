require "rspec"

require_relative "list"

describe List do
  let(:task) do
    task = double("task")
    task.stub(:description => "Walk the dog", :complete? => false, :complete! => true)
    task
  end

  let(:my_list) do
    list = List.new("My List")
    list.add_task(task)
    list
  end

  describe "#initialize" do
    it "takes a title for its first argument" do
      List.new("Chores").should be_an_instance_of List
    end

    it "requires one argument" do
      expect { List.new }.to raise_error(ArgumentError)
    end
  end

  describe "#add_task" do
    it "increments the tasks array by one task" do
      expect{ my_list.add_task(task) }.to change{ my_list.tasks.count }.by(1)
    end

    it "should accept a task as an argument" do 
      expect{ my_list.add_task('junk_data') }.to raise_error(NoMethodError) 
    end

  end

  describe "#complete_task" do
    it "marks a task as complete" do
      my_list.add_task(task)
      expect( my_list.complete_task(0) ).to eq true 
    end
  end

  describe "#delete_task" do
    it "decrements the tasks array by one task" do
     expect{ my_list.delete_task(0) }.to change{ my_list.tasks.count }.by(-1)
    end
  end

  describe "#completed_tasks" do
    it "returns an array of completed tasks" do
      expect( my_list.completed_tasks ).to be_an_instance_of Array 
    end
  end

    describe "#incomplete_tasks" do
    it "returns an array of incomplete tasks" do
      expect( my_list.incomplete_tasks ).to be_an_instance_of Array 
    end
  end

end
