*******************************
*
*   Question 3
*   1. List 3 advantages of using Docker. 
*   2. List 3 benefits of DevOps framework.
*
*******************************

# Advantages of Docker
## Resource Efficient
Unlike virtualization, creating and running docker images does not need the system to boot up
an entirely new operating system since they share the host's operating system. Ths results in 
faster startup times and take up less resources

## Easier Configuration
Containerization ensures that the system is compatible with the software that you are trying to run.
VMs require that the user ensures compatibility with the operating system and ensuring dependencies are installed
for the system to run. 

## Facilitates faster deployment
Containerization is used by technologies that enable continuous deployment/ delivery which makes pushing changes
into production faster. DevOps technologies like Kubernetes utilizes Docker and docker images to facilitate and automate
deployment

# Benefits of DevOps Framework
## Automation
Processes such as building, testing and deploying are automated with the help of technologies such as Jenkins, Docker and Kubernetes.
This streamlines the development process and ships code to production much faster than non-DevOps approaches. This in turn releases code much
quicker and more reliably as it also reduces the occurence of potential defects

## Enhanced Collaboration
DevOps emphasizes on a particular way of utilizing version control management within the codebase or with system builds that does not hamper
or affect each role in the team. An example would be that frequent changes to the code that have not yet been staged will not affect the code that
is being tested on and likewise these changes will also not affect the production build that clients/ end-users are also using thus preventing their 
experience from being affected from potential bugs that might have been created from the changes

## Faster Delivery
Through DevOps, the end user is able to see changes quicker as the system is frequently updated, pushing new changes into production. This allows the end
user to interact with the new version of the system and provide feedback and capture potential issues that were not found during the development phase. This
also resolves previous issues quicker reducing the number of bugs that the end user actually encounters in the system
