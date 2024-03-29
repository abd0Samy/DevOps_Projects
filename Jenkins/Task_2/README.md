# Jenkins Second Lab
### 1) What is the Jenkins pipeline?
Jenkins Pipeline is a collection of events or jobs which are interlinked with one another in a sequence. Each sequence of events is called a stage.
### 2) What scripting language is Jenkins pipeline syntax based on?
Groovy programming language
### 3) what are the different ways to trigger a pipeline? 
- Manually by clicking "build" in the pipeline
- Webhook (Pipeline gets triggered whenever there is a commit on a specific Github Repo)
- Bash/Curl command
- After a project is built
- Periodically at specific dates
### 4) what is the difference between a parameter and a Jenkins env variable?
- Parameter: a variable that is being changed upon the user's desire.
- Environment Variable: a variable that tracks a specific metric, such as the build number.
- Environment Variables can be overridden or unset, but params are an immutable Map and cannot be changed. The best practice is to always use params when you need to get a build parameter.
### 5) what is an organization folder job and what is used for?
Organization Folders enable Jenkins to monitor an entire GitHub Organization and automatically create new Multibranch Pipelines for repositories which contain branches and pull requests containing a Jenkinsfile.
### 6) Create a Jenkins pipeline for your repo and use the script file (Jenkinsfile) to write pipeline syntax, including parameter functions and env variables in it. 

- Jenkinsfile on Github:
![Jenkinsfile_on_Github](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/050ec2f5-191b-46d4-82ed-c55d1d08b4e5)

- Pipeline syntax:
![Pipeline_syntax](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/a4fee16a-de32-4dfc-a977-9a68e353f2e4)

- Console Output:
![Console_Output_pipeline](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/0bdacbcb-8317-414c-bf81-851186061cc5)

### 7) Create another multibranch pipeline and filter branches to contain only (master, dev, test)

- All branches on Github:

![All_Branches_Github](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/9a52fdb8-b425-4174-9a03-31f8ff392f6a)

- Build succeeded on all braches:
![Build_succeeded](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/7a158c63-79b9-428a-b8b1-02115ab6c4b5)
