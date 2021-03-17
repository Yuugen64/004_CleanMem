<!-- *** UPDATE THIS FOR EACH REPO *** -->
# 004_CleanMem
Repo for Udemy course to play around with Assembly.

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/Yuugen64/004_CleanMem/README.md">
    <img src="001_AssemblySprite.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">First 6502 Assembly Program</h3>
  
  <br />
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)




<!-- ABOUT THE PROJECT -->
## About The Project

<!-- [![Product Name Screen Shot][product-screenshot]](https://example.com) -->


### Built With
* Assembly.



<!-- GETTING STARTED -->
## Getting Started

You will have to assemble this into cartridge form, and then find an emulator to run it.



### Prerequisites

This is quite a small bit of code, but:
```sh
1. Using an assembler of your choice, asseble this code into cartridge format so that it can be executed.
2. You will have to find a compatible system or emulator to then run the code.
```

### Installation

1. Click the green download button to get the .zip!



<!-- USAGE EXAMPLES -->
## Usage
- (Recommended) Run in an Atari 2600 emulator.

<!-- CHANGELOG -->
## Changelog:
<!-- DATES and what changed/was accomplished on that day. -->

3.14.21:
- Set up the repository for the project.
- Updated Readme.
- Learned about basic opcodes for the 6502 processor.
- Learned about loop logic using decrement and branching.
- Learned why its important to clear the page zero region before running a program.
- Learned about the basic format for a program, including why labels are important.
- Learned about some customary practices in creating Atari 2600 cartridges.
- Learned about filling the 4k ROM and ending with the RESET and INTERRUPT vectors in Memory addresses $FFFC - $FFFF.
- Wrote this first little program.

3.15.21:
- BUGFIX:: The RESET and INTERRUPT Vectors were misspelled as 'start' instead of 'Start' (the label pointer).
- Downloaded the 'dasm' assembler and configured the path correctly.
- Downloaded Stella emulator and began to familiarize myself with the interface.
- Learned the syntax for assembling via CLI: dasm myprogram.asm -f3 -v0 -ocartridgename.bin
- Got the code to assemble and run in Stella correctly.

3.17.21:
- BUGFIX:: Due to the nature of the bne (Branch if not equal to 0) instruction, there is a small bug where the Memory address at 0 is never zeroed. Re-worked the code to account for this and the inverse problem of $FF not being zeroed due to the new logic.
- Re-iterated the differences in instructions lda #80 vs. lda $80 vs. lda #$80, and that these three do very different things to the processor and in fact have their own op codes.

### Main Branch:
- Where the core project is located.

<!-- CONTRIBUTING -->
## Contributing

For this particular project, there have been no outside contributions. If that changes in the future I will be sure to update this section to accurately credit those authors.



<!-- CONTACT -->
## Contact

Yuugen64@protonmail.com

<!-- ***Make sure to update REPO in BOTH URLs here*** -->
Project Link: [https://github.com/Yuugen64/004_CleanMem](https://github.com/Yuugen64/004_CleanMem)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Othneildrew](https://github.com/othneildrew/Best-README-Template/blob/master/README.md) - For providing a great template for leveling up my README!
* [Gustavo Pezzi](https://www.udemy.com/course/programming-games-for-the-atari-2600/) - Lecturer in the Udemy course I am following to learn this material.

