# Coursera-Getting-and-Cleaning-Data-course-project
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

This repository contains:
- Codebook.md - it describes variables used in the analysis
- run_analysis.R - it's the code to download and manipulate the data to create tidy_data.text for later analysis

# Process
Firstly training sets and test sets were appended together before any further transformation. After supplementing few descriptive variables in the data set, we extracted the variables fit to the selection criteria perscriped by the assignment. Finally, the variables were averaged by each sobject and activity then exported into the final data set.

