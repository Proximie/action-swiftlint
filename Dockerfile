FROM ghcr.io/realm/swiftlint:0.56.2

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
