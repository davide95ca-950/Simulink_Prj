# Simulink_Prj

## Controllo di un Aeromobile (MATLAB/Simulink)_ITA

### Obiettivo
Progettazione e validazione di controllori automatici per il mantenimento dell’altitudine e l’assestamento del beccheggio in un modello semplificato di aeromobile, utilizzando MATLAB e Simulink.  

### File inclusi
- `Aeromobile2E.slx`, `Aeromobile2F.slx` — modelli Simulink della dinamica dell’aeromobile  
  - **E**: sistema LTI (lineare tempo invariante)  
  - **F**: sistema non LTI  
- `controlloFDT.m` — script principale: ricava le funzioni di trasferimento dallo stato-spazio, applica i controllori e lancia le simulazioni.  
- `controlloFDTsym.m` — derivazione simbolica della funzione di trasferimento dalle matrici A, B, C, D.  
- `C_A.m` — controllore che garantisce inseguimento perfetto del riferimento a gradino.  
- `C_B1.m`, `C_B2.m` — controllori alternativi con oscillazioni entro il 10%.  

### Come usare
1. Eseguire `controlloFDT.m` su MATLAB (versioni R2022b o successive).  
2. Nell’editor, alla sezione `% 2nd controller — transfer function`, selezionare il tipo di controllore desiderato (A oppure B).  
3. Compilare il codice per popolare il workspace.  
4. Aprire il modello Simulink (`Aeromobile2E.slx` o `Aeromobile2F.slx`) in base al tipo di sistema che si vuole analizzare.  
5. Avviare la simulazione su Simulink (tasto **RUN**).  
6. Verificare i risultati tramite gli scope integrati nel modello.  

## Aircraft Control (MATLAB/Simulink)_ENG

### Objective
Design and validation of automatic controllers for altitude holding and pitch stabilization on a simplified aircraft model, using MATLAB and Simulink.  

### Included files
- `Aeromobile2E.slx`, `Aeromobile2F.slx` — Simulink models of the aircraft dynamics  
  - **E**: LTI system (linear time-invariant)  
  - **F**: non-LTI system  
- `controlloFDT.m` — main script: builds transfer functions from state-space, applies the controllers and runs the simulations.  
- `controlloFDTsym.m` — symbolic derivation of the transfer function from A, B, C, D matrices.  
- `C_A.m` — controller ensuring near-perfect step reference tracking.  
- `C_B1.m`, `C_B2.m` — controllers with oscillations within 10%.  

### How to use
1. Run `controlloFDT.m` in MATLAB (R2022b or later).  
2. In the editor, under the section `% 2nd controller — transfer function`, select the desired controller type (A or B).  
3. Compile the code to populate the workspace.  
4. Open the corresponding Simulink model (`Aeromobile2E.slx` or `Aeromobile2F.slx`) depending on the system type (LTI or non-LTI).  
5. Start the simulation in Simulink (**RUN**).  
6. Verify the results through the scopes embedded in the Simulink model.  
