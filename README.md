# RubyAutomationTemplate
This document will instruct how to get rolling with this automation template. At this time the instructions assume that Rubymine is being used.

## Prerequisites
* Download and Install [Ruby](https://www.ruby-lang.org/en/downloads/). You can optionally install [Homebrew](https://brew.sh/) to aid in the install of ruby.
* [RVM](https://gist.github.com/denji/8706676) installation through Homebrew.
* Optionally you can use an IDE such as [RubyMine](https://www.jetbrains.com/ruby/download/) or other text editor such as [Sublime](https://www.sublimetext.com/download). For now this readme is going to follow the Rubymine setup.

## Clone from the repository

### RubyMine
1. Open Rubymine.
2. On the Welcome screen, click on 'Check out from Version Control'.
3. Select Github and a "Clone Repository" window will open.
4. In the Git Repository URL drop-down, select url for Ruby Automationtemplate.git option.
5. Edit the Parent directiry to what you like. This is where the project will live.
6. Change the Directoy name to the project name this will be created for.
7. Click clone.
8. You will be prompted to open the directory that you just created. Click Yes.

### Terminal
1. `cd <parent-directory>`
2. `git clone git@github.com:sonjaq/RubyAutomationTemplate.git`
3. `cd RubyAutomationTemplate`
4. `bundle` 

## General Information
The template comes with 4 files that will be of importance. The abstract_base_page.rb, the rename_this_page.rb, the some_test.rb, and the Gemfile. These files will need to be edited to conform to your own project. The following instructions will go over how to edit each file and a general explanation of how the files are meant to be utilized.

The arcitecure of the template uses page objects and then actualy test files that access the page objects. The page object files will make up the endpoints of the website you are going to be automating. The pages files will contain your web elements and the functionality/login contained within those pages.

## Abstract_base_page.rb
This file contains the base functionality that other page objects will utilize in their logic. For example the driver setup is contained in this file. Other common or "global" functionality can be contained in this file.

 ### What to update:
 * initialize definition - This definition assembles the url for the other page objects and passes it to the driver.
 * @base_url variable - Enter in the root url for your project within the single quotes. 
 
 ## rename_this_page.rb
 This page shows and exmaple of a typical webpage ie Homepage or Contacts page. Each page will need to contain a url_extension. This would be like '/' for the homepage or '/contacts' for a contacts page. The class on this page file will call the abstract_base_page.rb file so the driver will get passed the to page file. In this page file template are examples of how to find page elements such as form fields or buttons and other pages assets that an end-user would typically interact with. There is also a short example of logic there to. This may get expaned in later versions.

### What to update:
 * The file name itself should be renamed. For example home_page.rb or contacts_page.rb To do this in Ruby Mine:
 1. Right-click the file name in the left pane and select 'Refactor' > 'Rename'.
 2. Enter in a new file name and click 'Refactor'.
 3. A pane at the bottom will open with 'Cancel' and 'Do Refactor' buttons. Click 'Do Refactor'. This should refactor update the usage of that file everywhere in the project.
 
 ## some_test.rb
 This is file is an example of how a test file should relatively look. The test file will make use of the page object files. Example code is in the some_test.rb file. Each test file should contain one test case.
 
 ### What to update:
 1. Right-click the file name in the left pane and select 'Refactor' > 'Rename'.
 2. Enter in a new file name such as "login_test" and click 'Refactor'.
 3. A pane at the bottom will open with 'Cancel' and 'Do Refactor' buttons. Click 'Do Refactor'. This should refactor update the usage of that file everywhere in the project.
 
 ## Gemfile
 A Gemfile is a file we create which is used for describing gem dependencies for Ruby programs. A gem is a collection of Ruby code that we can extract into a “collection” which we can call later. In order to install the gems, the bundler needs to be run to install/update the gems. To do so:
 ### RubyMine
 1. Click Tools > Bundler > Install
 ### Terminal (unless you did this at the time of install)
 1. `cd <path-to>/RubyAutomationTemplate`
 1. `bundle`
