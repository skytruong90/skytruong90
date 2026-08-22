<div align="center">

<img src="https://raw.githubusercontent.com/skytruong90/skytruong90/main/assets/mission-header-v2.svg" width="100%" alt="David K. Tan aerospace and defense software engineering portfolio" />

[![Typing SVG](https://readme-typing-svg.demolab.com?font=JetBrains+Mono&size=18&duration=2400&pause=800&color=00C8FF&center=true&vCenter=true&width=900&lines=6-DOF+FLIGHT+DYNAMICS+%E2%80%A2+GNC+%E2%80%A2+MONTE+CARLO;RADAR+TRACKING+%E2%80%A2+SENSOR+FUSION+%E2%80%A2+STATE+ESTIMATION;MISSION+SOFTWARE+%E2%80%A2+TELEMETRY+%E2%80%A2+DISTRIBUTED+SYSTEMS;LINUX+%E2%80%A2+KUBERNETES+%E2%80%A2+CLOUD+%E2%80%A2+DEVSECOPS;BUILDING+SECURE%2C+TESTABLE%2C+MISSION-READY+SYSTEMS)](https://github.com/skytruong90)

![Active Clearance](https://img.shields.io/badge/Active%20Clearance-00C853?style=for-the-badge&labelColor=071018)
![AWS Certified](https://img.shields.io/badge/AWS-Certified-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white&labelColor=071018)
![PMP](https://img.shields.io/badge/PMP-Certified-00C8FF?style=for-the-badge&labelColor=071018)
[![Portfolio](https://img.shields.io/badge/Portfolio-davidktan.com-9B8CFF?style=for-the-badge&logo=googlechrome&logoColor=white&labelColor=071018)](https://davidktan.com)
![Profile Views](https://komarev.com/ghpvc/?username=skytruong90&color=00C8FF&style=for-the-badge&label=Profile+Views)

</div>

<img src="https://raw.githubusercontent.com/skytruong90/skytruong90/main/assets/system-strip-v3.svg" width="100%" alt="Animated aerospace engineering focus strip" />

## Summary

I design and build software for **aerospace and defense modeling & simulation, mission systems, and secure compute environments**. My work spans physics-based flight dynamics, guidance and control, multi-sensor tracking, Monte Carlo verification, telemetry, distributed software, and cloud-native infrastructure.

The common thread is engineering rigor: **clear assumptions, reproducible results, automated validation, modular architecture, and systems-level thinking**.

> Public portfolio note: simulation parameters in these repositories are notional or based on public references and are intended for engineering demonstration, education, and software-development practice.

<table>
<tr>
<td width="25%" valign="top">

### 🚀 Flight & GNC
6-DOF dynamics  
Guidance laws  
Autopilot design  
Reentry analysis

</td>
<td width="25%" valign="top">

### 📡 Sensors & Tracking
Radar models  
Kalman filtering  
Track association  
Sensor fusion

</td>
<td width="25%" valign="top">

### 🧪 Verification & Validation
Monte Carlo analysis  
Fault injection  
Regression testing  
Deterministic runs

</td>
<td width="25%" valign="top">

### ☁️ Mission Platforms
Linux & containers  
Kubernetes  
Cloud systems  
DevSecOps

</td>
</tr>
</table>

<a href="https://davidktan.com">
  <img src="https://raw.githubusercontent.com/skytruong90/skytruong90/main/assets/portfolio-flow-v3.svg" width="100%" alt="Animated aerospace engineering portfolio flow" />
</a>

<img src="https://raw.githubusercontent.com/skytruong90/skytruong90/main/assets/pulse-divider.svg" width="100%" alt="Animated telemetry divider" />

## Projects

<table>
<tr>
<td width="50%" valign="top">

### 🚀 [Missile Flight Dynamics Simulation](https://github.com/skytruong90/Missile_Flight_Dynamics_Simulation)

![C++17](https://img.shields.io/badge/C++17-00599C?style=flat-square&logo=cplusplus&logoColor=white)
![6DOF](https://img.shields.io/badge/6DOF-Flight%20Dynamics-00C8FF?style=flat-square)
![Validation](https://img.shields.io/badge/Validation-48%20Checks-00C853?style=flat-square)

A **multi-rate C++17 6-DOF flight simulation** that connects rigid-body dynamics, quaternion attitude propagation, seeker measurements, guidance laws, autopilot control, and deterministic Monte Carlo analysis in one end-to-end model.

- 2,000 Hz plant integration
- 500 Hz flight-control loop
- 100 Hz guidance loop
- PN, APN, and pursuit guidance
- reproducible Monte Carlo execution

[Explore the system →](https://github.com/skytruong90/Missile_Flight_Dynamics_Simulation)

</td>
<td width="50%" valign="top">

### 📡 [SentinelTrack](https://github.com/skytruong90/sentineltrack)

![C++20](https://img.shields.io/badge/C++20-00599C?style=flat-square&logo=cplusplus&logoColor=white)
![Tracking](https://img.shields.io/badge/Multi--Sensor-Tracking-9B8CFF?style=flat-square)
![Tests](https://img.shields.io/badge/Tests-44%20Passing-00C853?style=flat-square)

A **distributed radar and multi-sensor tracking system** that converts noisy, incomplete detections into a coherent track picture across separate networked processes.

- Extended Kalman filtering
- multi-sensor association
- UDP packet transport
- track lifecycle management
- mission visualization

[Explore the system →](https://github.com/skytruong90/sentineltrack)

</td>
</tr>
<tr>
<td width="50%" valign="top">

### 🛡️ [Adversarial Resilience Testbed](https://github.com/skytruong90/Adversarial_Resilience_Testbed)

![C++17](https://img.shields.io/badge/C++17-00599C?style=flat-square&logo=cplusplus&logoColor=white)
![V&V](https://img.shields.io/badge/V%26V-Fault%20Injection-00FFB2?style=flat-square)
![Resilience](https://img.shields.io/badge/Resilience-Red%20%2F%20Blue-9B8CFF?style=flat-square)

A **defensive fault-injection and resilience testbed** that measures how guidance behavior changes under spoofing, jamming, replay, and drift—and how anomaly detection and mitigation affect the result.

- red-team / blue-team simulation workflow
- detection-latency and false-alarm metrics
- defended vs. undefended comparisons
- measurable engineering outcomes instead of qualitative claims

[Explore the system →](https://github.com/skytruong90/Adversarial_Resilience_Testbed)

</td>
<td width="50%" valign="top">

### 🌍 [Atmospheric Reentry Simulator](https://github.com/skytruong90/Atmospheric-Reentry-Simulator)

![C++17](https://img.shields.io/badge/C++17-00599C?style=flat-square&logo=cplusplus&logoColor=white)
![Reentry](https://img.shields.io/badge/Atmospheric-Entry-00C8FF?style=flat-square)
![RK4](https://img.shields.io/badge/Numerics-RK4-FFB84D?style=flat-square)

A documented **C++17 atmospheric-entry simulator** combining a layered atmosphere, Mach-dependent drag, convective heating estimation, and fourth-order Runge–Kutta integration.

- Standard Atmosphere approximation
- Mach-dependent aerodynamics
- Sutton–Graves heating estimate
- analysis-ready trajectory output

[Explore the system →](https://github.com/skytruong90/Atmospheric-Reentry-Simulator)

</td>
</tr>
</table>

### Points

<img src="https://raw.githubusercontent.com/skytruong90/skytruong90/main/assets/proof-points.svg" width="100%" alt="Animated engineering proof points" />

<sub>Representative public-project metrics: 48 automated validation checks in the 6-DOF simulation, 44 tracking tests in SentinelTrack, a documented 2,000-case Monte Carlo run, and four modeled fault classes in the resilience testbed.</sub>

### Systems View

<img src="https://raw.githubusercontent.com/skytruong90/skytruong90/main/assets/telemetry-console-v2.svg" width="100%" alt="Animated aerospace engineering systems view" />

<img src="https://raw.githubusercontent.com/skytruong90/skytruong90/main/assets/pulse-divider.svg" width="100%" alt="Animated telemetry divider" />

## Lab

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

![C++](https://img.shields.io/badge/C++-00599C?style=flat-square&logo=cplusplus&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![Go](https://img.shields.io/badge/Go-00ADD8?style=flat-square&logo=go&logoColor=white)
![Java](https://img.shields.io/badge/Java-ED8B00?style=flat-square&logo=openjdk&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=flat-square&logo=linux&logoColor=black)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=flat-square&logo=kubernetes&logoColor=white)
![Helm](https://img.shields.io/badge/Helm-0F1689?style=flat-square&logo=helm&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=flat-square&logo=git&logoColor=white)

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

<sub>Animated contribution path generated from this GitHub profile.</sub>

</div>

## Education & Credentials

| | |
|---|---|
| **M.S. Computer Science** | Georgia Institute of Technology — In Progress |
| **MBA** | Louisiana State University Shreveport |
| **B.S. Computer Science** | Valdosta State University |
| **Credentials** | Active Clearance · AWS Certified · PMP Certified |

<div align="center">

[![Credentials](https://img.shields.io/badge/Certification%20Portfolio-View%20Credentials-9B8CFF?style=for-the-badge&labelColor=071018)](https://tinyurl.com/3jdcfhkp)

</div>

<img src="https://raw.githubusercontent.com/skytruong90/skytruong90/main/assets/pulse-divider.svg" width="100%" alt="Animated telemetry divider" />

## Connect

<div align="center">

[![Website](https://img.shields.io/badge/davidktan.com-Visit%20Portfolio-00C8FF?style=for-the-badge&logo=googlechrome&logoColor=white&labelColor=071018)](https://davidktan.com)
[![Email](https://img.shields.io/badge/Email-Contact-00FFB2?style=for-the-badge&logo=gmail&logoColor=white&labelColor=071018)](mailto:david.k.tan2@gmail.com)
[![YouTube](https://img.shields.io/badge/YouTube-Channel-FF4D6D?style=for-the-badge&logo=youtube&logoColor=white&labelColor=071018)](https://tinyurl.com/p8psyuhv)
[![Credentials](https://img.shields.io/badge/Credentials-View%20All-9B8CFF?style=for-the-badge&labelColor=071018)](https://tinyurl.com/3jdcfhkp)

<br/>

`SECURE • TESTABLE • MISSION-READY`

</div>
