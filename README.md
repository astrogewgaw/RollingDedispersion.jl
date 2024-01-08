<div align="center">
<h1><code>RollingDedispersion.jl</code></h1>
<h4><i>Rolling dedispersion, in Julia.</i></h4>
<br/>

![License][license]
![GitHub Stars][stars]
[![Gitmoji Badge][gitmoji_badge]][gitmoji]

<br/>
</div>

<div align="justify">

Install it by typing and running:

```bash
] add RollingDedispersion
```

in the Julia REPL.

Here is an example, obtained via `RollingDedispersion.jl`, from 30 seconds of simulated FRB data. The FRB has a DM of 1000 pc cm$^{-3}$, and an arrival time of 5 seconds:

<br/>

![Plot: Example dedispersed data via RollingDedispersion.jl](./assets/example.png)

The simulation was carried out using the [**`simulateSearch`**](https://bitbucket.csiro.au/projects/PSRSOFT/repos/simulatesearch/browse) library, and is included in this package as a part of its testing suite [**here**](./test/data/frb.fil).

</div>

[gitmoji]: https://gitmoji.dev
[presto]: https://github.com/scottransom/presto
[gitmoji_badge]: https://img.shields.io/badge/gitmoji-%20😜%20😍-FFDD67.svg?style=for-the-badge
[stars]: https://img.shields.io/github/stars/astrogewgaw/RollingDedispersion.jl?style=for-the-badge
[license]: https://img.shields.io/github/license/astrogewgaw/RollingDedispersion.jl?style=for-the-badge
