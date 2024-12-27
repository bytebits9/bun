## Quick reference
- **Image based on**:   
  [alpine](https://hub.docker.com/_/alpine)

- **Supported architectures**:    
  `linux/amd64`, `linux/arm64`

- **Maintained by**:  
  [sxbrsky](https://github.com/sxbrsky)

- **Where to file issues**:    
  [https://github.com/sxbrsky/docker-bun/issues](https://github.com/sxbrsky/docker-bun/issues?q=)

## Supported tags and respective `Dockerfile` links

- `1.1.38`, `1.1`
- `1.0.36`, `1.0`

## How to use this image

Create a `Dockerfile`

```Dockerfile
FROM sxbkrsy/bun:1.1.38
COPY . /app
WORKDIR /app
CMD [ "bun", "./script.js" ]
```
Then, build and run the Docker image

```bash
docker build -t bun-app
```
```bash
docker run -it --rm --name custom-bun bun-app
```

## License

View [license](https://bun.sh/docs/project/licensing) information for the software contained in this image.