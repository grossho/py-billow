
PYTHON ?= python

all:
	rm -rf build dist
	$(PYTHON) setup.py build

install:
	$(PYTHON) setup.py install

deinstall:
	$(PYTHON) setup.py install


reintall: deinstall install

clean:
	rm -rf build dist *.core

tests:
	$(PYTHON) test/test_001_nil.py
	$(PYTHON) test/test_002_nil_and_refs.py
	$(PYTHON) test/test_003_pair.py
	$(PYTHON) test/test_004_ring.py
	$(PYTHON) test/test_005_treedict.py
