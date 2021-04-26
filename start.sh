docker run -it --rm -p 3000:3000 -v $PWD:/course -v $PWD/../PrairieLearn:/PrairieLearn -v "$HOME/pl_ag_jobs:/jobs" `# Map jobs directory into /jobs` \
    -e HOST_JOBS_DIR="$HOME/pl_ag_jobs" \
    -v /var/run/docker.sock:/var/run/docker.sock `# Mount docker into itself so container can spawn others` \
    prairielearn/prairielearn