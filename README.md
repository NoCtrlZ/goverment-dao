# Setup Application
`$ bin/setup`  
The Application Is Listening On [Here](http://localhost:3000).  
It Takes About 5 Min.
# Directory Structure
```
(ProjectRoot)
--/backend
    |--/src         // Rocket API Server
    |--Cargo.lock
    |--Cargo.toml
    |--Rocket.tom   // API Configure
--/bin
    |--setup    // Script sets up Components Container
--/contracts
    |--/contracts    // Solifity files
    |--/migrations   // Script for Deploying
    |--/test         // Unit Tests
    |--truffle-config.js    // Blockchain Network Config
--/frontend
    |--/components  // Components
    |--/interfaces  // Interfaces
    |--/pages       // Pages
    |--/utils       // Util Functions
--.node-version           // Using Node Version 13.1.0
--docker-compose.yml    // Manage All Container
```