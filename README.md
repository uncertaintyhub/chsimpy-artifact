# chsimpy-artifact

Reproducable artifact data for the Cahn-Hilliard simulation program [chsimpy](https://github.com/uncertaintyhub/chsimpy) (python3).

## Structure

```
├── chsimpy  # subtree of chsimpy code
├── data
│   ├── experiments  # 15k files, ~480 MiB
│   ├── <paper-pic-*.*>
├── tex  # table + figures for paper
│   ├── fig.tex  # generated by paper.ipynb
│   └── pictures # generated by paper.ipynb
```

`data/experiments` contains results of:

- 1000 runs with varying A0 and A1 (`run = {0,..,999}`)
- 1000 runs with varying A0 (suffix `independent`, `run = {0,..,999}`)
- 1000 runs with varying A1 (suffix `independent`, `run = {1000,..,1999}`)
- uniform distribution of A0 and A1 with a variation of [99.5%, 100.5%]
- [metadata](data/experiments/0.89-uniform-2023-metadata.csv)
- [metadata (independent)](data/experiments/0.89-uniform-2023-independent-metadata.csv)
- [parameter configuration of first run](data/experiments/0.89-uniform-2023-run0.solution.yaml)
- [parameter configuration of first run (independent)](data/experiments/0.89-uniform-2023-independent-run0.solution.yaml)

`data/<paper-pic-*.*>` are results used for the paper.

- pictures of the simulation progress after 1, 60, 320 and 1020min used for the energy decay figure
- `c0=0.875`, see also [parameter configuration](data/paper-pic-1020min-0.875.yaml)

## Workflow to Reproduce Results

Following scripts are provided to run the simulation with the same configuration as we did. Check the script code to modify the multi-processor usage and other parameters.

```
# the results of these runs are stored in chsimpy/
./run-experiment.sh
./run-paper-pic.sh
```

## Hardware and Runtimes

The simulations were performed on a Notebook with:

```
System:
  Host: mw-81q9 Kernel: 6.1.25-1-MANJARO arch: x86_64 bits: 64 Desktop: Xfce
CPU:
  Info: quad core Intel Core i7-1065G7 [MT MCP] speed (MHz): avg: 1442
Machine:
  Type: Convertible System: LENOVO product: 81Q9 v: Lenovo Yoga C940-14IIL
```

The runtimes vary depending on multi-core parallelization and usage by other programs.

- `experiments`: about `4h 40min` (6 parallel processes)
- `<paper-pic-*.*>`: about `10min`
