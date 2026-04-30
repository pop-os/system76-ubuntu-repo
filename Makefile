all: etc/apt/sources.list.d/system76-ubuntu-repo.sources

etc/apt/sources.list.d/%.sources: src/%.sources.in
	mkdir -p etc/apt/sources.list.d
	sed 's/UBUNTU_CODENAME/$(shell lsb_release -cs)/g' $< > $@

clean:
	rm -rf etc/apt/sources.list.d
