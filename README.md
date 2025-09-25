# Simulink_Prj

## Controllo di un Aeromobile (MATLAB/Simulink)

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
