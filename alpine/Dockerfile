# Base image
FROM alpine:3.20

# Use bash-style ENV so fish can read them too
ENV TZ=UTC \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8

# Install fish, common tools, and dependencies in a single RUN layer to reduce image size
RUN apk update && \
    apk upgrade --no-cache && \
    apk add --no-cache \
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
    tar && \
    # Set timezone (Alpine needs this explicitly)
    cp /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo "$TZ" > /etc/timezone && \
    # Add non-root user
    useradd -m -s /usr/bin/fish user && \
    echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
    # Clean up
    rm -rf /var/cache/apk/*

# Switch to fish shell by default
SHELL ["/usr/bin/fish", "-c"]

# Switch to new user
USER user
WORKDIR /home/user

# Create a healthcheck (recommended for containers) 
# enable if testing APIs
# HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
#     CMD fish -c "curl --fail http://localhost || exit 1"

# Expose common dev ports :- SSH, HTTP, HTTPS, js, python, servers.
EXPOSE 22    
EXPOSE 80    
EXPOSE 443   
EXPOSE 3000  
EXPOSE 8000  
EXPOSE 8080  

# Set a default command to run when container starts
CMD ["fish"]
