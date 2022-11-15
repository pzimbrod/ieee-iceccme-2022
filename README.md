# Efficient Simulation of Complex Capillary Effects in Advanced Manufacturing Processes using the Finite Volume Method

This is the source repository for the corresponding article submitted to IEEEE ICECCME 2022.

# Contents

## Article

All sources files for the TeX document can be found in this folder, including references, figures and the source files.

## 2D-Benchmark

The `OpenFOAM` case files needed to run the capillary droplet benchmark described in section _V.A_.

To run in serial, execute the `Allrun` script.

To run in parallel, you must first modify the partitioning of the domain according to your number of physical cores in `system/decomposeParDict`.
Then, run the `Allrun-parallel` script.

Results can be visualized in ParaView.
To replicate Fig. 2 in the article, you can import the paraview state `fig-2.pvsm`.

## LPBF-application

The `OpenFOAM` case files needed to run the 3D Laser Powder Bed Fusion model given in section _V.B_.

To fully replicate this model, you must also install `Yade` DEM software. Then run `create-powderbed.py` to create the powder bed packing and export the `.geo` file.
Then, using the `Allmesh` script that relies on `GMSH`, create the `.stl` geometries that can be read in by `OpenFOAM`.

After that, proceed as described in the previous section to run the simulation in parallel. Expect this to run for several hours.

# Dependencies

The proposed FVM code `thermocapillaryInterFoam` must be installed locally in order to run the models.
The source is available in the corresponding [GitHub repo](https://github.com/pzimbrod/thermocapillaryInterFoam)

## License

[MIT](https://choosealicense.com/licenses/mit/)
