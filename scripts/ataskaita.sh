#!/usr/bin/env bash
echo "Aplankas: $(basename "$(pwd)")"
echo "Eilutės:"
grep -n -f ../slaptas.txt uzrasai/serveriai.txt
echo "Projektas: ${PROJEKTO_VARDAS:-nenustatyta}"
