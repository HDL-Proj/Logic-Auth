# Logic-Auth

4 bit dip switch password encapsulation

## To run this stuff, just follow this steps below on your terminal 👽️

First, generate/update vvp file:

```bash
iverilog -o eight_bit_auth.vvp eight_bit_auth.v
```

Then, generate/update vcd file:

```bash
vvp eight_bit_auth.vvp
```

Lastly, simulate

```bash
gtkwave
```

### 📝Note: disregard tb_main.v file for now
