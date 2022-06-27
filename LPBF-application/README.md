[![DOI](https://zenodo.org/badge/368526898.svg)](https://zenodo.org/badge/latestdoi/368526898)
![GitHub repo size](https://img.shields.io/github/repo-size/pzimbrod/openfoam-lpbf)
![GitHub issues](https://img.shields.io/github/issues-raw/pzimbrod/openfoam-lpbf)
![GitHub](https://img.shields.io/github/license/pzimbrod/openfoam-lpbf)
![GitHub last commit](https://img.shields.io/github/last-commit/pzimbrod/openfoam-lpbf)

# OpenFOAM LPBF

Case Files for a L-PBF melt pool simulation using YADE DEM and OpenFOAM v2106 with a *custom* solver [`lpbfFoam`](https://github.com/pzimbrod/lpbfFoam.git): 

* Hexagonal domain using blockMesh
* Definition of solid powder domain using setFields and STL geometry from [Yade](https://yade-dem.org/doc/) DEM software and subsequent meshing using [Gmsh](https://gmsh.info/)
* Modelling of melting physics using Lee-type solidification and melting
* Temperature dependent physical properties
* For solver details, see the `lpbfFoam` repository linked above

## DEM and meshing preparations

The powder bed is initialized using `Yade` via the Python script [create-powderbed.py](create-powderbed.py). There, you can tune the parameters of the particles such as the size distributions (PSDs) of the individual alloy particles as well as the desired layer height. After running the script, the corresponding `.geo` files are created in a directory called `GEO`.

To run the DEM simulation, simply pass the script as input in the command line:

```bash
yade create-powderbed.py
```

While the simulation is running, you can observe the outputs in form of the residuals as well as the 3D view in the YADE GUI.

The `.geo` files that YADE produces need to be triangulated first in order to be processed by `OpenFOAM`. To do this, you can execute the `Allmesh` script that invokes meshing of all created geometries:

```bash
./Allmesh
```

Then, copy the STL files that have been created in the `STL` directory into the folder `constant/triSurface` so that OpenFOAM can find and reference it to set the initial condition for the solid region.

## Running the FV model

1. Create Mesh with `blockMesh`
2. Initialize field values with `setFields`
3. Optional (recommended): For parallel runs split domain using `decomposePar`
4. execute with `lpbfFoam` or in case of parallel run using `mpirun -np [numProcs] lpbfFoam -parallel`

Alternatively, you can simply run the `Allrun` script and observe the console outputs that are written to the respective log files:

```bash
./Allrun
```


## Citing

Please cite this code when using it in your projects.
