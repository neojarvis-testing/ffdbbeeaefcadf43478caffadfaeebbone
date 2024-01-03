#!/bin/bash
export CHROME_BIN=/usr/bin/chromium
if [ ! -d "/home/coder/project/workspace/angularapp" ]
then
    cp -r /home/coder/project/workspace/karma/angularapp /home/coder/project/workspace/;
fi

if [ ! -d "/home/coder/project/workspace/dotnetapp" ]
then
    cp -r /home/coder/project/workspace/karma/dotnetapp /home/coder/project/workspace/;
fi

if [ -d "/home/coder/project/workspace/angularapp" ]
then
    echo "project folder present"
    cp /home/coder/project/workspace/karma/karma.conf.js /home/coder/project/workspace/angularapp/karma.conf.js;
    # checking for job-application.model.spec.ts component
    if [ -e "/home/coder/project/workspace/angularapp/src/models/job-application.model.ts" ]
    then
        cp /home/coder/project/workspace/karma/job-application.model.spec.ts /home/coder/project/workspace/angularapp/src/models/job-application.model.spec.ts;
    else
        echo "JobApplication_Model_should_create_Job_Application_instance_Interface FAILED";
    fi

    # checking for job-applications.component.spec.ts component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/job-applications" ]
    then
        cp /home/coder/project/workspace/karma/job-applications.component.spec.ts /home/coder/project/workspace/angularapp/src/app/job-applications/job-applications.component.spec.ts;
    else
        echo "JobApplicationsComponent should be created FAILED";
        echo "JobApplicationsComponent should initialize the JobApplication applyForJob function FAILED";
        echo "JobApplicationsComponent should call applyForJob when the form is submitted FAILED";
        echo "JobApplicationsComponent should validate required fields in the application form FAILED";
        echo "JobApplicationsComponent should not submit application if field is empty in the form FAILED";
        echo "JobApplicationsComponent should show the job position dropdown if jobPositions are available FAILED";
        echo "JobApplicationsComponent should render job positions in the dropdown using ngFor FAILED";
    fi

    # checking for job-position.model.spec.ts component
    if [ -e "/home/coder/project/workspace/angularapp/src/models/job-position.model.ts" ]
    then
        cp /home/coder/project/workspace/karma/job-position.model.spec.ts /home/coder/project/workspace/angularapp/src/models/job-position.model.spec.ts;
    else
        echo "JobPosition_Models_should_create_JobPosition_instance_Interface FAILED";
    fi

    # checking for job-posting-form.component.spec.ts component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/job-posting-form" ]
    then
        cp /home/coder/project/workspace/karma/job-posting-form.component.spec.ts /home/coder/project/workspace/angularapp/src/app/job-posting-form/job-posting-form.component.spec.ts;
    else
        echo "JobPostingFormComponent should be created FAILED";
        echo "JobPostingFormComponent should initialize the submitJobPosting function FAILED";
        echo "JobPostingFormComponent should call submitJobPosting when the form is submitted FAILED";
        echo "JobPostingFormComponent should validate required fields in the job posting form FAILED";
        echo "JobPostingFormComponent should not submit post if field is empty in the form FAILED";
        echo "JobPostingFormComponent should render the form fields FAILED";
    fi

    # checking for job.service.spec.ts component
    if [ -e "/home/coder/project/workspace/angularapp/src/app/services/job.service.ts" ]
    then
        cp /home/coder/project/workspace/karma/job.service.spec.ts /home/coder/project/workspace/angularapp/src/app/services/job.service.spec.ts;
    else
        echo "JobService_should_get_JobApplications FAILED";
        echo "JobService_should_post_a_new_job_application FAILED";
        echo "JobService_should_post_a_new_job_position FAILED";
        echo "JobService_should_update_the_status_of_a_job_application FAILED";
        echo "JobService should get total applicants by job position id FAILED";
        echo "JobService_should_get_JobPostings FAILED";
        echo "JobService_should_be_created FAILED";
        echo "JobService_should_have_a_markJobAsClosed_function FAILED";
    fi

    # checking for navigation-menu.component.spec.ts component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/navigation-menu" ]
    then
        cp /home/coder/project/workspace/karma/navigation-menu.component.spec.ts /home/coder/project/workspace/angularapp/src/app/navigation-menu/navigation-menu.component.spec.ts;
    else
        echo "NavigationMenuComponent should create the NavigationMenu component FAILED";
        echo "NavigationMenuComponent should render navigation links FAILED";
    fi

    # checking for view-job-applications.component.spec.ts component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/view-job-applications" ]
    then
        cp /home/coder/project/workspace/karma/view-job-applications.component.spec.ts /home/coder/project/workspace/angularapp/src/app/view-job-applications/view-job-applications.component.spec.ts;
    else
        echo "ViewJobApplicationsComponent should be created FAILED";
        echo "ViewJobApplicationsComponent_should_load_job_applications FAILED";
        echo "ViewJobApplicationsComponent_should_render_a_table_with_headers FAILED";
    fi

    # checking for view-job-postings.component.spec.ts component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/view-job-postings" ]
    then
        cp /home/coder/project/workspace/karma/view-job-postings.component.spec.ts /home/coder/project/workspace/angularapp/src/app/view-job-postings/view-job-postings.component.spec.ts;
    else
        echo "ViewJobPostingsComponent should be created FAILED";
        echo "ViewJobPostingsComponent_should_render_a_table_with_headers FAILED";
    fi

    if [ -d "/home/coder/project/workspace/angularapp/node_modules" ]; 
    then
        cd /home/coder/project/workspace/angularapp/
        npm test;
    else
        cd /home/coder/project/workspace/angularapp/
        yes | npm install
        npm test
    fi 
else   
    echo "JobApplication_Model_should_create_Job_Application_instance_Interface FAILED";
    echo "JobApplicationsComponent should be created FAILED";
    echo "JobApplicationsComponent should initialize the JobApplication applyForJob function FAILED";
    echo "JobApplicationsComponent should call applyForJob when the form is submitted FAILED";
    echo "JobApplicationsComponent should validate required fields in the application form FAILED";
    echo "JobApplicationsComponent should not submit application if field is empty in the form FAILED";
    echo "JobApplicationsComponent should show the job position dropdown if jobPositions are available FAILED";
    echo "JobApplicationsComponent should render job positions in the dropdown using ngFor FAILED";
    echo "JobPosition_Models_should_create_JobPosition_instance_Interface FAILED";
    echo "JobPostingFormComponent should be created FAILED";
    echo "JobPostingFormComponent should initialize the submitJobPosting function FAILED";
    echo "JobPostingFormComponent should call submitJobPosting when the form is submitted FAILED";
    echo "JobPostingFormComponent should validate required fields in the job posting form FAILED";
    echo "JobPostingFormComponent should not submit post if field is empty in the form FAILED";
    echo "JobPostingFormComponent should render the form fields FAILED";
    echo "JobService_should_get_JobApplications FAILED";
    echo "JobService_should_post_a_new_job_application FAILED";
    echo "JobService_should_post_a_new_job_position FAILED";
    echo "JobService_should_update_the_status_of_a_job_application FAILED";
    echo "JobService should get total applicants by job position id FAILED";
    echo "JobService_should_get_JobPostings FAILED";
    echo "JobService_should_be_created FAILED";
    echo "JobService_should_have_a_markJobAsClosed_function FAILED";
    echo "NavigationMenuComponent should create the NavigationMenu component FAILED";
    echo "NavigationMenuComponent should render navigation links FAILED";
    echo "ViewJobApplicationsComponent should be created FAILED";
    echo "ViewJobApplicationsComponent_should_load_job_applications FAILED";
    echo "ViewJobApplicationsComponent_should_render_a_table_with_headers FAILED";
    echo "ViewJobPostingsComponent should be created FAILED";
    echo "ViewJobPostingsComponent_should_render_a_table_with_headers FAILED";
fi
