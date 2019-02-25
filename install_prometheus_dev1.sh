helm install \
--name prometheus \
stable/prometheus \
--tiller-namespace dev1 \
--kubeconfig config \
--namespace dev1 \
--set rbac.create=false

