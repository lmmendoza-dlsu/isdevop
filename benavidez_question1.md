1. Plan
   - Understand the requirements and design the architecture
   - Use project management tools like Jira for better collaboration and tracking of status
2. Use Version Control Tools
   - An effective DevOps will start at the use of version control tools like Git
     - Needs to have branching strategy
       - only tested codes can be pushed to main/master
       - have test branch, features branch, bug fixes branch
3. Continuous Integration
   - Automate the process of checking the code when push to remote repository
   - Use Jenkins or Github Workflows to monitors the changes of the repository and automatically trigger the process of automated tests and code quality checks
4. Quality Assurance Testing
   - The test environment can be automatically build by the pipeline when there is a changes in the code
   - The QAs need to test the final products/services
5. Continuous Delivery/Deployment
   - If all the test can be automatically done by the pipelines, then it can have continuous deployment by 
     - automatically build and push to the registry 
     - trigger the request for pulling the newest docker image and run it in the production environment
   - If there is a need of manual testing, then the deployment need to be approved by the QA 
   - Use containerization tools like Docker and Kubernetes for efficient and scalable deployments
6. Monitoring and Improving
   - Need to monitor the performance of the products/services and the user experience.
   - Can use tools like Prometheus, Grafana, and Sentry to collect the metrics, logs and display them visually in a dashboard
   - Gain the issues and feedback from the tools and go to Plan stage again for the process

Below is the sample DevOps tools at every stage
![Sample DevOps Tools at Every Stage](https://uploads.sitepoint.com/wp-content/uploads/2023/10/1697502572PopularDevOpsTools2023.png)

