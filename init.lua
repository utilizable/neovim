--------------------------
-- CONFIG 
--------------------------

-- Control variable for initial setup
local initial_setup = true  -- Change this to false to load all modules

-- Require the plugins module
require('plugins')

-- Conditionally require other modules based on the control variable
if not initial_setup then
    require('remaps')
    require('set')
end
