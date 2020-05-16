# WGIF Himawari 8
Command line utility to get [Himawari 8](https://himawari8.nict.go.jp/) Satellite animations written in bash.

![Example Output](example/wgif.gif)

## Usage Guide
```
wgif <area> <band=snd> <frames=10> <fileName=wgif.gif>
Avaiable Area Codes
	fd_  Full Disk                     aus  Australia
	ca1  Central Asia                  nzl  New Zealand
	pi1  Pacific Islands 1             pi2  Pacific Islands 2
	pi3  Pacific Islands 3             pi4  Pacific Islands 4
	pi5  Pacific Islands 5             pi6  Pacific Islands 6
	pi7  Pacific Islands 7             pi8  Pacific Islands 8
	pi9  Pacific Islands 9             pia  Pacific Islands 10
	se1  Southeast Asia 1              se2  Southeast Asia 2
	se3  Southeast Asia 3              se4  South Asia
	ha1  Hi-res Asia 1                 ha2  Hi-res Asia 2
	ha3  Hi-res Asia 3                 ha4  Hi-res Asia 4
	ha5  Hi-res Asia 5                 ha6  Hi-res Asia 6
	hp1  Hi-res Pacific Islands 1      hp2  Hi-res Pacific Islands 2
	hp3  Hi-res Pacific Islands 3      jpn  Japan area
Avaiable Bands
	b13  B13 (Infrared)                b03  B03 (Visible)
	b08  B08 (Water Vapor)             b07  B07 (Short Wave Infrared)
	dms  Day Microphysics RGB          ngt  Night Microphysics RGB
	dst  Dust RGB                      arm  Airmass RGB
	dsl  Day Snow-Fog RGB              dnc  Natural Color RGB
	tre  True Color RGB (Enhanced)     trm  True Color Reproduction Image
	cve  Day Convective Storm RGB      snd  Sandwich
	vir  B03 combined with B13         irv  B03 and B13 at night
	hrp  Heavy rainfall potential areas
```
*Example usage*
```sh
./wgif se4 tre 100 
```

## Dependencies
- bash
- curl
- imagemagick
- xidel