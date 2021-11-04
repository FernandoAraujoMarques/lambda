import boto3
region = 'us-east-2'
instances = ['i-0ba0a8fe60864cf2c', 'i-05633b76e006e9003', 'i-0743735efb7117fc4']
ec2 = boto3.client('ec2', region_name=region)

def handler(event, context):
    ec2.start_instances(InstanceIds=instances)
    print('starting your instances: ' + str(instances))
