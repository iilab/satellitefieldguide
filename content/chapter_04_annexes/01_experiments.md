### Annexes

#### Experiments

##### Setup

 * We used a standard laptop with USB3.0 ports and 4gb of RAM to conduct these experiments. 
 * A passive L-Band antenna from Cobham was used to receive signals from Thuraya and Inmarsat. 
 * The signals were relayed into an Ettus USRP B200 board for capture and analysis. 
 * Gnuradio 3.6.5.1 and UHD 003.006.002-64-g92b0b7a were used to program the radio and capture data from the signals. 
 * OsmocomGMR (from git commit 255a32a3) software was used to capture raw packets from Thuraya and Inmarsat and put them into a form readable by Wireshark.

##### Recording raw IQ Data

The hardware and software we have are capable of recording the raw data input from the antenna. 