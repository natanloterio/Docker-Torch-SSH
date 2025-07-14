FROM pytorch/pytorch:2.7.1-cuda12.8-cudnn9-devel

# Set noninteractive mode for apt
ENV DEBIAN_FRONTEND=noninteractive

# Install OpenSSH server and system tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        openssh-server \
        sudo \
        vim \
        git \
        curl

# Create SSH directory
RUN mkdir /var/run/sshd

# Init Conda at startup
RUN echo "source /opt/conda/etc/profile.d/conda.sh && conda activate" >> /root/.bashrc


# Set root password (you can change this!)
RUN echo 'root:rootpassword' | chpasswd

# Enable root login via SSH
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Fix PAM login issue (optional)
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

# Expose SSH port
EXPOSE 22

# Default command: start SSH server
CMD ["/usr/sbin/sshd", "-D"]

