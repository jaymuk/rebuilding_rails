require "rulers/version"
require "rulers/routing"
require "rulers/util"
require "rulers/dependencies"
require "rulers/controller"
require "rulers/file_model"

module Rulers
    class Application
      def call(env)
        if env['PATH_INFO'] == '/favicon.ico'
          return [ 404, {'Content-Type' => 'text/html'}, [] ]
        end
        klass, act = get_controller_and_action(env)
        controller = klass.new(env)
        begin # capturing error
          text = controller.send(act)
        rescue
          return [ 404, {'Content-Type' => 'text/html'}, ["ERROR!: EXCEPTION WAS RAISED AT QUOTES CONTROLLER - v3"] ]
        end

        [ 200, {'Content-Type' => 'text/html'}, [text] ]
      end
    end
end
