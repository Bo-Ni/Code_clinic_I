# Code clinic 1: on setting up Jupyter server on TRACE
#### Bo Ni, May 24, 2024 
#### boni.mechanics@gmail.com

## 1. Preparation
For Windows users, MobaXterm is recommeded for managing termimals. You can download the free version of it [here](https://mobaxterm.mobatek.net/download.html).

To setup MobaXterm, We create and use two kinds of sessions. One for connecting to TRACE and other for local command-line operations (you may also use the later for the first like a real linux user).

For the first one, in MobaXterm window, click the icon "Session". Then, set up a ssh seesion as shown below.
![Set up a ssh session that connects to TRACE](./resource/Screenshot_1_ssh_session.png)
Note that, RED circles mean to click it and YELLOW regions mean you need to privide inputs (checking it or typing in information). Similar rules are adopted for the remaining part.

For the second one, again click "Session". Then, set up a bash session as shown below.
![Set up a bash terminal](./resource/Screenshot_2_bash_session.png)
At this point, two newly created sessions should be listed on the left column.
Click the first one and type in your passward for TRACE should get you onto the cluster.
Click the second one and you have a Linux-like terminal at your local computer.

## 2. Set up the Jupyter server on TRACE
Here, we run the jupyter server as a slurm job. To do so, you may upload the job file, "sbatch_JupyterLab_Server.sh", in this folder onto TRACE. To start the server, just submit this .sh file like

```bash
$ sbatch sbatch_JupyterLab_Server.sh
```

Taking a look inside and you may find the following is done via it.
> 1. Locate some computing resources, hardware (free to change or adjust) and software (anaconda3/2023.03-1). 
> 2. Start a Jupyter Lab server and produce a log file with some USEFUL tips for the next step.

Once the job is running, check the generated log file (named like jobXXXXX_cout_gpu.txt) on TRACE.

If everything runs, you should find tips about the next step (between two lines of pluses). For example, like the following.

```bash
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Do the following on your local bash terminal: 

ssh -N -f -L localhost:8893:traceXX:8890 USER@trace.cmu.edu

ps aux | grep ssh

Now, in your LOCAL browser, visit the following.

http://127.0.0.1:8893/lab?token=aaaaaaaaaaaaaaaaaabbbbbbbbbccccccccdddddddddddde

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
```

Note that, depending on which node you get and which account you use, "TraceXX" and "USER" in the second line will look different in your file.

## 3. Connect to Jupyter lab
On the local linux-like bash terminal, we connect to the computing node and operate JupterLab via local browser.
To do so, just follow the tips you read in the log file above.

That's it. More (on seting up your own virtual enviroments and managing your code via git) to come next time.


