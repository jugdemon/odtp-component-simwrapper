#!/bin/bash

############################################################################################
# START OF MANUAL CONFIGURATION. 
# ADAPT THE TEMPLATE HERE.
############################################################################################

#########################################################
# 1. GITHUB CLONING OF REPO
# Clone the repository of your tool and checkout to one specific commit. 
#########################################################

git clone https://github.com/simwrapper/simwrapper.git /odtp/odtp-workdir/simwrapper --depth 1 -c advice.detachedHead=false -b v3.4.1
cd /odtp/odtp-workdir/simwrapper


#########################################################
# 2. CONFIG FILE CONFIGURATION
# Read placeholders and create config file from Environment  
#########################################################

# python3 /odtp/odtp-component-client/parameters.py /odtp/odtp-app/config_templates/template.yml /odtp/odtp-workdir/config.yml

#########################################################
# 3. INPUT FOLDER MANAGEMENT
#########################################################

# ln -s /odtp/odtp-input/... /odtp/odtp-workdir/...

#########################################################
# 4. TOOL EXECUTION
# While the output is managed by ODTP and placed in /odtp/odtp-output/
#########################################################

npm ci
npm run serve -- --port 8088


# COMMAND $PARAMETER_A #PARAMETER_B /odtp/odtp-input/data

#########################################################
# 5. OUTPUT FOLDER MANAGEMENT
# The selected output files generated should be placed in the output folder
#########################################################

# cp -r /odtp/odtp-workdir/output/* /odtp/odtp-output

############################################################################################
# END OF MANUAL USER APP
############################################################################################
