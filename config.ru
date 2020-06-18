require_relative './config/environment'

use Rack::MethodOverride
use GenreController
use UserController
run ApplicationController