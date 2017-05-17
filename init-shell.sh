# DB settings
export APP_MONGO_URL="mongodb://kadira:kadira@localhost:27017/kadiraApps"
export APP_MONGO_OPLOG_URL="mongodb://localhost:27017/local"
export DATA_MONGO_URL="mongodb://kadira:kadira@localhost:27017/kadiraData"
export MAIL_URL="smtp://postmaster%40kadira.io:9jx4fqhdfbg5@smtp.mailgun.org:587"

# Engine settings
export ENGINE_PORT=11011

# UI settings
export UI_PORT=80
export UI_URL="http://localhost:$UI_PORT"
# CPU Profiler needs a s3 bucket
export AWS_DEFAULT_REGION="eu-central-1"
export AWS_ACCESS_KEY_ID="AWSID"
export AWS_SECRET_ACCESS_KEY="AWSKEY"
export AWS_BUCKET='qlp-kadira'
# Monitoring Setup

export LIBRATO_EMAIL
export LIBRATO_TOKEN
