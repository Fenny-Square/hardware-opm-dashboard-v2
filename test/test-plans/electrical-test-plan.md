# Electrical Test Plan

## Document Information
- **Version:** 1.0
- **Date:** March 2024
- **Author:** Hardware Test Team
- **Status:** Draft

## 1. Overview

This document defines the electrical testing requirements and procedures for the hardware product.

## 2. Test Objectives

- Verify electrical specifications meet design requirements
- Validate power consumption across operating modes
- Ensure signal integrity and timing requirements
- Verify protection circuits function correctly
- Validate compliance with electrical safety standards

## 3. Test Equipment Required

| Equipment | Model | Calibration Due |
|-----------|-------|-----------------|
| Digital Multimeter | Keysight 34461A | 2024-06-01 |
| Oscilloscope | Tektronix MSO64 | 2024-05-15 |
| Power Supply | Keysight E36312A | 2024-07-01 |
| Electronic Load | BK Precision 8500 | 2024-06-20 |
| Signal Generator | Keysight 33500B | 2024-08-01 |
| Logic Analyzer | Saleae Logic Pro 16 | N/A |

## 4. Test Environment

- **Temperature:** 23°C ± 2°C
- **Humidity:** 45% ± 10% RH
- **Power:** Clean AC mains, isolated ground

## 5. Test Procedures

### 5.1 Power Supply Tests

#### 5.1.1 Input Voltage Range Test

**Objective:** Verify device operates across specified input voltage range

**Procedure:**
1. Connect device to variable power supply
2. Set load to typical operating conditions
3. Sweep input voltage from 4.5V to 5.5V in 0.1V steps
4. Monitor output voltages and device operation
5. Record any anomalies

**Pass Criteria:**
- Device operates normally across full voltage range
- All output voltages within ±5% of nominal
- No unexpected resets or errors

**Results:**
- [ ] Pass
- [ ] Fail
- [ ] Not Tested

---

#### 5.1.2 Power Consumption Test

**Objective:** Measure power consumption in various operating modes

**Procedure:**
1. Connect ammeter in series with power supply
2. Configure device in each operating mode:
   - Active mode
   - Idle mode
   - Sleep mode
3. Measure current for 60 seconds in each mode
4. Calculate average, min, max values

**Pass Criteria:**
- Active mode: ≤ 150 mA
- Idle mode: ≤ 50 mA
- Sleep mode: ≤ 20 μA

**Results:**
| Mode | Current (mA) | Status |
|------|--------------|--------|
| Active | | |
| Idle | | |
| Sleep | | |

---

#### 5.1.3 Power-On Reset Test

**Objective:** Verify proper power-on reset behavior

**Procedure:**
1. Power off device completely
2. Connect oscilloscope to reset pin and power rail
3. Apply power and capture waveforms
4. Measure reset assertion time and power rail rise time
5. Verify device boots correctly

**Pass Criteria:**
- Reset asserted until power rail stable
- Clean power rail rise (no excessive ripple)
- Device boots within 2 seconds

**Results:**
- [ ] Pass
- [ ] Fail
- [ ] Not Tested

---

### 5.2 Signal Integrity Tests

#### 5.2.1 Clock Signal Quality

**Objective:** Verify clock signal meets timing and quality requirements

**Procedure:**
1. Connect oscilloscope to clock output
2. Capture 1000 clock cycles
3. Measure:
   - Frequency
   - Duty cycle
   - Rise/fall times
   - Jitter
   - Overshoot/undershoot

**Pass Criteria:**
- Frequency: 48 MHz ± 0.1%
- Duty cycle: 50% ± 5%
- Rise/fall time: < 5 ns
- Jitter: < 100 ps RMS
- Overshoot/undershoot: < 10%

**Results:**
| Parameter | Measured | Spec | Status |
|-----------|----------|------|--------|
| Frequency | | 48 MHz ± 0.1% | |
| Duty Cycle | | 50% ± 5% | |
| Rise Time | | < 5 ns | |
| Jitter | | < 100 ps | |

---

#### 5.2.2 USB Signal Quality

**Objective:** Verify USB signals meet USB 2.0 specifications

**Procedure:**
1. Connect USB analyzer or oscilloscope to D+/D- lines
2. Initiate USB communication
3. Capture and analyze:
   - Differential voltage levels
   - Eye diagram
   - Signal integrity

**Pass Criteria:**
- Meets USB 2.0 electrical specifications
- Clean eye diagram with adequate margin
- No signal integrity issues

**Results:**
- [ ] Pass
- [ ] Fail
- [ ] Not Tested

---

### 5.3 Protection Circuit Tests

#### 5.3.1 Overvoltage Protection

**Objective:** Verify device protected against overvoltage conditions

**Procedure:**
1. Connect device to variable power supply
2. Slowly increase voltage beyond maximum rating
3. Monitor device for damage
4. Verify protection circuit activates

**Pass Criteria:**
- Protection activates at 6.0V ± 0.2V
- No damage to device
- Device recovers when voltage returns to normal

**⚠️ WARNING:** This is a destructive test. Use sacrificial unit.

**Results:**
- [ ] Pass
- [ ] Fail
- [ ] Not Tested

---

#### 5.3.2 Reverse Polarity Protection

**Objective:** Verify device protected against reverse polarity

**Procedure:**
1. Connect device with reverse polarity
2. Apply rated voltage
3. Monitor for damage or current flow
4. Reconnect with correct polarity and verify operation

**Pass Criteria:**
- No current flow with reverse polarity
- No damage to device
- Device operates normally after correct connection

**Results:**
- [ ] Pass
- [ ] Fail
- [ ] Not Tested

---

### 5.4 Thermal Tests

#### 5.4.1 Component Temperature Measurement

**Objective:** Verify component temperatures within safe limits

**Procedure:**
1. Operate device at maximum load
2. Allow to reach thermal equilibrium (30 minutes)
3. Measure temperature of key components using thermal camera
4. Record temperatures

**Pass Criteria:**
- All components < 85°C at 25°C ambient
- No components exceed absolute maximum ratings

**Results:**
| Component | Temperature (°C) | Max Rating (°C) | Status |
|-----------|------------------|-----------------|--------|
| MCU | | 125 | |
| PMIC | | 125 | |
| USB Controller | | 125 | |

---

## 6. Test Results Summary

| Test Section | Total Tests | Passed | Failed | Not Tested |
|--------------|-------------|--------|--------|------------|
| Power Supply | 3 | | | |
| Signal Integrity | 2 | | | |
| Protection Circuits | 2 | | | |
| Thermal | 1 | | | |
| **TOTAL** | **8** | **0** | **0** | **0** |

## 7. Issues Found

| Issue # | Description | Severity | Status |
|---------|-------------|----------|--------|
| | | | |

## 8. Recommendations

- [ ] Recommendation 1
- [ ] Recommendation 2
- [ ] Recommendation 3

## 9. Approvals

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Test Engineer | | | |
| Hardware Lead | | | |
| Program Manager | | | |

## 10. Revision History

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2024-03-01 | Test Team | Initial release |
