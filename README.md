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
```

🧰 Run the Container

docker run -d --gpus all -p 2222:22 --name pytorch-container pytorch-ssh

This maps the container's SSH port to host port 2222.

🔑 Connect via SSH

ssh root@localhost -p 2222

Password: rootpasswordYou can change the password in the Dockerfile.

🧪 Python and Conda

This image uses the Conda environment provided by the base PyTorch image.

Python will be available immediately when you SSH in, thanks to .bashrc loading:

python

🛠️ Customization

Change password via the echo line in the Dockerfile.

Mount volumes with -v when running the container.

Add SSH keys and non-root users as needed.

📜 License

MIT — free to use, share, and adapt.

🧠 Notes

This image is useful for:

Remote training on a GPU server

Connecting VSCode via Remote-SSH

Containerized development environments
