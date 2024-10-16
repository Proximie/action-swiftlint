FROM ghcr.io/realm/swiftlint:0.56.0

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
