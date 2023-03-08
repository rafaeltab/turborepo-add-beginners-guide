Setup
  $ . ${TESTDIR}/../setup.sh
  $ . ${TESTDIR}/setup.sh $(pwd)

Check
  $ ${TURBO} run build --dry --single-package
  
  Global Hash Inputs
    Global Files               = 2
    External Dependencies Hash = 
    Global Cache Key           = Buffalo buffalo Buffalo buffalo buffalo buffalo Buffalo buffalo
    Root pipeline              = {"//#build":{"outputs":["foo"],"cache":true,"dependsOn":[],"inputs":[],"outputMode":"full","env":[],"persistent":false}}
  
  Tasks to Run
  build
    Task                             = build                                                                                                       
    Hash                             = fef49cd3cf47af84                                                                                            
    Cached (Local)                   = false                                                                                                       
    Cached (Remote)                  = false                                                                                                       
    Command                          = echo 'building' > foo                                                                                       
    Outputs                          = foo                                                                                                         
    Log File                         = .turbo/turbo-build.log                                                                                      
    Dependencies                     =                                                                                                             
    Dependendents                    =                                                                                                             
    Inputs Files Considered          = 4                                                                                                           
    Configured Environment Variables =                                                                                                             
    Inferred Environment Variables   =                                                                                                             
    Global Environment Variables     = VERCEL_ANALYTICS_ID=e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855                        
    ResolvedTaskDefinition           = {"outputs":["foo"],"cache":true,"dependsOn":[],"inputs":[],"outputMode":"full","env":[],"persistent":false} 
    Framework                        = <NO FRAMEWORK DETECTED>                                                                                     

  $ ${TURBO} run build --dry=json --single-package
  {
    "tasks": [
      {
        "task": "build",
        "hash": "fef49cd3cf47af84",
        "cacheState": {
          "local": false,
          "remote": false
        },
        "command": "echo 'building' \u003e foo",
        "outputs": [
          "foo"
        ],
        "excludedOutputs": null,
        "logFile": ".turbo/turbo-build.log",
        "dependencies": [],
        "dependents": [],
        "resolvedTaskDefinition": {
          "outputs": [
            "foo"
          ],
          "cache": true,
          "dependsOn": [],
          "inputs": [],
          "outputMode": "full",
          "env": [],
          "persistent": false
        },
        "expandedInputs": {
          ".gitignore": "6f23ff6842b5526da43ab38f4a5bf3b0158eeb42",
          "package-lock.json": "1c117cce37347befafe3a9cba1b8a609b3600021",
          "package.json": "185771929d92c3865ce06c863c07d357500d3364",
          "turbo.json": "2b9b71e8eca61cda6f4c14e07067feac9c1f9862"
        },
        "framework": "\u003cNO FRAMEWORK DETECTED\u003e",
        "environmentVariables": {
          "configured": [],
          "inferred": [],
          "global": [
            "VERCEL_ANALYTICS_ID=e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
          ]
        }
      }
    ]
  }
