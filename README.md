Setups to Make a Run

This is a Distributed Architecture Built on AWS Using many services Including AWS Lambda , AWS Fargate Servers , AWS Kinesis and AWS bedrock.

You need to deploy the backend in your own AWS Account.

#Prerequisites
To deploy or to publish, you need to have the following packages installed on your computer:

bash shell (Linux, MacOS, Windows-WSL)
node v18 and npm
docker
zip
python3, pip3, virtualenv
aws (AWS CLI)
sam (AWS SAM)


Copy the GitHub repo to your computer. git clone https://github.com/DHRUV6029/MyAvatar-Live-Meeting

Navigate into the project root directory and, in a bash shell, run:

./publish.sh <your_bucket_basename> <cfn_prefix> <us-east-1>.
This:
checks your system dependendencies for required packages (see Dependencies above)
creates CloudFormation templates and asset zip files
publishes the templates and required assets to an S3 bucket in your account called cfn_bucket_basename-region (it creates the bucket if it doesn't already exist)
optionally add a final parameter public if you want to make the templates public. Note: your bucket and account must be configured not to Block Public Access using new ACLs.

This will genearte a cloud formation template URL 

Lacunh the template and backend will be up


![image](https://github.com/DHRUV6029/MyAvatar-Live-Meeting/assets/71836462/194e752a-95b1-4f9f-859f-f857103c63ac)



