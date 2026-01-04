1. Install Docker, Kubectl and eksctl
2. Create cluster by eksctl using spot instance for practice spot having 70% discount
    command: eksctl create cluster -config-file=example.yaml

3. create namespace to avoid colloid with other project files
    kubectl create namespace example_name
4. create pod
    - write .yaml file for pod
        kubectl apply -f pod.yaml
