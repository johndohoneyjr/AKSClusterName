# Query CRD WITHIN Cluster

from kubernetes import client, config

# Load the kube config
config.load_incluster_config()

# Create a CustomObjectsApi instance
api = client.CustomObjectsApi()

# Define the group, version, and plural
group = 'example.com'  # Replace with your group
version = 'v1'  # Replace with your version
plural = 'clusters'  # Replace with your plural

# Get the custom resource
resource = api.list_cluster_custom_object(group=group, version=version, plural=plural)

# Iterate over the items and print the cluster names
for item in resource['items']:
    print(item['spec']['name'])
