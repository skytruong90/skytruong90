<div align="center">

<img src="https://raw.githubusercontent.com/skytruong90/skytruong90/main/assets/mission-header.svg" width="100%" alt="David K. Tan aerospace software engineering animated banner" />

[![Typing SVG](https://readme-typing-svg.demolab.com?font=JetBrains+Mono&size=18&duration=2400&pause=800&color=00C8FF&center=true&vCenter=true&width=900&lines=6-DOF+FLIGHT+DYNAMICS+%E2%80%A2+GNC+%E2%80%A2+MONTE+CARLO;RADAR+TRACKING+%E2%80%A2+SENSOR+FUSION+%E2%80%A2+STATE+ESTIMATION;MISSION+SOFTWARE+%E2%80%A2+TELEMETRY+%E2%80%A2+DISTRIBUTED+SYSTEMS;LINUX+%E2%80%A2+KUBERNETES+%E2%80%A2+CLOUD+%E2%80%A2+DEVSECOPS;BUILDING+SECURE%2C+TESTABLE%2C+MISSION-READY+SYSTEMS)](https://github.com/skytruong90)

![Active Clearance](https://img.shields.io/badge/Active%20Clearance-00C853?style=for-the-badge&labelColor=071018)
![AWS Certified](https://img.shields.io/badge/AWS-Certified-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white&labelColor=071018)
![PMP](https://img.shields.io/badge/PMP-Certified-00C8FF?style=for-the-badge&labelColor=071018)
![Profile Views](https://komarev.com/ghpvc/?username=skytruong90&color=00C8FF&style=for-the-badge&label=Profile+Views)
[![Portfolio](https://img.shields.io/badge/Portfolio-davidktan.com-A78BFA?style=for-the-badge&logo=googlechrome&logoColor=white&labelColor=071018)](https://davidktan.com)

</div>

<img src="https://raw.githubusercontent.com/skytruong90/skytruong90/main/assets/system-strip-v2.svg" width="100%" alt="Animated aerospace engineering system status strip" />

## About Me

I build software at the intersection of **aerospace engineering, defense modeling & simulation, distributed systems, and secure platforms**.

My projects are centered on real engineering problems: propagating vehicle states, closing guidance and control loops, estimating tracks from noisy sensors, measuring uncertainty through Monte Carlo analysis, moving telemetry across distributed systems, and validating software with repeatable tests.

<table>
<tr>
<td width="25%" valign="top">

### 🚀 Flight & GNC
6-DOF dynamics  
Guidance laws  
Autopilot logic  
Reentry analysis

</td>
<td width="25%" valign="top">

### 📡 Sensors
Radar models  
Kalman filtering  
Track association  
Sensor fusion

</td>
<td width="25%" valign="top">

### 🧪 V&V
Monte Carlo  
Fault injection  
Regression testing  
Deterministic runs

</td>
<td width="25%" valign="top">

### ☁️ Platforms
Linux & containers  
Kubernetes  
Cloud systems  
DevSecOps

</td>
</tr>
</table>

<a href="https://davidktan.com">
  <img src="https://raw.githubusercontent.com/skytruong90/skytruong90/main/assets/portfolio-flow.svg" width="100%" alt="Animated aerospace engineering portfolio flow" />
</a>

### Engineering Telemetry

<img src="https://raw.githubusercontent.com/skytruong90/skytruong90/main/assets/telemetry-console.svg" width="100%" alt="Animated aerospace engineering telemetry console" />

<img src="https://raw.githubusercontent.com/skytruong90/skytruong90/main/assets/pulse-divider.svg" width="100%" alt="Animated telemetry divider" />

## Featured Systems

<table>
<tr>
<td width="50%" valign="top">

### [Missile Flight Dynamics Simulation](https://github.com/skytruong90/Missile_Flight_Dynamics_Simulation)

![C++17](https://img.shields.io/badge/C++17-00599C?style=flat-square&logo=cplusplus&logoColor=white)
![6DOF](https://img.shields.io/badge/6DOF-Flight%20Dynamics-00C8FF?style=flat-square)
![Tests](https://img.shields.io/badge/Validation-48%20Checks-00C853?style=flat-square)

A standalone **multi-rate 6-DOF flight simulation** with quaternion attitude dynamics, guidance laws, autopilot control, seeker modeling, and deterministic Monte Carlo dispersion analysis.

- 2,000 Hz plant integration
- 500 Hz flight-control loop
- 100 Hz guidance loop
- PN, APN, and pursuit guidance
- reproducible Monte Carlo runs

[View project →](https://github.com/skytruong90/Missile_Flight_Dynamics_Simulation)

</td>
<td width="50%" valign="top">

### [SentinelTrack](https://github.com/skytruong90/sentineltrack)

![C++20](https://img.shields.io/badge/C++20-00599C?style=flat-square&logo=cplusplus&logoColor=white)
![Tracking](https://img.shields.io/badge/Radar-Multi--Sensor-FF9900?style=flat-square)
![Tests](https://img.shields.io/badge/Tests-44%20Passing-00C853?style=flat-square)

A **distributed radar and multi-sensor tracking system** that turns noisy, incomplete detections into a coherent track picture across separate networked processes.

- Extended Kalman filtering
- multi-sensor association
- UDP packet transport
- track lifecycle management
- mission visualization

[View project →](https://github.com/skytruong90/sentineltrack)

</td>
</tr>
<tr>
<td width="50%" valign="top">

### [Adversarial Resilience Testbed](https://github.com/skytruong90/Adversarial_Resilience_Testbed)

![C++17](https://img.shields.io/badge/C++17-00599C?style=flat-square&logo=cplusplus&logoColor=white)
![V&V](https://img.shields.io/badge/V%26V-Fault%20Injection-A78BFA?style=flat-square)
![Security](https://img.shields.io/badge/Security-Resilience-FF4D6D?style=flat-square)

A **defensive aerospace fault-injection testbed** that measures how a guidance loop behaves under spoofing, jamming, replay, and drift—and how detection and mitigation change the outcome.

- red/blue-team simulation workflow
- anomaly and integrity monitoring
- detection-latency metrics
- defended vs. undefended comparisons

[View project →](https://github.com/skytruong90/Adversarial_Resilience_Testbed)

</td>
<td width="50%" valign="top">

### [Atmospheric Reentry Simulator](https://github.com/skytruong90/Atmospheric-Reentry-Simulator)

![C++17](https://img.shields.io/badge/C++17-00599C?style=flat-square&logo=cplusplus&logoColor=white)
![Reentry](https://img.shields.io/badge/Model-Atmospheric%20Entry-00C8FF?style=flat-square)
![RK4](https://img.shields.io/badge/Numerics-RK4-00C853?style=flat-square)

A documented **atmospheric-entry simulator** combining a layered atmosphere, Mach-dependent drag, convective heating estimation, and fourth-order Runge–Kutta integration.

- Standard Atmosphere approximation
- Mach-dependent aerodynamics
- Sutton–Graves heating estimate
- analysis-ready trajectory CSV

[View project →](https://github.com/skytruong90/Atmospheric-Reentry-Simulator)

</td>
</tr>
</table>

<img src="https://raw.githubusercontent.com/skytruong90/skytruong90/main/assets/pulse-divider.svg" width="100%" alt="Animated telemetry divider" />

## Engineering Lab

<details>
<summary><b>Open the project rack</b></summary>
<br/>

| Project | Engineering Focus |
|---|---|
| [6-DOF Missile Simulation](https://github.com/skytruong90/6-DOF_Missile_Simulation) | Rigid-body dynamics and simulation architecture |
| [IMU Sensor Model](https://github.com/skytruong90/IMU-Sensor-Model) | Inertial measurement and sensor modeling |
| [Flight Data Recorder](https://github.com/skytruong90/Flight-Data-Recorder) | Flight telemetry capture and data workflows |
| [Mission Planning Dashboard](https://github.com/skytruong90/mission-planning-dashboard) | Mission-oriented visualization and software tooling |
| [Zero Trust Network Architecture](https://github.com/skytruong90/Zero-Trust-Network-Architecture) | Security architecture and zero-trust concepts |
| [Azure Sentinel SIEM](https://github.com/skytruong90/Azure-Sentinel-SIEM) | Cloud security monitoring and detection engineering |

</details>

## Technical Stack

<div align="center">

![C++](https://img.shields.io/badge/C++-00599C?style=for-the-badge&logo=cplusplus&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Go](https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white)
![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)
![Helm](https://img.shields.io/badge/Helm-0F1689?style=for-the-badge&logo=helm&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-844FBA?style=for-the-badge&logo=terraform&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)

</div>

### Engineering Methods

`6-DOF Dynamics` · `GNC` · `Monte Carlo` · `RK4` · `Kalman Filtering` · `Track Management` · `Sensor Modeling` · `Fault Injection` · `V&V` · `Distributed Systems` · `Telemetry` · `CI/CD`

<img src="https://raw.githubusercontent.com/skytruong90/skytruong90/main/assets/pulse-divider.svg" width="100%" alt="Animated telemetry divider" />

## Development Activity

<div align="center">

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/skytruong90/skytruong90/output/github-contribution-grid-snake-dark.svg" />
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/skytruong90/skytruong90/output/github-contribution-grid-snake.svg" />
  <img alt="Animated GitHub contribution path" src="https://raw.githubusercontent.com/skytruong90/skytruong90/output/github-contribution-grid-snake.svg" width="100%" />
</picture>

<sub>Animated contribution path generated from this profile's GitHub activity.</sub>

</div>

## Education & Credentials

| | |
|---|---|
| **M.S. Computer Science** | Georgia Institute of Technology — In Progress |
| **MBA** | Louisiana State University Shreveport |
| **B.S. Computer Science** | Valdosta State University |
| **Credentials** | Active Clearance · AWS Certified · PMP Certified |

<div align="center">

[View certification portfolio](https://tinyurl.com/3jdcfhkp)

</div>

<img src="https://raw.githubusercontent.com/skytruong90/skytruong90/main/assets/pulse-divider.svg" width="100%" alt="Animated telemetry divider" />

## Connect

<div align="center">

[![Website](https://img.shields.io/badge/davidktan.com-Visit%20Portfolio-00C8FF?style=for-the-badge&logo=googlechrome&logoColor=white&labelColor=071018)](https://davidktan.com)
[![Email](https://img.shields.io/badge/Email-Contact-00C8FF?style=for-the-badge&logo=gmail&logoColor=white&labelColor=071018)](mailto:david.k.tan2@gmail.com)
[![YouTube](https://img.shields.io/badge/YouTube-Channel-FF0000?style=for-the-badge&logo=youtube&logoColor=white&labelColor=071018)](https://tinyurl.com/p8psyuhv)
[![Credentials](https://img.shields.io/badge/Credentials-View%20All-A78BFA?style=for-the-badge&labelColor=071018)](https://tinyurl.com/3jdcfhkp)

<br/><br/>

`SECURE • TESTABLE • MISSION-READY`

</div>
