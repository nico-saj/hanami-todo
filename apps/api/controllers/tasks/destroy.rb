module Api
  module Controllers
    module Tasks
      class Destroy
        include Api::Action
        include JSONAPI::Hanami::Action

        params do
          required(:id).filled(:str?)
        end

        def call(params)
          repo = TaskRepository.new
          task = repo.delete(params[:id])

          self.data = task
          self.status = 200
        end
      end
    end
  end
end
