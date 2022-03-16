# Getting Started with Cloud Shell

In this section, you'll learn about Cloud Shell, how to navigate its UI and use its features, as well as understand the configuraton options and different ways to use to help you boost your productivity.

## Launching Cloud Shell

First, go to `console.cloud.google.com` and if not already logged in in the GCP console, enter your Google credentials. You'll be presented with the Google Cloud Platform's Console main UI:

![GCP Main Console](./img/GCP_Console.png)

 If you go to the upper right corner, you'll find a button to activate Cloud Shell:

![Activate Cloud Shell](./img/Activate_Cloud_Shell.png)

Click it and Cloud Shell will open, revealing a new pane right under the GCP Console UI:

![Cloud Shell panel](./img/GCP_Main_Console_with_Cloud_Shell.png)

In this pane, you have a fully functional Cloud Shell based on an ephemeral GCE machine that's always available for you to use. Your `$HOME` directory is persistent, so you won't lose any information that you leave under it even if the Cloud Shell machine times out and shuts down. That means if you enable Cloud Shell again, your `$HOME` directory and any customization you may have done to it will be there.

## Understanding Cloud Shell options

Let's first understad the Cloud Shell toolbar

!

### 1. Maximizing/resizing Cloud Shell

The button marked with one in the previous image will allow you to maximize Cloud Shell to occupy all your browser's tab real state.  

### Tmux integration

### Cloud Shell editor

Open a shell from Cloud Code Editor by going to the editor menu to **Terminal > New Terminal**

# Using Cloud Code

Cloud Code is integrated in the Cloud Shell Editor through the following four buttons exposed in the left pane of the editor:

![Cloud Code](./img/Cloud_Shell_Editor-Cloud_Code.png)

The first three icons are respectively Cloud Run, GCP APIs and Cloud Secret Manager. These allow easy access and configuration to these GCP services straight from the Cloud Shell Editor.

In this lab, we'll be focusing in the fourth icon, **Kubernetes Clusters**. Go ahead and click the icon ![Kubernetes Clusters](./img/Kubernetes_Clusters_Icon.png). You should see a new pane opened called **CLOUD CODE - KUBERNETES: CLUSTERS**.

Let's use Cloud Code to create a new Kubernetes Cluster in GCP. Click on the "+" button next to "CLOUD CODE - KUBERNETES: CLUSTERS" and select **Google Kubernetes Engine** (note that you could also choose other options like Minikube):

![New Cluster](./img/Cloud_Code_Create_Cluster.png)
 
 Then, click on **+ Create a New GKE Cluster**. This option will load a new pane were you can enter additional information to quickly create a Development Cluster.

 - STEP 01: Choose Autopilot
 - STEP 02: Select you region (europe-west-1)
 - STEP 03: Give your cluster the name "dev"

 Finally, click on the "Create Cluster" button. This will create a new Autopilot cluster.

 This process will take some time. While the cluster is in the process of creation, let's go ahead and explore a bit more of the Cloud Code Kubernetes Pane.

 Remember that we created a Minikube cluster in the previous sections. This cluster should appear now in the Cloud Code Kubernetes pane with the name we gave it, **local**:

![Local minikube](./img/Cloud_Code_Local_Minikube.png)

What you see in the previous screenshot are two things:

- **The default KubeConfig file**: Cloud Code read the `.kubeconfig` file for you user and uses it to connect to the Kubernetes Clusters configured there so you can easily navigate them. You can edit the Kubeconfig file clicking the square with the outgoing arrow next to it if you want.
- **A browsable renderization of the different objects of your registered clusters**: in this case, we can see the *local* Minikube cluster that you created before, with its Contexts, Namespaces and Nodes. Go ahead and expand some of the nodes of the tree. There shouldn't be any pods yet as we haven't deployed any application.

