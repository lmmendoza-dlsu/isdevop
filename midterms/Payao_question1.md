In your own words, kindly illustrate an effective DevOps workflow and toolchain. You may add images in your markdown file. To do that, the syntax is ![image name](/path/to/image/image.png)

1. Continous Integration (CI)
    - Developers frequently merger their code changes into the share repository.
    - Automated CI tools like Jenkins or Gitlab CI can automatically build and test the code
    - Tests such as  unit tests, integration tests, and there are test that are conducted in the deployment to staging enviroment
2. Continous Deployment (CD)
    - Once code changes passes the CI test, it is automatically deployed to the production-like enviroment
    - CD toll such as Ansible, Chef, or even  Puppet can help automate the deployment process and configuration management
3. Infrastructure As Code (IaC)
    - Tools such as Terraform and CloudFormation provides and manage infrastructure resources like  servers, networks, and databases
4. Monitoring And Feedback
    - the continouse act of monitoring the application and infrastructure performance
    - Feedback loops provide insights into the systema and application behaviour, giving the teams the data to make  decisions for optimization and improvement
