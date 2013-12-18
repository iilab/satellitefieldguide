Satellite Field Guide
=====================
Version: 2013-12-18

Ucontent/executiveU summary
===========================

# Executive Summary

The "Satellite Field Guide" publication seeks to educate NGOs, activists, media organisations and their donors as well as and technologists who use or are considering the use of satellite technologies for their operations.

It gives access to technical knowledge in an easy to understand manner, making ample use of infographics and draws on a range of existing technological expertise and research literature. It also makes available an initial series of testing protocols in addition to their results in order to promote a better understanding of satellite technologies from a security and privacy angle and support the emergence of evidence-driven awareness raising about existing issues.

### Summary

This field guide was created as a resource for Human Rights defenders, Journalists and Activists,NGOs and donor organizations working with satellite technology in the field or wishing to deploy such tools.

### Why this guide

### Who started it

### How to use it


Ucontent/satelliteU fundamentals
================================

### Fundamendals

#### Overview

Satellite equipment is basically operating on the same principles of any other radio equipment. There is equipment that only recieves and equipment that transmits and receives. Receive only equipment are mostly Television, radio and GPS-only devices. There used to be products that would use satellite for internet download and ISDN (telephone) for the upload, but these are not actively sold anymore.


Key components of signal flow. Terminals, Antennas, LNB/BUC, Satellite (Orbits), Hubs. 

Visual with key components at "scale".

##### types of satellites

There are two main types of satellites in orbit that offer commercial services. The most common satelite type is the so-calld geostationary type. These satelites are hanging above the equator at 36,000 km distance from the earth, at this height they circle the earth at the same speed the earth is moving, so from the earth they are staying in exactly the same place. These are the satellites used for television, and for any other service that requires you to point an antenna at a specific place in the sky (like BGAN). The main disadvantage of geostationary satellites is that they are so far away that for the signal to go to the satellite and back to earth takes 0.2 seconds. So the delay in anything interactive (like a phone call) is almost half a second. This is most noticable when loading web pages.

The other type are so called low orbit satellites these arelcirceling the earth at a height between only  300 and 2000 kilometer. At this height a satellite can not stay in one place, it circles the earth at high speed. The most used network of these kind of satellites is the GPS network. Another one is the Iridium phone network. Because these satellites move around you do not have to point an antenna at them, but just generally have to have a clear view of the sky when operating the device.


##### Antennas
Antennas come in a lot of different forms. the 3 types most commonly seen with satellite technology (smal to large: are the dipole (portable sat phones), the panel antenna either integrated in the unit (like bgan) or seperate, and most commonly seen the dish antenna. With a dish antenna the dish is actually just a reflector that bounces the radio waves coming from the satellite to a very small antenna that is in the head (sometimes called BUC or LNB) mounted on the dish. 


##### Antenna placement
point it at the bird and do it precise, do not forget polarization if applicable

#### Signal

Signal to Noise vs Frequency/Power/Antenna Size

Bandwidth

* Orbits
* Spectrum basics
* Advanced considerations
	* Spot beams

#### Voice

#### Data

#### TV

#### Radio

#### Positioning

### Key Technologies

<!-- \begin{landscape} -->

Criteria \ Tech         |     VSAT       |   GSM Derived  |    Low orbit   |     *GPS*
------------------------|:--------------:|:--------------:|:--------------:|:--------------:
**Key Benefits**      | | | | |
**Key Weaknesses**    | | | | | 
**Setup Costs**       | | | |  Low
**Recurring Costs**   | | | |  None/Low
**Bandwidth**         | | | | |
**Antenna Size**      | 50cm -> 2m     | 20cm -> 50cm   | Small Antenna  | *Very Small*   
**Power Consumption** | 1w -> 2w       | 1w -> 2w       | | |  
**Orbit**             | Geosync        | Geosync        | Low orbit      | *Low orbit*    
**Transport**         | FDMA/TDMA (DVB)| UMTS/GSM       | GSM/CDMA       | |                
**Providers**         | EutelSat / SES | BGAN / Thuraya | Iridium        | |                
[Major Technology Types]

<!-- \end{landscape} -->

#### VSAT

#### GSM derived

#### Low Orbit

#### GPS

####  Other Technologies




Ucontent/satelliteU security
============================

### Vulnerabilities

### Surveillance

### Jamming
Jamming is the practise of willingfully blocking or distorting the signal by introducing noise (another meaningless signal). Satellite Jamming is internationally condemned and forbidden, but still happens in a lot of areas. Examples are Iran ...

Jamming is the mixing of the meaningful signal of the sender with another strong signal that is meaningless, so the receiver can not make anything of the original signal. It is like someone shouting through your conversation in the real world.

This can happen at two points in the process, First it can happen at the satellite, this is called *orbital jamming*. Secondly it can happen at the receiver side, then it will be called *Terrestrial(on earth) jamming*.
It must be said that it is hard, if not impossible, for the end user to know what type of jamming is occuring, it will look the same.

Jamming is mostly used for blocking television broadcasting. There are however also instances known where satellite telephony was jammed {reference}

### Orbital jamming
Orbital jamming works by having a rogue groundstation that points a high power beam at the satellite, the sattelite, (being a passive attenuator) passes this on to all the end users, their equipment will show no signal because of the noise.

#### Mitigations
There is nothing an end user can do to orbital jamming, it is a problem that resides with the satellite provider. As it affects all the users on the same channel they will notice quickly. Jamming is against ITU regulations, and countries will not openly acnowledge they are doing it, it is quite embarrassing, and when called out they sometimes just stop doing it.{can we back that up?} If not sometimes the provider can mitigate the problem by slightly repositioning the satellite.


### Terrestrial jamming
Terrestrial jamming happens at the receiving (end user) end. The jammer sets up a meaningless signal that distorts the original signal, but this time close to the end user. This works best in populated areas with a lot of satellite connections. Its effectiveness depends on the local circumstances, the power of the transmitters used and the placement of the satellite equipment.


#### Mitigations
Again it might be hard to mitigate this, if your antenna is easily movable If you might be in an area where terrestrial jamming occurs it can be mitigated by placing the antenna so it can 'see' the satellite but not much else of the sky, because it is blocked by surrounding buildings or walls. 


### Other Threats


Ucontent/technologyU review
===========================

<!-- \begin{landscape} -->

### Summary Table

|   Tech   | VSAT - SCPC | VSAT MCPC |          |       |   GSM Derived   |         | Low orbit |            |
|----------|-------------|-----------|----------|-------|-----------------|---------|-----------|------------|
| Provider | ?           | SES       | EutelSat | Exede | Inmarsat (BGAN) | Thuraya | Iridium   | GlobalStar |


| Tech                  | VSAT - SCPC                                           | VSAT MCPC                              ||| GSM Derived                          || Low orbit     ||
| Provider              | ?                                                     | SES                                    | EutelSat      | Exede         | Inmarsat (BGAN)                      | Thuraya     | Iridium       | GlobalStar  |
| --------------------- | :------------------------:                            | :-----------:                          | :-----------: | :-----------: | :-----------:                      | :-----------: | :-----------:   | :-----------: |
| **Key Benefits**      | Flexible bandwidth options                            | Flexible bandwidth options, lower cost |               |               | Works anywhere, battery, portable    |             |               |             |
| **Key Weaknesses**    | High recurring cost, zero contention with other users | Contention with other users            |               |               | Usage-based pricing, lower bandwidth |             |               |             |
| **Coverage**          | Global                                                | Global                                 | EMEA          | US            | Global                               | EMEA        | Global        | Global      |
| **Bandwidth**         | 0-20+ mbps                                            | 0-20 mbps                              | 0-20 mbps     | 0-20 mbps     | 384 kbps                             | 384 kbps    | 2.4 kbps      | 2.4 kbps    |
| **Setup Costs**       | $3-10k                                                | $1-2k                                  | $500-1k       | $500          | $1.5k-$20k                           | $1.5k-3k    | $1.5k         | $700        |
| **Recurring Costs**   | $10-50k/mo                                            | $1-10k/mo                              | $1-10k/mo     | $30-300/mo    | Usage-based                          | Usage-based | Usage-based   | Usage-based |
| **Antenna Size**      | 50cm -> 2m                                            |                                        |               |               | 20cm - 50cm                          |             | Small Antenna |             |
| **Power Consumption** | 1w -> 2w                                              |                                        |               |               |                                      |             |               |             |
| **Orbit**             | Geosync                                               | Geosync                                |               |               |                                      |             | Low orbit     |             |
| **Transport**         | FDMA                                                  | TDMA (DVB)                             | TDMA (DVB)    | TDMA (DVB)    | UMTS/GSM                             | UMTS/GSM    | UMTS/GSM      | CDMA        |

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

Ucontent/annexes
================

### Annexes

#### Experiments



