FROM ttbb/compile:rust AS build
COPY . /opt/sh/compile
WORKDIR /opt/sh/compile
RUN /root/.cargo/bin/cargo build


FROM ttbb/tempo:nake

COPY docker-build /opt/sh/tempo/mate

COPY --from=build /opt/sh/compile/target/debug/tempo-mate-rust /opt/sh/tempo/mate/tempo-mate

WORKDIR /opt/sh/tempo

CMD ["/usr/bin/dumb-init", "bash", "-vx", "/opt/sh/tempo/mate/scripts/start.sh"]
