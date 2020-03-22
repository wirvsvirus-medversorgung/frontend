# wirvsvirus - medsupport

## Der Hackaton der Bundesregierung 20-22 März 2020

## Anliegen

COVID-19 führt global zu einer starken Belastung der Menschen und Ressourcen des Gesundheitssystem. Es zeichnet sich ab, dass auch Personal im deutschen Gesundheitswesen eine immer knapper werdende Ressource sein wird. Viele Medizinstudierende sind sehr engagiert und voller Tatkraft, um Krankenhäuser, Ambulanzen der kassenärztlichen Vereinigungen und niedergelassene Praxen, zu unterstützen. Durch den verschobenen Semesterbeginn sind viele Medizinstudierende zeitlich flexibel. Mit MedSupport möchten wir helfen, die zahlreichen Medizinstudierenden mit allen Institutionen zu verbinden, damit Unterstützung dort ankommt, wo sie am meisten benötigt wird.

## Was es kann

Medsupport vermittelt Medizinstudierende an Krankenhäuser, die Unterstützung benötigen, indem es naheliegende bedürftige Krankenhäuser auflistet. Zunächst registriert man sich als Studierender mit Angabe von Vorerfahrungen und Kompetenzen. Wichtig ist auch regionale Standorte mit Radius anzugeben, damit menschliche Ressourcen flächenhaft und fair verteilt werden. Auch verschiedene Institutionen registrieren sich mit den Angaben, wie viele Helfer/-innen benötigt werden, welche Kompetenzen gefragt sind und in welchen Bereichen Helfer/-innen eingesetzt werden sollen. Danach erhält der Studierende eine Liste mit vorgeschlagenen Institutionen, die nach Dringlichkeit und unter Beachtung der regionalen Angaben zugeordnet wurden. Beim Klick auf einen Eintrag kann man Kontakt aufnehmen und als Helfer direkt registrieren - MedSupport sorgt dafür dass die Unterstützung dort ankommt, wo sie am meisten gebraucht wird.

## Umsetzung

Das Backend, welches die komplexe Anwendungslogik enthält, wurde mit python und flask programmiert. Es ist dafür zuständig, mittels ausgefeiltem Algorithmus ein Matching zwischen Studierenden und einem nahe gelegenen Krankenhaus zu finden. Dabei bezieht es sich auf eine SQL-Datenbank, in welcher jeweils Krankenhäuser (Standorte) und COVID-19-Helfer (Studierende) eingetragen sind. Die Weboberfläche ist mit dem Framework Svelte / Sapper umgesetzt. Es bietet Registrierung, Anmeldung für Krankenhäuser und Studenten. Die Matches werden den Studierenden nach dem abgesicherten Login aufgelistet.

### Starten des Projekts

Wie auch immer den Code auschecken aus dem Repository, dann können die Abhängigkeiten installiert und das Projekt im Entwicklungsmodus  ausführt werden:

```bash
cd my-app
npm install # or yarn
npm run dev
```

Webbrowser [localhost:3000](http://localhost:3000) aufrufen.

#### Build with

Die Weboberfläche wurde mit [Sapper](https://sapper.svelte.dev/) implementiert.

## Links
[Hackaton](https://wirvsvirushackathon.devpost.com/)

[Slack](wirvsvirus.slack.com)

[Backend](https://github.com/wirvsvirus-medversorgung/backend)
