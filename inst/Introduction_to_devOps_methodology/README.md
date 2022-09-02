
<!-- README.md is generated from README.Rmd. Please edit that file -->

<br>

<p align="center" color="#64677F">
WROTE BY THE GENESENG TEAM
</p>

# Introduction to devOps methodology

<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/07/infinity.png'></a>

<p align="center" color="#64677F">
Source from Unsplash
</p>

## INTRODUCTION

<p color="#64677F">
In the early days of IT, applications were limited in size,
unsophisticated and not well integrated with each other. Engineers were
in charge of both system administration and feature development.
</p>
<p color="#64677F">
With the rise of internet and the development of more powerful
computers, computing took a brand new turn. This technological boom has
allowed, on the one hand, the emergence of more and more complex
applications, and on the other hand, the building of massive computer
parks. Engineers used to create, test and maintain their own
infrastructures. However, due to new constraints, engineering teams in
charge of development have become developers while teams responsible for
the stability of the system have become system
administrators (SysAdmin).
</p>

## PARADOXAL DILEMMA

<p color="#64677F">
There are three constraints to developing a computer application: cost,
feature qualities (or Monitoring) and time.
</p>
<p color="#64677F">
The teams in charge have antagonistic objectives. Developers bring
changes to their apps (e.g. adding new functionalities) by minimizing
costs and time to the detriment of quality. SysAdmin must control these
changes without worrying about cost and time. When problems happen
(website unavailable, crashing app …), the two teams tend to pass the
problems to each other. The administrator team blames the developers for
the quality of their code, while the developers complain about the time
to fix it.
</p>

## BIRTH OF DEVOPS

<p color="#64677F">
Born in 2008, the term DevOps is a contraction of *Dev* for developers
and *Ops* for operations. With a simple idea, the DevOps method aimed to
bring Dev and Ops teams closer together to enable better communication.
</p>
<p color="#64677F">

-   Continuous integration (CI) – Each change is systematically tested
    before being put into production.
    </p>

<p color="#64677F">

-   Continuous deployment (CD) – Automatic release to production.
    </p>

<p color="#64677F">

-   Continuous monitoring of changes.
    </p>

<p color="#64677F">
DevOps practice allows short lifecycle development and quick feedback to
automation, better quality features and production speed.
</p>

## SUCCESSFUL DEVOPS ADOPTION

### DEVOPS TOOLS

<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/devOps_tools.jpeg'></a>

<p align="center" color="#64677F">
Overview of devOps tools
</p>
<p color="#64677F">
To implement DevOps practices, it is necessary to use several tools to
cover all stages of continuous delivery process. The automation may be
done with homemade scripts, but mostly through various proprietary/open
source software. 
</p>
<p color="#64677F">
Developers tend to *PLAN* the product conception, establish new features
and define prerequisites. They *CODE* these features and push a new or
existing repository to GitHub/GitLab/Bitbucket.  Then,
developers *BUILD* and *TEST* the app to avoid critical
errors. SysAdmins automate continuous *DEPLOY*ment to the Cloud.
Applications are containerized with Docker, managed by Kubernetes during
the *OPERATE* step and *MONITOR*ed by Grafana or Prometeus. Continuous
integration (*RELEASE*) is performed with Jenkins/Gitlab CI/Travis CI.
The app is ready to use.
</p>
<p color="#64677F">
Numerous exchanges between the two teams allow the creation of new
features etc…
</p>

### DEVOPS AS A JOB

<p color="#64677F">
A few years ago, we witnessed the development of a new tech job which
creates a link between “dev” and “ops”. Like a catalyst, the DevOps
tries to accelerate app release using at the same time developer and
sysAdmin skills. This job is particularly in demand in big companies or
tech consulting firms.
</p>

## CONCLUSION

<p color="#64677F">
DevOps was designed to reduce friction between developers and system
administrators. Working on automated continuous integration, deployment
and monitoring, DevOps tends to accelerate features release with short
lifecycle and quick feedbacks. 
</p>
<p color="#64677F">
At Geneseng, we use a software development lifecycle in line with the
DevOps method.
</p>
