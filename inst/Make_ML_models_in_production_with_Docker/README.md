
<!-- README.md is generated from README.Rmd. Please edit that file -->

<br>

<p align="center" color="#64677F">
WROTE BY THE GENESENG TEAM
</p>

# Make ML models in production with Docker

<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/08/container.jpg'></a>

<p align="center" color="#64677F">
Source from Unsplash
</p>

## INTRODUCTION

<p color="#64677F">
At Geneseng, we are used to creating new features to improve our
AI-driven platform. To deploy them quickly in the cloud, we use a
technology called Docker.
</p>
<p color="#64677F">
Docker is a “container based platform” running applications in container
environment. With a simplest architecture, Docker provides a modern,
faster, flexible and reproducible way to deploy app or ML models in any
infrastructure such as computer or cloud server.
</p>

## HOW IT WORKS

### ARCHITECTURE

<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/08/virtual_machines_vs_containers.jpg'></a>

<p align="center" color="#64677F">
Virtual Machine vs Container architectures
</p>
<p color="#64677F">
Virtual Machines and Containers have similar resource isolation and
allocation benefits but work differently.
</p>
<p color="#64677F">
Virtual Machine (VM) is a virtual computer that works exactly like a
physical computer. Hardware components (RAM, hard disk, CPU, pilots …)
are emulated by a software called a hypervisor. To run, a portion of the
host computer’s resources must be allocated to the VM.
</p>
<p color="#64677F">
“Container based platform” like Docker embeds only necessary programs to
deliver app in a container. Containers embed fewer resources than VM by
emulating only the Operating System (OS: the Linux kernel). That why,
containers allow <b>FASTER</b> and <b>PORTABLE</b> deployment. Besides
to make <b>REPRODUCIBLE</b> deployment, all instructions are written in
a simple text file called Dockerfile.
</p>

### CENTRAL DOGMA

<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/08/pipeline_docker.png'></a>

<p align="center" color="#64677F">
Docker pipeline
</p>
<p color="#64677F">
The <b>Dockerfile</b> works like a cooking recipe. It gathers all
necessary instructions to build the desirable program. Docker builds a
Docker image automatically by reading the instructions from the
Dockerfile.
</p>
<p color="#64677F">
A <b>Docker image</b> is a read-only template used to create the Docker
container. It is composed of several layers packaging all the
dependencies, libraries, and code for an operational container
environment.
</p>
<p color="#64677F">
A <b>Docker container</b> is a Docker image instance running in a Docker
container.
</p>
<p color="#64677F">
An example of deployment can be found in our
<a href= "https://github.com/Geneseng/genesengBlog/inst/Make_ML_models_in_production_with_Docker/Supp">
GitHub repository </a>.
</p>

## CONCLUSION

<p color="#64677F">
Docker was designed as a modern way for app deployment. Based on
container architecture and a simple dogma, Docker used only necessary
resources to make faster, flexible, portable and reproducible deployment
than Virtual Machines.
</p>
<p color="#64677F">
Nowadays, Docker is become the cornerstone of many IT pratices like
<a href = "https://geneseng.com/introduction_to_devops_methodology/">
devOps </a> or MLOps allowing continuous integration and deployment. An
ecosystem has emerged around Docker and composed of numerous tools
including Kubernetes; a famous container orchestration system.
</p>
