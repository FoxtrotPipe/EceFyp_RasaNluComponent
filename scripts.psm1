function dev {
    cd Desktop/fyp_rasa_project
    conda activate rasa_env
}

function run {
    dev
    rasa run --enable-api
}