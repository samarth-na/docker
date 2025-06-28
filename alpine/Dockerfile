# Base image
FROM alpine:3.20

# Use bash-style ENV so fish can read them too
ENV TZ=UTC \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8

# Install fish, common tools, and dependencies
RUN apk update && apk upgrade && apk add --no-cache \
    fish \
    curl \
    wget \
    git \
    vim \
    nano \
    htop \
    openssh-client \
    iputils \
    bash \
    tmux \
    python3 \
    py3-pip \
    sudo \
    coreutils \
    ca-certificates \
    tzdata \
    shadow \
    net-tools \
    unzip \
    zip \
    tar

# Set timezone (Alpine needs this explicitly)
RUN cp /usr/share/zoneinfo/$TZ /etc/localtime && echo "$TZ" > /etc/timezone

# Add non-root user
RUN useradd -m -s /usr/bin/fish devuser && \
    echo "devuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Switch to fish shell by default
SHELL ["/usr/bin/fish", "-c"]

# Switch to new user
USER devuser
WORKDIR /home/devuser

# Expose useful ports
EXPOSE 22    # SSH
EXPOSE 80    # HTTP
EXPOSE 443   # HTTPS
EXPOSE 3000  # Frontend dev
EXPOSE 8000  # Backend API
EXPOSE 8080  # Web servers

# Default command
CMD ["fish"]
