CPUMINER-RPLANT CUSTOM MINER For HiveOS Flight Sheets.

This repository provides a custom wrapper for integrating multiple cpuminer binaries into HiveOS. The wrapper automatically detects CPU capabilities and selects the most optimized binary available, ensuring compatibility across different hardware configurations.

Key Features
Automatic CPU detection: Inspects /proc/cpuinfo and selects the appropriate binary in priority order (Ryzen → AVX512 → AVX2 → SSE4.2 → SSE2).

HiveOS integration: Parses miner logs and outputs JSON statistics in the format expected by HiveOS.

Thread-level monitoring: Provides per-thread hashrate and temperature reporting for accurate monitoring.

Benefits
Simplifies deployment of cpuminer on HiveOS.

Ensures robust error handling and fallback for uninterrupted mining.

Delivers consistent and detailed monitoring aligned with HiveOS requirements.

Supported Algos:
                          allium        Garlicoin (GRLC)
                          anime         Animecoin (ANI)
                          argon2d250    argon2d-crds, Credits (CRDS)
                          argon2d500    argon2d-dyn, Dynamic (DYN)
                          argon2d4096   argon2d-uis, Unitus (UIS)
                          aurum         bitnet(BIT)
                          axiom         Shabal-256 MemoHash
                          balloon       Balloon2 Zentoshi
                          blake         blake256r14 (SFR)
                          blake2b       Blake2b 256
                          blake2s       Blake-2 S
                          blakecoin     blake256r8
                          bmw           BMW 256
                          bmw512        BMW 512
                          c11           Chaincoin
                          circcash      Circcash coin
                          cosa          Cosanta coin
                          decred        Blake256r14dcr
                          deep          Deepcoin (DCN)
                          dmd-gr        Diamond
                          dpowhash      dpowcoin
                          evohash       evoai coin
                          gr            Raptoreum
                          groestl       Groestl coin
                          hashx7        6ZIP coin
                          hex           x16r-hex
                          heavyhash     oBTC coin
                          hmq1725       Espers
                          hodl          Hodlcoin
                          interchained  yespower interchained
                          jha           jackppot (Jackpotcoin)
                          keccak        Maxcoin
                          keccakc       Creative Coin
                          lbry          LBC, LBRY Credits
                          lyra2h        Hppcoin
                          lyra2a40      Applecoin
                          lyra2re       lyra2
                          lyra2rev2     lyrav2
                          lyra2rev3     lyrav2v3, Vertcoin
                          lyra2z
                          lyra2z330     Lyra2 330 rows
                          myr-gr        Myriad-Groestl
                          mike          VKAX
                          minotaur      Ringcoin (RNG)
                          minotaurx     LitecoinCash (LCC)
                          neoscrypt     NeoScrypt(128, 2, 1)
                          nist5         Nist5
                          pentablake    5 x blake512
                          memehashv2    pepecoin 2.0
                          phi1612       phi
                          phi2
                          phi5          combode
                          phichox       chainox
                          polytimos
                          power2b       MicroBitcoin (MBC)
                          quark         Quark
                          qubit         Qubit
                          rinhash       rincoin
                          rinhash2      rincoin
                          rwahash       GoodMorningNetwork
                          scrypt        scrypt(1024, 1, 1) (default)
                          scrypt:N      scrypt(N, 1, 1)
                          sha256d       Double SHA-256
                          sha256q       Quad SHA-256, Pyrite (PYE)
                          sha256t       Triple SHA-256, Onecoin (OC)
                                         sha3d         Double Keccak256 (BSHA3)
                          shavite3      Shavite3
                          skein         Skein+Sha (Skeincoin)
                          skein2        Double Skein (Woodcoin)
                          skunk         Signatum (SIGT)
                          sonoa         Sono
                          soterc        Soteria
                          soterg        Soteria
                          timetravel    timeravel8, Machinecoin (MAC)
                          timetravel10  Bitcore (BTX)
                          tribus        Denarius (DNR)
                          vanilla       blake256r8vnl (VCash)
                          veltor
                          whirlpool
                          whirlpoolx
                          x11           Dash
                          x11evo        Revolvercoin (XRE)
                          x11gost       sib (SibCoin)
                          x12           Galaxie Cash (GCH)
                          x13           X13
                          x13bcd        bcd 
                          x13sm3        hsr (Hshare)
                          x14           X14
                          x15           X15
                          x16r
                          x16rv2
                          x16rt         Gincoin (GIN)
                          x16rt-veil    Veil (VEIL)
                          x16s
                          x17
                          x21s
                          x22           Blakestar2 (BLAS)
                          x22i
                          x25x
                          xevan         Bitsend (BSD)
                          yescrypt      Globalboost-Y (BSTY)
                          yescryptr8    BitZeny (ZNY)
                          yescryptr8g   Koto (KOTO)
                          yescryptr16   Eli
                          yescryptr32   WAVI
                          yescryptr32glt UNFY
                          yespower      Cryply
                          yespoweradvc  Adventurecoin
                          yespowerarwn  Arowanacoin
                          yespowerr16   Yenten (YTN)
                          yespower-b2b  generic yespower + blake2b
                          yespowerIC    IsotopeC (ISO)
                          yespowerITC   Intercoin (ITC)
                          yespowerIOTS  IOTS
                          yespowerMGPC  Magpiecoin
                          yespowerMWC   Miners World coin
                          yespowerURX   UraniumX (URX)
                          yespowerLITB  LightBIT (LITB)
                          yespowerTIDE  Tidecoin (TDC)
                          yespowerLTNCG LightningCash Gold (LTNCG)
                          cpupower      CPUchain (CPU)
                          yespowerSUGAR Sugarchain (SUGAR)
                          yespowerRES   Resistance (RES)
                          zr5           Ziftr
