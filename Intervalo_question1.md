*******************************
*
*   Question 1
*   In your own words, kindly illustrate an effective DevOps workflow and toolchain. 
*   You may add images in your markdown file. To do that, the syntax is ![image name](/path/to/image/image.png)
*
*******************************


# An Effective DevOps Workflow
What makes a devops workflow effective is one that is able to perform through the different development phases
and pushing changes seamlessly and with minimal effort from the development team. This would mean having a configured and fully
integrated toolchain that performs tasks like version control, testing, building and deploying automatically and as well as having a
team that ensures DevOps best practices and methodologies, emphasizing an enhanced, and non-silo communication between
developers and QAs  

# Toolchain
For each step in the DevOps lifecycle comes specific technologies that best fit the goal/ objective of the certain phase

## Plan
The planning phase involves defining project goals, setting priorities, and establishing timelines. 
This phase often incorporates project management tools such as Jira or Trello and can be built of any
existing Agile methodologies that is being practiced in the organization

## Code
Coding involves writing and making changes to the system and pushing these changes to a repository. Typically, multiple developers
are working on the codebase simultaneously and thus there needs to be a systematic way of handling all the changes and resolving potential
issues that arise from bringing all the code together

Tools: Visual Studio Code for coding, Git and GitHub for version control

## Building
The build phase transforms the source code into executable artifacts. 
Build automation tools like Jenkins or Travis CI are commonly used in this phase.

## Testing
The testing phase ensures the reliability and functionality of the codebase.

An example automated testing tool is Selenium

## Release
The release phase involves deploying the tested code to a staging environment or production. 

Exmaples of automated release tools are Jenkins, Ansible and Microsoft Azure

## Deploying 
Deployment involves pushing the release to the production environment. 
Automation tools like Kubernetes or Docker Swarm are employed for efficient and scalable deployments.

## Operate
Operating the application in the production environment includes monitoring and managing resources, handling incidents, and ensuring optimal performance.

## Monitor
The monitoring phase involves continuous observation of the application's performance, user experience, and system health. 
Monitoring tools like Prometheus or Nagios provide real-time insights, allowing for proactive issue resolution. DevOps teams
can also utilize user feedback that is generated througout the use of the newly update production build. These insights will
be used to determine the succeeding agendas for the next iteration of the planning phase

By incorporating these tools and phases into an integrated DevOps workflow, teams can streamline development processes, enhance collaboration, and deliver high-quality software with increased efficiency.