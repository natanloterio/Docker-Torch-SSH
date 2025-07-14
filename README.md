# PyTorch SSH Container

Docker image based on [pytorch/pytorch:2.7.1-cuda12.8-cudnn9-devel](https://hub.docker.com/r/pytorch/pytorch) with SSH access enabled.

Useful for remote experimentation, training, or developing in a familiar PyTorch environment with GPU support and SSH terminal access.

---

## 🚀 Features

- ✅ PyTorch 2.7.1 with CUDA 12.8 and cuDNN 9
- ✅ OpenSSH server preconfigured
- ✅ Root access via SSH
- ✅ Conda pre-activated in SSH sessions
- ✅ Ready for GPU usage (`--gpus all`)

---

## 📦 Build the Docker Image

```bash
docker build -t pytorch-ssh .

