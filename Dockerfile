FROM ghcr.io/realm/swiftlint:0.57.0

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
