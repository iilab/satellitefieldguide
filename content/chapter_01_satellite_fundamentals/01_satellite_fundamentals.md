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


