podman run -d --name test-fedora-setup-container --rm fedora:39 sh -c "$(cat install.sh)"
podman logs -f --tail 10 test-fedora-setup-container