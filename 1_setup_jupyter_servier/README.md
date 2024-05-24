# Code clinic 1: on setting up Jupyter servier on TRACE
#### Bo Ni, May 24, 2024 
### 0. prepraration
> - 1. For windows users, MobaXterm is recommeded for managing different termimals. You can download the free version of it [here](https://mobaxterm.mobatek.net/download.html).
> - 2. To setup MobaXterm, We create and use two kinds of sessions. One for connecting to TRACE and other for local command-line operations (you may also use the later for the first like a real linux user).

For the first one, in MobaXterm window, click the icon "Session". Then, set up a ssh seesion as shown below.
![Set up a ssh session that connects to TRACE](./Screenshot_1_ssh_session.png)
Note that, RED circles means to click it and YELLOW regions mean you need to privide inputs (checking it or typing in information). Similar rules are adopted for the remaining part.

For the second one, again click "Session". Then, set up a bash session as shown below.
![Set up a bash terminal](./Screenshot_2_bash_session.png)
At this point, two newly created sessions should be listed on the left column.
Click the first one and type in your passward for TRACE should get you onto trace.
Click the second one and you have a Linux-like terminal at your local computer.

> - 3. Now, use the 
### 1. 