Satellite Field Guide
=====================
Version: 2013-12-19

Executive summary
=================

### Summary

The "Satellite Field Guide" publication seeks to educate NGOs, activists, media organisations and their donors as well as and technologists who use or are considering the use of satellite technologies for their operations.

It gives access to technical knowledge in an easy to understand manner, making ample use of infographics and draws on a range of existing technological expertise and research literature. It also makes available an initial series of testing protocols in addition to their results in order to promote a better understanding of satellite technologies from a security and privacy angle and support the emergence of evidence-driven awareness raising about existing issues.

TODO:
 * Include Creative Commons license
 * Include Disclaimers for brand names and logo.
 * Facilitate the reuse of the material in presentation format.
 * Link/associate to a wiki for more expert data.

### Why this guide

This field guide was created as a resource for Human Rights defenders, Journalists and Activists,NGOs and donor organizations working with satellite technology in the field or wishing to deploy such tools.

### Why Satellite communications?

Last mile.
Can be mobile, transportable.


### Who started it

### How to use it


Satellite fundamentals
======================

TODO:
 * Key components of signal flow. Terminals, Antennas, LNB/BUC, Satellite (Orbits), Hubs. 
 * Visual with key components at "scale".
 *  Ideas for structure:
    *  Space / Ground / In Between
    *  Operators / Providers / Terminals
 * Mobile Satellite Service / Fixed Satellite Service

### Overview

Satellite equipment is basically operating on the same principles of any other radio equipment. There is equipment that only recieves and equipment that transmits and receives. Receive only equipment are mostly Television, radio and GPS-only devices. There used to be products that would use satellite for internet download and ISDN (telephone) for the upload, but these are not actively sold anymore.

### Fundamendals

#### In space

##### Orbits
There are two main types of satellites in orbit that offer commercial services. The most common satelite type is the so-calld geostationary type. These satelites are hanging above the equator at 36,000 km distance from the earth, at this height they circle the earth at the same speed the earth is moving, so from the earth they are staying in exactly the same place. These are the satellites used for television, and for any other service that requires you to point an antenna at a specific place in the sky (like BGAN). The main disadvantage of geostationary satellites is that they are so far away that for the signal to go to the satellite and back to earth takes 0.2 seconds. So the delay in anything interactive (like a phone call) is almost half a second. This is most noticable when loading web pages.

The other type are so called low orbit satellites these arelcirceling the earth at a height between only  300 and 2000 kilometer. At this height a satellite can not stay in one place, it circles the earth at high speed. The most used network of these kind of satellites is the GPS network. Another one is the Iridium phone network. Because these satellites move around you do not have to point an antenna at them, but just generally have to have a clear view of the sky when operating the device.

##### Satellite Antennas

###### Spot Beams



#### On the ground

##### Antennas
Antennas come in a lot of different forms. the 3 types most commonly seen with satellite technology (small to large: are the dipole (portable sat phones), the panel antenna either integrated in the unit (like bgan) or seperate, and most commonly seen the dish antenna. With a dish antenna the dish is actually just a reflector that bounces the radio waves coming from the satellite to a very small antenna that is in the head (sometimes called BUC or LNB) mounted on the dish. 

TODO:
 * Wider antennas means focusing the power more.

##### Antenna placement
point it at the bird and do it precise, do not forget polarization if applicable

#### In between

##### Understanding the Spectrum

Signal to Noise vs Frequency/Power/Antenna Size

##### Distance and Obstacles

TODO:
 * Water resonance (>2.4GHz), Rain fade.
 * More noise in high frequencies

##### Bandwidth and Contention

##### Applications

###### Voice

###### Data

###### TV

###### Radio

###### Positioning

### Major Technology Types

<!-- \begin{landscape} -->

|   Criteria / Tech   |   Single Channel VSAT    |      Multi Channel  VSAT       |                        GSM Derived                        |                         Low orbit                         |        *GPS*        |
| :-----------------: | :----------------------: | :----------------------------: | :-------------------------------------------------------: | :-------------------------------------------------------: | :-----------------: |
|   **Setup Costs**   |     3KEUR to 10KEUR      |        500EUR to 2KEUR         |                      1.5KEUR - 20KEUR                     |                      700EUR - 1.5KEUR                     |    *10EUR-100EUR*   |
| **Recurring Costs** | 10KEUR to 50KEUR / Month |    30EUR to 10KEUR / Month     |                                             Usage based (3 to 5EUR / MB)                                             ||       *None*       |
|   **Key Benefits**  |                          |   Flexible bandwidth options   | Broad coverage, built-in battery, portable, lower latency | Broad coverage, built-in battery, portable, lower latency |                     |
|  **Key Weaknesses** |                          |                                |                                                           |                                                           |                     |
|    **Bandwidth**    |                          |                                |                                                           |                                                           |                     |
|   **Antenna Size**  |                          |           50cm -> 2m           |                        20cm -> 50cm                       |                       Small Antenna                       |     *Very Small*    |
|      **Power**      |                          | Grid Power or External battery |                                                   Built-in battery                                                   || *Built-in battery* |
|      **Orbit**      |                                                       Geosync                                                       |||                        Low orbit                        |     *Low orbit*     |
|    **Transport**    |                          |        FDMA/TDMA (DVB)         |                          UMTS/GSM                         |                          GSM/CDMA                         |                     |
|  **Main Providers** |                          |         EutelSat / SES         |                       BGAN / Thuraya                      |                          Iridium                          |                     |
[Major Technology Types]

<!-- \end{landscape} -->

#### VSAT

#### GSM derived

#### Low Orbit

#### GPS

####  Other Technologies

### Battery

#### External Batteries

People build their own all the time. Upset converter (from Cart) 12V DC Car batter (laptop charger for car use). Most of satellite is 18V DC. (Loss 3% to 5%).

Most people make the mistake of having a DC/AC converter (because it's cheap). Double losses if DC/AC -> AC/DC. (about 30% loss). It's also not very nice for the equipment because the signal is a block wave (rather than a sine wave).

What you want is a battery that has a battery charger or battery conditioner. UPS. (Home build is car battery connected to a car battery charger [needs conditioning - will sense that its fully charged] + upset converter (cigarette + laptop) +  )




Satellite security
==================

TODO:
 - IMBE (Improved Multi-Band Excitation) voice codec

### Vulnerabilities

#### Surveillance

#### Jamming
Jamming is the practise of willingfully blocking or distorting the signal by introducing noise (another meaningless signal). Satellite Jamming is internationally condemned and forbidden, but still happens in a lot of areas. Examples are Iran ...

Jamming is the mixing of the meaningful signal of the sender with another strong signal that is meaningless, so the receiver can not make anything of the original signal. It is like someone shouting through your conversation in the real world.

This can happen at two points in the process, First it can happen at the satellite, this is called *orbital jamming*. Secondly it can happen at the receiver side, then it will be called *Terrestrial(on earth) jamming*.
It must be said that it is hard, if not impossible, for the end user to know what type of jamming is occuring, it will look the same.

Jamming is mostly used for blocking television broadcasting. There are however also instances known where satellite telephony was jammed {reference}

#### Orbital jamming
Orbital jamming works by having a rogue groundstation that points a high power beam at the satellite, the sattelite, (being a passive attenuator) passes this on to all the end users, their equipment will show no signal because of the noise.

#### Mitigations
There is nothing an end user can do to orbital jamming, it is a problem that resides with the satellite provider. As it affects all the users on the same channel they will notice quickly. Jamming is against ITU regulations, and countries will not openly acnowledge they are doing it, it is quite embarrassing, and when called out they sometimes just stop doing it.{can we back that up?} If not sometimes the provider can mitigate the problem by slightly repositioning the satellite.

### Terrestrial jamming
Terrestrial jamming happens at the receiving (end user) end. The jammer sets up a meaningless signal that distorts the original signal, but this time close to the end user. This works best in populated areas with a lot of satellite connections. Its effectiveness depends on the local circumstances, the power of the transmitters used and the placement of the satellite equipment.

#### Mitigations
Again it might be hard to mitigate this, if your antenna is easily movable If you might be in an area where terrestrial jamming occurs it can be mitigated by placing the antenna so it can 'see' the satellite but not much else of the sky, because it is blocked by surrounding buildings or walls. 


### Other Threats


Technology review
=================

<!-- \begin{landscape} -->

### Summary Table

|         Tech        |                     Single Channel VSAT                      |                              Multiple Channel VSAT                              |||                 GSM Derived                  ||                             Low orbit                             ||
|       Provider      |                  Multiple (see Chapter 2.x)                  |            SES            |          EutelSat         |           Exede           |    Inmarsat (BGAN)     |        Thuraya         |             Iridium              |            GlobalStar            |
| ------------------- | :----------------------------------------------------------: | :-----------------------: | :-----------------------: | :-----------------------: | :--------------------: | :--------------------: | :------------------------------: | :------------------------------: |
| **Key Benefits**    | Flexible bandwidth options, no contention with other users |                Flexible bandwidth options, medium recurring cost                |||  Broad coverage, built-in battery, portable  ||     Broad coverage, built-in battery, portable, lower latency     ||
| **Key Weaknesses**  |                     High recurring cost                      |                           Contention with other users                           |||     Usage-based pricing, lower bandwidth     ||  Usage-based pricing, lower bandwidth, slightly lower reliability ||
| **Coverage**        |                            Global                            |           Global          |            EMEA           |             US            |         Global         |          EMEA          |              Global              |              Global              |
| **Bandwidth**       |                          0-20+ mbps                          |                                    0-20 mbps                                    |||                   384 kbps                   ||                              2.4 kbps                             ||
| **Setup Costs**     |                            $3-10k                            |           $1-2k           |          $500-1k          |            $500           |       $1.5k-$20k       |        $1.5k-3k        |              $1.5k               |               $700               |
| **Recurring Costs** |                          $10-50k/mo                          |         $1-10k/mo         |         $1-10k/mo         |         $30-300/mo        |                                            Usage-based (3 to 5EUR / MB)                                            ||||
| **Antenna Size**    |                          50cm -> 2m                          |                           |                           |                           |      20cm - 50cm       |                        |          Small Antenna           |                                  |
| **Power**           |                     Grid Power or External battery (1w/2w - Medium rated battery - 60Ah (Transmittion time: 8 or 10 hour))                    ||||                                     Built-in battery (Transmittion time: 3h)                                    ||||
| **Orbit**           |                                                                                            Geosync                                                                                            ||||||                           Low orbit                           ||
| **Transport**       |                             FDMA                             |                                    TDMA (DVB)                                   |||                                    UMTS/GSM                                    |||              CDMA              |

<!-- \end{landscape} -->


### VSAT

#### Use cases

#### Benefits

#### Threats

#### Geography

#### Equipment

#### Antenna

#### Power

#### GPS

Annexes
=======

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

### References

#### Satellite

http://www.sia.org/first-responders-guide/

#### Digital Security

security in a box

