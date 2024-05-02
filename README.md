# Set up development environment (win11)

Pre-requisite:
1. Install "Anaconda Powershell Prompt (miniconda3)"

Steps to set up auto-import "scripts.psm1":
1. `Ctrl + Q`. Search for and launch "Anaconda Powershell Prompt (miniconda3)"
2. Run `echo $profile` 
3. Navigate to the printed directory and create the printed file
4. Type in `Import-Module ${path_to_scripts.psm1}` in the file. Save and close it.
5. Relaunch "Anaconda Powershell Prompt (miniconda3)". Auto-import is completed.

Steps to run commands in "scripts.psm1":
1. Set up auto-import or manually impor "scripts.psm1".
2. Run commands in file. You may check out the available functions by viewing "scripts.psm1".

# Important console command for development

1. `rasa data validate`
2. `rasa train nlu`

# To evaluate the model with cross-validation

`rasa test nlu --nlu data/nlu --cross-validation --folds 2`

For large amount of data, 80%/20% (fold = 5) split is recommended. 
For small amount of data, 50%/50% (fold = 2) split is recommended.

# To quick test a NLU model

`rasa shell nlu`

# To run a RASA server alongside the Unity game

`rasa run --enable-api`