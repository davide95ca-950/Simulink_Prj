![check](https://github.com/davide95ca-950/Simulink_Prj/actions/workflows/check.yml/badge.svg)

# Simulink_Prj

## Aircraft Control (MATLAB/Simulink)_ENG

### Objective
Design and validation of automatic controllers for altitude holding and pitch stabilization on a simplified aircraft model, using MATLAB and Simulink.  

### Included files


- `src/` — Simulink models and MATLAB scripts:
  - `Aeromobile2E.slx`, `Aeromobile2F.slx` — aircraft dynamics models  
    - **E**: LTI system (linear time-invariant)  
    - **F**: non-LTI system  
  - `controlloFDT.m` — builds transfer functions from state-space, applies controllers, runs simulations.  
  - `controlloFDTsym.m` — symbolic derivation of transfer functions from A, B, C, D matrices.  
  - `C_A.mat` — controller ensuring near-perfect step reference tracking.  
  - `C_B1.mat`, `C_B2.mat` — controllers with oscillations within 10%.  
  - `Ci.mat` and other `.mat` files — workspace data and simulation parameters.  
  - `MatlabFunction2F.txt` — supporting function for non-LTI simulation.  

- `docs/artifacts/` — archived project data (`.rar`).  
- `docs/screenshots/` — exported images showing Simulink schematics, scopes and  results.  

### How to use
1. Run `controlloFDT.m` in MATLAB (R2022b or later).  
2. In the editor, under the section `% 2nd controller — transfer function`, select the desired controller type (A or B).  
3. Compile the code to populate the workspace.  
4. Open the corresponding Simulink model (`Aeromobile2E.slx` or `Aeromobile2F.slx`) depending on the system type (LTI or non-LTI).  
5. Start the simulation in Simulink (**RUN**).  
6. Verify the results through the scopes embedded in the Simulink model.  
