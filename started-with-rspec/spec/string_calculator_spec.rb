require 'string_calculator'

# to run the specs bundle exec rspec

# we want to describe the behavior of the classes, modules, and methods
# to run specs run command in terminal: bundle exec rspec

# always start with a describe block
describe StringCalculator do

# convention:
# class methods are prefixed with a .
# intances methods are prefixed with a #

# this reads: add class method: given an empty string, it returns zero
  describe ".add" do
    # describes the context under with the method is expected to do something
    context "two numbers" do
      context "given '2,4'" do
      # that something is return zero
      # it block describes a specific example
        it "returns 6" do
        # eql is a matcher
        # expect(..).to & expect(..).not_to define expected outcomes
          expect(StringCalculator.add("2,4")).to eql(6)
        end
      end

    context "given '17, 100'" do
      it "returns 117" do
        expect(StringCalculator.add("17, 100")).to eql(117)
        end
      end
    end
  end
end

# need to run command 'bundle install' for this to work
# deleted because I didn't want unnecessary files
