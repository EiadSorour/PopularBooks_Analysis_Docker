# Use the jupyter/datascience-notebook image as the base image
FROM jupyter/datascience-notebook

# Copy your Jupyter Notebook and requirements file (if any)
COPY . /home/jovyan/work

# Expose port 8888
EXPOSE 8888

# Run Jupyter Notebook when the container starts
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
