# Use an official jupyter image as a parent image
FROM jupyter/datascience-notebook:lab-4.0.7 AS jupyter

ENV UV_SYSTEM_PYTHON=1

# Fix: https://github.com/hadolint/hadolint/wiki/DL4006
# Fix: https://github.com/koalaman/shellcheck/wiki/SC3014
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root

RUN apt-get update \
 && apt-get install --yes --quiet --no-install-recommends \
       libmagic1 \
       # clean cache and logs
       && rm -rf /var/lib/apt/lists/* /var/log/* /var/tmp/* ~/.npm

# Switch back to jovyan to avoid accidental container runs as root
USER ${NB_UID}
WORKDIR "${HOME}"

COPY --from=ghcr.io/astral-sh/uv:0.5 /uv /bin/uv

# Install PyTorch with CUDA support
RUN uv pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# RUN uv pip install -r /app/package/requirements.txt

# Install the local package
RUN uv pip install -e /app

# Get rid ot the following message when you open a terminal in jupyterlab:
# groups: cannot find name for group ID 11320
RUN touch ${HOME}/.hushlogin
