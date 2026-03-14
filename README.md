# CPUMINER-RPLANT Custom Miner for HiveOS Flight Sheets

This repository provides a custom wrapper for integrating multiple `cpuminer` binaries into HiveOS. The wrapper automatically detects CPU capabilities and selects the most optimized binary available, ensuring compatibility across different hardware configurations.

## Key Features
- **Automatic CPU detection**: Inspects `/proc/cpuinfo` and selects the appropriate binary in priority order (Ryzen → AVX512 → AVX2 → SSE4.2 → SSE2).
- **Fallback mechanism**: If the selected binary is not present, the wrapper defaults to `cpuminer-sse2` to prevent execution errors.
- **HiveOS integration**: Parses miner logs and outputs JSON statistics in the format expected by HiveOS.
- **Thread-level monitoring**: Provides per-thread hashrate and temperature reporting for accurate monitoring.

## Benefits
- Simplifies deployment of cpuminer on HiveOS.  
- Ensures robust error handling and fallback for uninterrupted mining.  
- Delivers consistent and detailed monitoring aligned with HiveOS requirements.  

## Supported Algorithms
allium            Garlicoin (GRLC)
anime             Animecoin (ANI)
argon2d250        Credits (CRDS)
argon2d500        Dynamic (DYN)
argon2d4096       Unitus (UIS)
aurum             Bitnet (BIT)
axiom             Shabal-256 MemoHash
balloon           Balloon2 Zentoshi
blake             Blake256r14 (SFR)
blake2b           Blake2b 256
blake2s           Blake-2 S
blakecoin         Blake256r8
bmw               BMW 256
bmw512            BMW 512
c11               Chaincoin
circcash          Circcash
cosa              Cosanta
decred            Blake256r14dcr
deep              Deepcoin (DCN)
dmd-gr            Diamond
dpowhash          Dpowcoin
evohash           Evoai
gr                Raptoreum
groestl           Groestl
hashx7            6ZIP
hex               X16r-hex
heavyhash         oBTC
hmq1725           Espers
hodl              Hodlcoin
interchained      Yespower Interchained
jha               Jackpotcoin
keccak            Maxcoin
keccakc           Creative Coin
lbry              LBRY Credits
lyra2h            Hppcoin
lyra2a40          Applecoin
lyra2re           Lyra2
lyra2rev2         Vertcoin
lyra2rev3         Lyra2v3
lyra2z            Lyra2z
lyra2z330         Lyra2 330 rows
myr-gr            Myriad-Groestl
mike              VKAX
minotaur          Ringcoin (RNG)
minotaurx         LitecoinCash (LCC)
neoscrypt         NeoScrypt
nist5             Nist5
pentablake        5x Blake512
memehashv2        Pepecoin 2.0
phi1612           Phi
phi2              Phi2
phi5              Combode
phichox           Chainox
polytimos         Polytimos
power2b           MicroBitcoin (MBC)
quark             Quark
qubit             Qubit
rinhash           Rincoin
rinhash2          Rincoin
rwahash           GoodMorningNetwork
scrypt            Scrypt (default)
scrypt:N          Scrypt(N,1,1)
sha256d           Double SHA-256
sha256q           Quad SHA-256 (Pyrite)
sha256t           Triple SHA-256 (Onecoin)
sha3d             Double Keccak256 (BSHA3)
shavite3          Shavite3
skein             Skein+Sha (Skeincoin)
skein2            Double Skein (Woodcoin)
skunk             Signatum (SIGT)
sonoa             Sono
soterc            Soteria
soterg            Soteria
timetravel        Machinecoin (MAC)
timetravel8       Machinecoin (MAC)
timetravel10      Bitcore (BTX)
tribus            Denarius (DNR)
vanilla           Blake256r8vnl (VCash)
veltor            Veltor
whirlpool         Whirlpool
whirlpoolx        WhirlpoolX
x11               Dash
x11evo            Revolvercoin (XRE)
x11gost           SibCoin
x12               Galaxie Cash (GCH)
x13               X13
x13bcd            BCD
x13sm3            Hshare (HSR)
x14               X14
x15               X15
x16r              X16r
x16rv2            X16rv2
x16rt             Gincoin (GIN)
x16rt-veil        Veil (VEIL)
x16s              X16s
x17               X17
x21s              X21s
x22               Blakestar2 (BLAS)
x22i              X22i
x25x              X25x
xevan             Bitsend (BSD)
yescrypt          Globalboost-Y (BSTY)
yescryptr8        BitZeny (ZNY)
yescryptr8g       Koto (KOTO)
yescryptr16       Eli
yescryptr32       WAVI
yescryptr32glt    UNFY
yespower          Cryply
yespoweradvc      Adventurecoin
yespowerarwn      Arowanacoin
yespowerr16       Yenten (YTN)
yespower-b2b      Generic yespower + blake2b
yespowerIC        IsotopeC (ISO)
yespowerITC       Intercoin (ITC)
yespowerIOTS      IOTS
yespowerMGPC      Magpiecoin
yespowerMWC       Miners World Coin
yespowerURX       UraniumX (URX)
yespowerLITB      LightBIT (LITB)
yespowerTIDE      Tidecoin (TDC)
yespowerLTNCG     LightningCash Gold (LTNCG)
cpupower          CPUchain (CPU)
yespowerSUGAR     Sugarchain (SUGAR)
yespowerRES       Resistance (RES)
zr5               Ziftr
