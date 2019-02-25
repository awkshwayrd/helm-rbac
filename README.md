Example followed from https://medium.com/@elijudah/configuring-minimal-rbac-permissions-for-helm-and-tiller-e7d792511d10
Forked from https://github.com/devzx/helm-rbac

Sets up access control rules on Helm and Tiller

kubectl create -f namespaces.yaml
kubectl create -f tiller-sa.yaml
kubectl create -f helm-sa.yaml
kubectl create -f tiller-roles.yaml
kubectl create -f tiller-rolebindings.yaml
kubectl get roles.rbac.authorization.k8s.io,rolebindings.rbac.authorization.k8s.io -n dev1
kubectl get roles.rbac.authorization.k8s.io,rolebindings.rbac.authorization.k8s.io -n dev2
kubectl create -f helm-clusterrole.yaml
kubectl create -f helm-clusterrolebinding.yaml

run deploy_tiller.sh
run generate_kubeconfig.sh
run install_prometheus_dev1.sh
run install_grafana_dev2.sh

