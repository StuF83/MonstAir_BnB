# MonstAir BnB

## How to contribute:

**1.  Clone the repository**

Go to the GitHub page for the repository

Click on the green "Code" button and select the SSH option

Copy the SSH link

Open your command line interface and navigate to your local Git folder (for example, ~/code/GIT_USER_NAME)

Type "git clone" followed by the SSH link and press enter

This will download the repository to your local machine and you can now open it in your code editor of choice.
	

**2.  Create a new branch**

In the command line, type "git checkout -b YOUR_NEW_BRANCH_NAME" (replace "YOUR_NEW_BRANCH_NAME" with a relevant name for your branch)
This will create a new branch for you to work on, separate from the main branch of the repository.
	

**3.  Make changes and commit them**

Run `bundle install` and `yarn install`

Make changes to the code as desired

In the command line, type "git status" to see which files have been changed

Type "git add ." to stage all changes

Type "git commit -m 'YOUR MESSAGE HERE' -m 'EVEN MORE DETAILED MESSAGE HERE IF YOU NEED TO EXPLAIN THINGS IN DEPTH'" to commit your changes with a       message describing what you did.
	

**4.  Push your changes to the repository**

In the command line, type "git push origin YOUR_NEW_BRANCH_NAME" to push your changes to the repository on GitHub
	

**5.  Create a pull request**

Go to the GitHub page for the repository

Click on the "Pull requests" tab

Click on the "New pull request" button

Select your branch from the "compare" dropdown and the main branch of the repository from the "base" dropdown

Add a title and description for your pull request

Click "Create pull request"

Ask another team member to review your code

Once the review is complete and any necessary changes have been made, the pull request can be merged into the main branch.
	

**Some additional guidelines to keep in mind:**

 - Make your branch name relevant to the changes you are making (for example, "nav_bar_css" for changes to the navigation bar CSS)
 - Keep your pull requests short to make them easier to review. The more code there is to review, the longer the process will take.
    

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp]                 (https://www.lewagon.com) team.
