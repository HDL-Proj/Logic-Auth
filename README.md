# Logic-Auth

4 bit dip switch password encapsulation

## To run this stuff, just follow this steps below on your terminal 👽️

First, generate/update vvp file:

```bash
iverilog -o tb_main.vvp tb_main.v
```

Then, generate/update vcd file:

```bash
vvp tb_main.vvp
```

Lastly, simulate

```bash
gtkwave
```
