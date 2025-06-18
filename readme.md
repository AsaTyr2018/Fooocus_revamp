# Fooocus Revamp

Fooocus Revamp is a modern reimagining of the beloved image generator [Fooocus](https://github.com/lllyasviel/Fooocus). The goal remains the same &mdash; deliver stunning AI generated images without the usual sea of sliders or heavy setup steps &mdash; but the engine has been rebuilt with up‑to‑date libraries and a streamlined workflow.

Created originally by [lllyasviel](https://github.com/lllyasviel/), Fooocus proved that high quality text‑to‑image generation can be simple and offline. This repository continues that work while upgrading the internals to the latest diffusion technology and providing a clean base for further experimentation.

## Features at a Glance
- **High quality text‑to‑image** generation powered by modern diffusion models.
- **Prompt expansion** via a lightweight local language model so simple prompts still produce detailed results.
- **Inpaint/outpaint, upscaling and variations** for refining generated images.
- **Image prompts and face swap** through InsightFace integration.
- **Style presets** such as *Fooocus V2* for quick creative direction.
- **Negative prompts, multi prompts and prompt weights** including embedding support.
- **Quality, aspect ratio and guidance controls** exposed through an intuitive UI.
- **Inline tricks** like wildcards, array prompts and inline LoRA references.
- **Advanced sampling engine** with native refiner swap and tuned k‑diffusion parameters.

## Getting Started
Installation works with standard Python or conda environments and Docker. See [development.md](development.md) for test instructions and [docker.md](docker.md) for container setup. The software creates a `config.txt` after first run where you can adjust model paths and defaults.

## Update Log
Changes and historical notes are kept in [update_log.md](update_log.md).

## Acknowledgements
This project stands on the shoulders of the original [Fooocus](https://github.com/lllyasviel/Fooocus). Huge thanks to **lllyasviel** and all of the contributors who laid the groundwork for this rebirth.
