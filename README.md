# Einfaches Bash Projekt mit 5 GitHub Actions Pipelines

Dieses Projekt ist für den Unterricht gedacht.

Es zeigt:

1. Wie man Shell Skripte aus GitHub Actions startet
2. Wie mehrere Workflow Dateien funktionieren
3. Wie mehrere Jobs mit `needs` verbunden werden
4. Wie man Artefakte hochlädt
5. Wie man einen Workflow manuell startet
6. Wie ein geplanter Workflow aussieht

## Projektstruktur

```text
github-actions-bash-5-pipelines-einfach/
├── .github/
│   └── workflows/
│       ├── 01-info.yml
│       ├── 02-check.yml
│       ├── 03-report-artifact.yml
│       ├── 04-needs-demo.yml
│       └── 05-manual.yml
├── data/
│   └── namen.txt
├── scripts/
│   ├── 01_info.sh
│   ├── 02_check_files.sh
│   ├── 03_count_names.sh
│   ├── 04_create_report.sh
│   ├── 05_package.sh
│   └── 06_manual_message.sh
└── README.md
```

## Lokal testen

```bash
chmod +x scripts/*.sh
bash scripts/01_info.sh
bash scripts/02_check_files.sh
bash scripts/03_count_names.sh
bash scripts/04_create_report.sh
bash scripts/05_package.sh
```

## Bei GitHub hochladen

```bash
git init
git add .
git commit -m "Einfaches Bash Projekt mit 5 GitHub Actions Pipelines"
git branch -M main
git remote add origin <DEIN_REPOSITORY_LINK>
git push -u origin main
```

Danach in GitHub auf **Actions** klicken.

## Die 5 Pipelines

### 01-info.yml

Startet bei Push und zeigt einfache Informationen an.

### 02-check.yml

Prüft, ob wichtige Dateien vorhanden sind.

### 03-report-artifact.yml

Erstellt einen Report und lädt ihn als Artefakt hoch.

### 04-needs-demo.yml

Zeigt mehrere Jobs mit `needs`.

Reihenfolge:

```text
check → count → report → package
```

### 05-manual.yml

Kann manuell gestartet werden und nimmt einen Namen als Eingabe.
