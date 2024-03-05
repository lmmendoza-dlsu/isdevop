**********************************************************************
*
For surname_question1.md: In your own words, kindly illustrate an effective DevOps workflow and toolchain. You may add images in your markdown file. To do that, the syntax is ![image name](/path/to/image/image.png)
*
**********************************************************************

The effective DevOps workflow begins developers using version control systems like Git to manage and track code collaboratively. Next, developers push their changes to a shared code repository, which triggers an automated built and test process.Focusing on the automated testing, automated tests, integration tests, and end-to-end tests are executed as the final phase of the continuous integration pipeline to ensure code quality and functionality. After automated testing, the continuous delivery and continous deployment pipeline begins. Once the testing is done, the application is deployed to stage or pre-production stage. Once all the testing and building is done, the application moves to the main production stage. In the production stage, the application is constantly monitored for bugs and errors.

A typical chain of software used would be (oversimplified):
Git -> Jira -> Gradle -> Sslenium -> Docker -> AWS  -> Stack
PLAN+CODE       BUILD   TEST        DEPLOY    DEPLOY/   Monitor
                                            OPERATE