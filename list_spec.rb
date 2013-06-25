require "rspec"

require_relative "list"

describe List do

  before do
    task = mock(:task)
    task.stub(:description => "Walk the dog") #.and_return("Walk the dog")
  end

  describe "#initialize" do
    it "takes a title for its first argument" do
      pending
    end

    it "requires one argument" do
      pending
    end
  end

  describe "#add_task" do
    it "increments the tasks array by one task" do
      pending
    end
  end

  describe "#complete_task" do
    it "marks a task as complete" do
      pending
    end
  end

  describe "#delete_task" do
    it "decrements the tasks array by one task" do
      pending
    end
  end

  describe "#completed_tasks" do
    it "returns an array of completed tasks" do
      pending
    end
  end

    describe "#incomplete_tasks" do
    it "returns an array of incomplete tasks" do
      pending
    end
  end

end
