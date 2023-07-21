FROM alpine AS builder
WORKDIR /tmp
COPY data.txt ./

From fedora AS final
COPY --from=builder /tmp/data.txt /tmp/
ENTRYPOINT ["/bin/sh", "-c", "sleep 1000"]
 
