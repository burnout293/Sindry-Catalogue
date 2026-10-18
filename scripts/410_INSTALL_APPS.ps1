## SINDRY:START
## id            : 5775adc9-14cf-4ec5-8e09-61b029e32d30
## lang          : en
## title         : Install applications
## desc          : Shows which common applications are missing or out of date, then installs, updates or reinstalls the ones you tick - from winget first, then the Microsoft Store, then the publisher's own download, run only if its digital signature matches. Accepts each publisher's licence on your behalf; some applications add their own updater service, scheduled task or startup entry
## category      : apps
## icon          : package-plus
## tags          : install, winget, microsoft store, applications, update, reinstall, browser, media, tools, games
## version       : 1.0
## author        : burnout293
## created       : 2026-10-18
## updated       : 2026-10-18
## admin         : true
## risk          : medium
## duration      : slow
## reversible    : true
## interruptible : false
## reboot        : false
## engine        : winps
## scan          : true
## panels        : plan progress
## SINDRY:END

## SINDRY:OPTIONS
## Updates   : [items] [view:tree] Updates available — tick the ones to update
## Missing   : [items] [view:tree] Not installed yet — tick the ones to install
## Installed : [items] [view:tree] Already installed — tick one to reinstall it
## QuickList : [bool] [scan] Quick list — offers every application without checking what is installed
## UseStore  : [bool] Use the Microsoft Store — when winget cannot install an application
## UseDirect : [bool] Use the publisher's download — last resort, run only if its digital signature matches the publisher
## SafeTest  : [bool] Simulate — shows what would be done, changes nothing
## SINDRY:END

## SINDRY:REPORT
## CatOffice    : Office
## CatChat      : Communication
## CatRuntimes  : Windows components
## CatRescue    : Troubleshooting
## CatDev       : Developer
## CatGames     : Games
## CatMedia     : Media
## CatBrowsers  : Browsers
## CatTools     : Tools
## PickNote     : [note:info] Tick what you want. An application that is already there can be updated or reinstalled.
## LicenceNote  : [note:info] Installing an application accepts its publisher's licence terms on your behalf.
## QuickNote    : [note:warn] Quick list: nothing was checked on this PC, so every application is offered.
## NoWingetNote : [note:warn] The Windows package manager (winget) is missing: only applications with a direct download can be installed.
## RemoteNote   : [note:warn] A remote access tool lets someone take control of this PC. Only install one if you need it, and never give access to someone who called you.
## C101 : [error] Two applications share the same Id in the catalogue — Give each Add-App line its own Id
## C102 : [error] An application names a category that does not exist — Check the spelling, or add the category with Add-Category
## C103 : [error] An application Id is not valid — Use lowercase letters, digits and dashes only
## C104 : [error] An application has no source to install it from — Give it a WingetId, a -StoreId, or an Add-Download line
## C105 : [error] A direct download does not name the expected publisher — Add -Signer with the name shown in the installer's digital signature
## C106 : [error] An address is not HTTPS — Only https:// addresses are accepted
## C107 : [error] A winget or Microsoft Store identifier is not valid — Copy it exactly from winget search
## C108 : [error] A GitHub project is not written owner/name — Write it like microsoft/PowerToys
## C109 : [error] A GitHub source has no valid -Asset to recognise the right file — Add -Asset with a pattern of the file name
## C110 : [error] An Add-Download line names an application that is not in the catalogue — Write it after the Add-App line of that application
## E201 : [error] The Windows package manager (winget) was not found — Install App Installer from the Microsoft Store, then run it again
## E202 : [error] winget was found in an unexpected place, or is not signed by Microsoft — It was not used; reinstall App Installer from the Microsoft Store
## E203 : [error] winget could not read the list of installed applications — Check the Internet connection, then run the analysis again
## E301 : [error] This source does not offer this application — The next source is tried
## E302 : [error] The installer could not be downloaded — Check the Internet connection, then try again
## E303 : [error] The downloaded installer does not match the expected one — It was not run; try again later
## E304 : [error] The application, or one of its files, is in use — Close it, then try again
## E305 : [error] Another installation is already running — Wait until it ends, then try again
## E306 : [error] There is not enough free disk space — Free up some space, then try again
## E307 : [error] There is no Internet connection — Connect to a network, then try again
## E308 : [error] A policy of your organisation blocks this installation — Ask your administrator
## E309 : [error] This installer refuses to run with administrator rights — Install it from the publisher's website, without Sindry
## E310 : [error] No installer suits this version of Windows — This application cannot be installed on this PC
## E311 : [error] A newer version is already installed — Nothing to do
## E312 : [error] A component this application needs is missing — Install the Windows components it asks for, then try again
## E313 : [error] The installation was cancelled — Run the action again
## E314 : [error] Windows must restart before this installation — Restart the PC, then run the action again
## E315 : [error] The installation failed for an unknown reason — Try again; if it fails again, install it from the publisher's website
## E316 : [error] No source could install this application — The lines above show each source that was tried
## E401 : [error] The direct download failed — Check the Internet connection, then try again
## E402 : [error] The downloaded file is empty, too large, or not an installer — It was not run
## E403 : [error] The installer is not signed, or its signature is not valid — It was not run
## E404 : [error] The installer is signed by someone other than the expected publisher — It was not run
## E405 : [error] The latest release of the GitHub project has no matching file — The -Asset pattern in the catalogue may need updating
## E406 : [error] The file does not match the fingerprint published by GitHub — It was not run; try again later
## E407 : [error] The installer reported an error — Its exit code is shown in the details
## E408 : [error] The protected download folder could not be created — Restart the PC, then run the action again
## E501 : [error] The Microsoft Store could not install the application — Check that the Store opens, then try again
## SINDRY:END

## SINDRY:LANG fr
## title        : Installer des applications
## desc         : Montre quelles applications courantes manquent ou ne sont pas à jour, puis installe, met à jour ou réinstalle celles que vous cochez - avec winget d'abord, puis le Microsoft Store, puis le téléchargement de l'éditeur, lancé seulement si sa signature numérique correspond. Accepte en votre nom la licence de chaque éditeur ; certaines applications ajoutent leur propre service de mise à jour, tâche planifiée ou lancement au démarrage
## Updates      : Mises à jour disponibles — cochez celles à mettre à jour
## Missing      : Pas encore installées — cochez celles à installer
## Installed    : Déjà installées — cochez-en une pour la réinstaller
## QuickList    : Liste rapide — propose toutes les applications sans regarder ce qui est installé
## UseStore     : Utiliser le Microsoft Store — quand winget ne peut pas installer une application
## UseDirect    : Utiliser le téléchargement de l'éditeur — en dernier recours, lancé seulement si sa signature numérique correspond à l'éditeur
## SafeTest     : Simuler — montre ce qui serait fait, sans rien modifier
## CatOffice    : Bureautique
## CatChat      : Communication
## CatRuntimes  : Composants Windows
## CatRescue    : Dépannage
## CatDev       : Développeur
## CatGames     : Jeux
## CatMedia     : Multimédia
## CatBrowsers  : Navigateurs
## CatTools     : Outils
## PickNote     : Cochez ce que vous voulez. Une application déjà présente peut être mise à jour ou réinstallée.
## LicenceNote  : Installer une application accepte en votre nom les conditions de licence de son éditeur.
## QuickNote    : Liste rapide : rien n'a été vérifié sur ce PC, toutes les applications sont donc proposées.
## NoWingetNote : Le gestionnaire de paquets de Windows (winget) est absent : seules les applications téléchargeables directement peuvent être installées.
## RemoteNote   : Un outil d'accès à distance permet à quelqu'un de prendre la main sur ce PC. Ne l'installez que si vous en avez besoin, et ne donnez jamais l'accès à quelqu'un qui vous a appelé.
## C101         : Deux applications ont le même identifiant dans le catalogue — Donnez à chaque ligne Add-App son propre identifiant
## C102         : Une application vise une catégorie qui n'existe pas — Vérifiez l'orthographe, ou ajoutez la catégorie avec Add-Category
## C103         : L'identifiant d'une application n'est pas valide — Utilisez seulement des minuscules, des chiffres et des tirets
## C104         : Une application n'a aucune source d'où l'installer — Donnez-lui un WingetId, un -StoreId ou une ligne Add-Download
## C105         : Un téléchargement direct n'indique pas l'éditeur attendu — Ajoutez -Signer avec le nom visible dans la signature numérique de l'installeur
## C106         : Une adresse n'est pas en HTTPS — Seules les adresses https:// sont acceptées
## C107         : Un identifiant winget ou Microsoft Store n'est pas valide — Recopiez-le tel quel depuis winget search
## C108         : Un projet GitHub n'est pas écrit propriétaire/nom — Écrivez-le comme microsoft/PowerToys
## C109         : Une source GitHub n'a pas de -Asset valide pour reconnaître le bon fichier — Ajoutez -Asset avec un motif du nom du fichier
## C110         : Une ligne Add-Download vise une application absente du catalogue — Écrivez-la après la ligne Add-App de cette application
## E201         : Le gestionnaire de paquets de Windows (winget) est introuvable — Installez « Programme d'installation d'application » depuis le Microsoft Store, puis relancez
## E202         : winget a été trouvé à un endroit inattendu, ou n'est pas signé par Microsoft — Il n'a pas été utilisé ; réinstallez « Programme d'installation d'application » depuis le Microsoft Store
## E203         : winget n'a pas pu lire la liste des applications installées — Vérifiez la connexion Internet, puis relancez l'analyse
## E301         : Cette source ne propose pas cette application — La source suivante est essayée
## E302         : L'installeur n'a pas pu être téléchargé — Vérifiez la connexion Internet, puis réessayez
## E303         : L'installeur téléchargé ne correspond pas à celui attendu — Il n'a pas été lancé ; réessayez plus tard
## E304         : L'application, ou l'un de ses fichiers, est en cours d'utilisation — Fermez-la, puis réessayez
## E305         : Une autre installation est déjà en cours — Attendez qu'elle se termine, puis réessayez
## E306         : Il n'y a pas assez d'espace libre sur le disque — Libérez de la place, puis réessayez
## E307         : Il n'y a pas de connexion Internet — Connectez-vous à un réseau, puis réessayez
## E308         : Une stratégie de votre organisation bloque cette installation — Demandez à votre administrateur
## E309         : Cet installeur refuse de s'exécuter avec les droits administrateur — Installez l'application depuis le site de l'éditeur, sans Sindry
## E310         : Aucun installeur ne convient à cette version de Windows — Cette application ne peut pas être installée sur ce PC
## E311         : Une version plus récente est déjà installée — Rien à faire
## E312         : Il manque un composant dont l'application a besoin — Installez les composants Windows qu'elle demande, puis réessayez
## E313         : L'installation a été annulée — Relancez l'action
## E314         : Windows doit redémarrer avant cette installation — Redémarrez le PC, puis relancez l'action
## E315         : L'installation a échoué pour une raison inconnue — Réessayez ; si l'échec se répète, installez l'application depuis le site de l'éditeur
## E316         : Aucune source n'a pu installer cette application — Les lignes au-dessus détaillent chaque source essayée
## E401         : Le téléchargement direct a échoué — Vérifiez la connexion Internet, puis réessayez
## E402         : Le fichier téléchargé est vide, trop gros, ou n'est pas un installeur — Il n'a pas été lancé
## E403         : L'installeur n'est pas signé, ou sa signature n'est pas valide — Il n'a pas été lancé
## E404         : L'installeur est signé par un autre éditeur que celui attendu — Il n'a pas été lancé
## E405         : La dernière version du projet GitHub ne contient pas le fichier attendu — Le motif -Asset du catalogue est peut-être à mettre à jour
## E406         : Le fichier ne correspond pas à l'empreinte publiée par GitHub — Il n'a pas été lancé ; réessayez plus tard
## E407         : L'installeur a signalé une erreur — Son code de sortie figure dans le détail
## E408         : Le dossier de téléchargement protégé n'a pas pu être créé — Redémarrez le PC, puis relancez l'action
## E501         : Le Microsoft Store n'a pas pu installer l'application — Vérifiez que le Store s'ouvre, puis réessayez
## SINDRY:END

# =============================================================================
#  SOMMAIRE
# =============================================================================
#   1. RÉSUMÉ        ce que fait le script, et pourquoi il est écrit ainsi
#   2. VARIABLES     les réglages, remplacés par ceux de Sindry
#   3. DRAPEAUX      les réglages internes, à ajuster d'un coup d'œil
#   4. CATALOGUE     les catégories et les applications proposées   <- À COMPLÉTER ICI
#   5. CODES         ce que veulent dire les codes de sortie de winget et des installeurs
#   6. FONCTIONS     catalogue, winget, détection, téléchargement, installation, bilan
#   7. PRÉPARATION   vérifie le catalogue, lit les chemins sûrs
#   8. ANALYSE       décrit ce qui est installé, sans rien modifier
#   9. ACTION        installe, met à jour ou réinstalle ce qui est coché, puis le bilan
#  10. ANNEXES       où trouver un identifiant, une signature, des options silencieuses
# =============================================================================

# =============================================================================
#  1. RÉSUMÉ
# =============================================================================
#  ANALYSE (rapide, rien n'est modifié)
#    winget dit en une seule fois ce qu'il reconnaît parmi les programmes
#    installés, avec la version disponible ; la liste « Applications
#    installées » de Windows complète pour le reste. Chaque appli du catalogue
#    est rangée dans l'une des trois listes : mise à jour, absente, installée,
#    puis sous sa catégorie. Une appli installée montre son icône officielle,
#    lue sur le PC (exe=). L'option QuickList saute toute la détection.
#
#  ACTION (seulement ce qui est coché)
#    Pour chaque appli, les sources sont essayées dans l'ordre de
#    $SOURCE_ORDER, jusqu'à la première qui réussit :
#      1. winget                 l'empreinte de l'installeur est vérifiée par winget
#      2. Microsoft Store        les applis y sont vérifiées par Microsoft
#      3. téléchargement direct  chez l'éditeur ou sur GitHub, lancé SEULEMENT si
#                                sa signature numérique est valide et au nom de
#                                l'éditeur attendu (-Signer)
#    Après chaque appli, un [CKPT] : l'arrêter n'est sûr qu'entre deux applis.
#
#  SÉCURITÉ
#    - winget.exe est pris dans le dossier de son paquet (Program Files\
#      WindowsApps, que seul le système modifie) et sa signature Microsoft est
#      vérifiée. Jamais l'alias de %LOCALAPPDATA%, modifiable sans droits : un
#      faux winget.exe y serait lancé en administrateur.
#    - Les chemins système viennent de HKLM, pas des variables d'environnement.
#    - Un téléchargement direct se fait en HTTPS seulement (redirections
#      comprises), dans un dossier neuf au nom imprévisible, réservé aux
#      administrateurs et au système, effacé ensuite.
#    - Ce que Sindry renvoie ($CONFIG) n'est qu'une liste d'ids : ils servent à
#      retrouver une appli du catalogue, jamais à bâtir une commande.
#
#  MOTEUR : PowerShell 5.1 (engine : winps), présent sur tout Windows 10 et 11 :
#  le module Appx et la création d'un dossier protégé en dépendent.

# =============================================================================
#  2. VARIABLES  (valeurs par défaut ; Sindry les remplace par l'override)
# =============================================================================
$CONFIG = @{
    Updates   = @()       # [items] ids des mises à jour cochées
    Missing   = @()       # [items] ids des applications absentes cochées
    Installed = @()       # [items] ids des applications à réinstaller
    QuickList = $false    # [scan] tout proposer sans regarder ce qui est installé
    UseStore  = $true     # essayer le Microsoft Store quand winget échoue
    UseDirect = $true     # en dernier recours, le téléchargement de l'éditeur
    SafeTest  = $false    # simulation : ne modifie rien
}

# --- Sindry override (ne pas supprimer) ---
if ($env:SINDRY_CONFIG) {
    ($env:SINDRY_CONFIG | ConvertFrom-Json).PSObject.Properties |
        ForEach-Object { $CONFIG[$_.Name] = $_.Value }
}

# =============================================================================
#  3. DRAPEAUX  (réglages internes, regroupés pour un ajustement rapide)
# =============================================================================
$PRECHECK_UPDATES  = $true                                # les mises à jour arrivent cochées d'office
$PRECHECK_MISSING  = @()                                  # ids d'applis absentes à cocher d'office, ex. @('7zip', 'vlc')
$INSTALL_FIRST     = @('runtimes')                        # catégories installées en premier : les autres en dépendent
$SOURCE_ORDER      = @('winget', 'msstore', 'direct')     # ordre d'essai des sources
$NEXT_SOURCE_ON    = @('E301', 'E302', 'E303', 'E309', 'E310', 'E315', 'E501')   # échecs après lesquels on essaie la source suivante
$INSTALL_SCOPE     = ''                                   # '' : l'éditeur choisit ; 'machine' ou 'user' pour l'imposer à winget
$DOWNLOAD_MAX_MB   = 1024                                 # taille maximale d'un installeur téléchargé directement, en Mo
$DOWNLOAD_TIMEOUT  = 900                                  # délai maximal d'un téléchargement direct, en secondes
$MAX_REDIRECTS     = 5                                    # redirections suivies au plus, toutes en HTTPS
$JSON_MAX_KB       = 4096                                 # taille maximale d'une réponse de l'API GitHub, en Ko
$LOG_TAIL_LINES    = 3                                    # lignes de winget gardées dans le journal après chaque appel
$EMIT_ROLE_ICONS   = $false                               # icône de secours (icon=) : à passer à $true quand Sindry l'acceptera (E4)
$EMIT_ICON_URLS    = $false                               # icône officielle en ligne (iconurl=) : idem, quand Sindry l'acceptera (E6)
$WINGET_PACKAGE    = 'Microsoft.DesktopAppInstaller'      # paquet Windows qui contient winget
$WINGET_PUBLISHER  = 'Microsoft Corporation'              # éditeur attendu dans la signature de winget.exe
$GITHUB_API        = 'https://api.github.com/repos'       # API des versions publiées sur GitHub
$USER_AGENT        = 'Sindry-Catalogue/410'               # nom envoyé aux serveurs (GitHub l'exige)
$UNINSTALL_KEYS    = @(                                   # où Windows liste les programmes installés
    'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*'
    'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'
    'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*'
)
$ErrCount           = 0                                   # erreurs rencontrées : décide du code de sortie final
$ProgressPreference = 'SilentlyContinue'                  # pas de barre de progression PowerShell dans le journal

# =============================================================================
#  4. CATALOGUE  —  les applications proposées
# =============================================================================
#  AJOUTER UNE APPLICATION : une ligne Add-App, rien d'autre à toucher.
#    1. Son identifiant winget :   winget search "nom de l'appli"
#    2. Copiez une ligne Add-App et changez les valeurs. L'ordre est libre :
#       le script trie les applis par nom.
#    3. Vérifiez :   .\tools\lint-scripts.ps1 -Path <dossier du script> -Strict
#    4. Lancez une analyse : le script contrôle lui-même chaque ligne et
#       signale une faute par un code C1xx (voir le bloc REPORT).
#
#  Les cinq colonnes obligatoires, dans l'ordre :
#    Id         identifiant unique : minuscules, chiffres, tirets. Ne plus JAMAIS
#               le changer : Sindry s'en sert pour retrouver ce qui a été coché
#    Nom        nom affiché ; entre apostrophes s'il contient une espace
#    Éditeur    affiché sous le nom ; entre apostrophes s'il contient une espace
#    Catégorie  une clé Add-Category ci-dessous
#    WingetId   identifiant exact chez winget (colonne « ID ») ; '' s'il n'y est pas
#
#  Facultatifs, à la suite, dans n'importe quel ordre :
#    -StoreId   identifiant Microsoft Store (9… ou XP…) :
#               winget search "nom" --source msstore, puis vérifiez l'éditeur avec
#               winget show --id <id> --source msstore
#    -Detect    nom dans « Applications installées », * = n'importe quoi. Défaut : Nom*
#    -Icon      icône de secours Lucide (lucide.dev). Défaut : celle de la catégorie
#    -IconUrl   adresse HTTPS de l'icône officielle, que Sindry téléchargera (E6)
#    -Exe       programme dont lire l'icône officielle si Windows n'en indique pas
#    -Note      note du bloc REPORT, affichée avec la liste qui contient l'appli
#
#  TÉLÉCHARGEMENT DIRECT (dernier recours) : une ligne Add-Download, APRÈS la
#  ligne Add-App de l'appli. -Signer est obligatoire : sans signature au nom
#  exact de l'éditeur, le script ne lance rien (voir ANNEXES).
#
#  AJOUTER UNE CATÉGORIE : une ligne Add-Category, plus deux lignes d'entête :
#    ## CatXxx : English label       dans SINDRY:REPORT
#    ## CatXxx : Libellé français    dans SINDRY:LANG fr
#  Les catégories s'affichent dans l'ordre des lignes Add-Category : gardez
#  l'ordre alphabétique du français, langue principale de Sindry.
# -----------------------------------------------------------------------------

$CATEGORIES         = [ordered] @{}                                         # catégories, dans l'ordre d'écriture : clé -> libellé (clé REPORT), icône
$APPS               = New-Object System.Collections.Generic.List[object]    # applications, dans l'ordre d'écriture
$CATALOGUE_PROBLEMS = New-Object System.Collections.Generic.List[string]    # fautes repérées pendant la lecture du catalogue

# Déclare une catégorie : le premier niveau de chaque liste de l'analyse.
function Add-Category([string] $Key, [string] $Label, [string] $Icon) {
    $CATEGORIES[$Key] = @{ Label = $Label; Icon = $Icon }
}

# Déclare une application (voir les colonnes ci-dessus). Les sources directes
# sont vides : Add-Download les remplit.
function Add-App([string] $Id, [string] $Name, [string] $Publisher, [string] $Category, [string] $WingetId,
                 [string] $StoreId = '', [string] $Detect = '', [string] $Icon = '', [string] $IconUrl = '',
                 [string] $Exe = '', [string] $Note = '') {
    $APPS.Add([pscustomobject] @{
        Id        = $Id
        Name      = $Name
        Publisher = $Publisher
        Category  = $Category
        WingetId  = $WingetId
        StoreId   = $StoreId
        Detect    = $(if ($Detect) { $Detect } else { "$Name*" })
        Icon      = $Icon
        IconUrl   = $IconUrl
        Exe       = $Exe
        Note      = $Note
        Url       = ''
        GitHub    = ''
        Asset     = ''
        Signer    = ''
        Arguments = ''
    })
}

# Donne à une application déjà déclarée sa source de dernier recours : une
# adresse HTTPS fixe (-Url), ou la dernière version d'un projet GitHub
# (-GitHub propriétaire/nom et -Asset, un motif du nom du fichier).
# -Signer : le nom EXACT du titulaire de la signature numérique (CN ou O).
# -Arguments : les options d'installation silencieuse de cet installeur.
function Add-Download([string] $Id, [string] $Url = '', [string] $GitHub = '', [string] $Asset = '',
                      [string] $Signer = '', [string] $Arguments = '') {
    $app = $null
    foreach ($a in $APPS) { if ($a.Id -eq $Id) { $app = $a; break } }
    if (-not $app) { $CATALOGUE_PROBLEMS.Add("C110|$Id"); return }
    $app.Url = $Url
    $app.GitHub = $GitHub
    $app.Asset = $Asset
    $app.Signer = $Signer
    $app.Arguments = $Arguments
}

#            Clé        Libellé        Icône
Add-Category office     CatOffice      briefcase
Add-Category chat       CatChat        message-circle
Add-Category runtimes   CatRuntimes    cpu
Add-Category rescue     CatRescue      life-buoy
Add-Category dev        CatDev         code
Add-Category games      CatGames       gamepad-2
Add-Category media      CatMedia       play
Add-Category browsers   CatBrowsers    globe
Add-Category tools      CatTools       wrench

#       Id                Nom                                    Éditeur                          Catégorie  WingetId                               Facultatifs
# --- Navigateurs --------------------------------------------------------------------------------------------------------------------------------------
Add-App firefox           Firefox                                Mozilla                          browsers   Mozilla.Firefox                        -StoreId 9NZVDKPMR9RD -Detect 'Mozilla Firefox*'
Add-App chrome            'Google Chrome'                        'Google LLC'                     browsers   Google.Chrome
Add-App brave             Brave                                  'Brave Software'                 browsers   Brave.Brave                            -StoreId XP8C9QZMS2PC1T
Add-App vivaldi           Vivaldi                                'Vivaldi Technologies'           browsers   Vivaldi.Vivaldi
Add-App librewolf         LibreWolf                              LibreWolf                        browsers   LibreWolf.LibreWolf                    -Icon shield

# --- Multimédia ---------------------------------------------------------------------------------------------------------------------------------------
Add-App vlc               'VLC media player'                     VideoLAN                         media      VideoLAN.VLC                           -Icon film -Exe vlc.exe
Add-App mpc-hc            'MPC-HC'                               'MPC-HC Team'                    media      clsid2.mpc-hc                          -Icon film
Add-App k-lite            'K-Lite Codec Pack'                    'Codec Guide'                    media      CodecGuide.K-LiteCodecPack.Standard    -Icon film
Add-App spotify           Spotify                                'Spotify AB'                     media      Spotify.Spotify                        -StoreId 9NCBCSZSJRSB -Icon music
Add-App audacity          Audacity                               'Audacity Team'                  media      Audacity.Audacity                      -StoreId XP8K0J757HHRDW -Icon mic
Add-App handbrake         HandBrake                              'The HandBrake Team'             media      HandBrake.HandBrake                    -Icon film
Add-App obs               'OBS Studio'                           'OBS Project'                    media      OBSProject.OBSStudio                   -StoreId XPFFH613W8V6LV -Icon video
Add-App gimp              GIMP                                   'The GIMP Team'                  media      GIMP.GIMP.3                            -StoreId 9PNSJCLXDZ0V -Icon image
Add-App paint-net         'Paint.NET'                            'dotPDN LLC'                     media      dotPDN.PaintDotNet                     -Detect 'paint.net*' -Icon palette
Add-App irfanview         IrfanView                              'Irfan Skiljan'                  media      IrfanSkiljan.IrfanView                 -Icon image

# --- Bureautique --------------------------------------------------------------------------------------------------------------------------------------
Add-App libreoffice       LibreOffice                            'The Document Foundation'        office     TheDocumentFoundation.LibreOffice      -Icon file-text
Add-App onlyoffice        ONLYOFFICE                             'Ascensio System SIA'            office     ONLYOFFICE.DesktopEditors              -Icon file-text
Add-App sumatrapdf        SumatraPDF                             'Krzysztof Kowalczyk'            office     SumatraPDF.SumatraPDF                  -Icon file-text
Add-App acrobat-reader    'Adobe Acrobat Reader'                 Adobe                            office     Adobe.Acrobat.Reader.64-bit            -Detect 'Adobe Acrobat Reader*' -Icon file-text
Add-App notepad-plus      'Notepad++'                            'Notepad++ Team'                 office     'Notepad++.Notepad++'                  -Detect 'Notepad++*' -Icon notebook-pen
Add-App thunderbird       Thunderbird                            Mozilla                          office     Mozilla.Thunderbird                    -StoreId 9MX7TGVGQFCL -Detect 'Mozilla Thunderbird*' -Icon mail
Add-App joplin            Joplin                                 'Laurent Cozic'                  office     Joplin.Joplin                          -Icon notebook

# --- Outils -------------------------------------------------------------------------------------------------------------------------------------------
Add-App 7zip              '7-Zip'                                'Igor Pavlov'                    tools      '7zip.7zip'                            -Icon archive
Add-App everything        Everything                             voidtools                        tools      voidtools.Everything                   -Icon search
Add-App powertoys         PowerToys                              Microsoft                        tools      Microsoft.PowerToys                    -StoreId XP89DCGQ3K6VLD -Icon layout-grid
Add-App wiztree           WizTree                                'Antibody Software'              tools      AntibodySoftware.WizTree               -Icon hard-drive
Add-App keepassxc         KeePassXC                              'KeePassXC Team'                 tools      KeePassXCTeam.KeePassXC                -StoreId XP8K2L36VP0QMB -Icon key-round
Add-App bitwarden         Bitwarden                              'Bitwarden Inc.'                 tools      Bitwarden.Bitwarden                    -StoreId 9PJSDV0VPK04 -Icon key-round
Add-App rufus             Rufus                                  'Pete Batard'                    tools      Rufus.Rufus                            -StoreId 9PC3H3V7Q9CH -Icon usb
Add-App ventoy            Ventoy                                 Ventoy                           tools      Ventoy.Ventoy                          -Icon usb
Add-App greenshot         Greenshot                              Greenshot                        tools      Greenshot.Greenshot                    -Icon camera
Add-App sharex            ShareX                                 'ShareX Team'                    tools      ShareX.ShareX                          -StoreId 9NBLGGH4Z1SP -Icon camera

# --- Communication ------------------------------------------------------------------------------------------------------------------------------------
Add-App discord           Discord                                'Discord Inc.'                   chat       Discord.Discord                        -StoreId XPDC2RH70K22MN
Add-App zoom              Zoom                                   'Zoom Communications'            chat       Zoom.Zoom                              -StoreId XP99J3KP4XZ4VV -Icon video
Add-App signal            Signal                                 'Signal Messenger'               chat       OpenWhisperSystems.Signal              -StoreId XP89119P9F2PCQ
Add-App telegram          Telegram                               'Telegram FZ-LLC'                chat       Telegram.TelegramDesktop               -Detect 'Telegram Desktop*' -Icon send
Add-App teams             'Microsoft Teams'                      Microsoft                        chat       Microsoft.Teams                        -StoreId XP8BT8DW290MPQ -Icon video

# --- Jeux ---------------------------------------------------------------------------------------------------------------------------------------------
Add-App steam             Steam                                  'Valve Corporation'              games      Valve.Steam
Add-App epic              'Epic Games Launcher'                  'Epic Games'                     games      EpicGames.EpicGamesLauncher            -StoreId XP99VR1BPSBQJ2
Add-App gog               'GOG Galaxy'                           'GOG.com'                        games      GOG.Galaxy                             -Detect 'GOG GALAXY*'
Add-App ea-app            'EA app'                               'Electronic Arts'                games      ElectronicArts.EADesktop
Add-App ubisoft           'Ubisoft Connect'                      Ubisoft                          games      Ubisoft.Connect                        -StoreId XPDP2QW12DFSFK
Add-App battlenet         'Battle.net'                           'Blizzard Entertainment'         games      Blizzard.BattleNet

# --- Composants Windows -------------------------------------------------------------------------------------------------------------------------------
Add-App dotnet8           '.NET Desktop Runtime 8'               Microsoft                        runtimes   Microsoft.DotNet.DesktopRuntime.8      -Detect 'Microsoft Windows Desktop Runtime - 8.*'
Add-App vcredist-x64      'Visual C++ Redistributable (64-bit)'  Microsoft                        runtimes   'Microsoft.VCRedist.2015+.x64'         -Detect 'Microsoft Visual C++ 2015-* Redistributable (x64)*'
Add-App vcredist-x86      'Visual C++ Redistributable (32-bit)'  Microsoft                        runtimes   'Microsoft.VCRedist.2015+.x86'         -Detect 'Microsoft Visual C++ 2015-* Redistributable (x86)*'
Add-App java21            'Java (Temurin JRE 21)'                'Eclipse Adoptium'               runtimes   EclipseAdoptium.Temurin.21.JRE         -Detect 'Eclipse Temurin JRE*21*' -Icon coffee
Add-App directx           'DirectX (older games)'                Microsoft                        runtimes   Microsoft.DirectX                      -Detect 'DirectX*' -Icon gamepad-2

# --- Dépannage ----------------------------------------------------------------------------------------------------------------------------------------
Add-App teamviewer        TeamViewer                             TeamViewer                       rescue     TeamViewer.TeamViewer                  -StoreId XPDM17HK323C4X -Icon monitor-smartphone -Note RemoteNote
Add-App anydesk           AnyDesk                                'AnyDesk Software'               rescue     AnyDesk.AnyDesk                        -Icon monitor-smartphone -Note RemoteNote
Add-App hwinfo            HWiNFO                                 REALiX                           rescue     REALiX.HWiNFO                          -Icon cpu
Add-App crystaldiskinfo   CrystalDiskInfo                        'Crystal Dew World'              rescue     CrystalDewWorld.CrystalDiskInfo        -Icon hard-drive
Add-App crystaldiskmark   CrystalDiskMark                        'Crystal Dew World'              rescue     CrystalDewWorld.CrystalDiskMark        -Icon gauge
Add-App bluescreenview    BlueScreenView                         NirSoft                          rescue     NirSoft.BlueScreenView                 -Icon monitor-x
Add-App autoruns          Autoruns                               Sysinternals                     rescue     Microsoft.Sysinternals.Autoruns        -Icon rocket
Add-App process-explorer  'Process Explorer'                     Sysinternals                     rescue     Microsoft.Sysinternals.ProcessExplorer -Icon activity
Add-App malwarebytes      Malwarebytes                           Malwarebytes                     rescue     Malwarebytes.Malwarebytes              -StoreId XP8C8Z6HXBX7B9 -Icon shield
Add-App revo              'Revo Uninstaller'                     'VS Revo Group'                  rescue     RevoUninstaller.RevoUninstaller        -Icon trash-2
# RustDesk n'est plus dans winget : sa seule source serait GitHub, et l'éditeur
# qui signe son installeur reste à vérifier sur un fichier téléchargé. Ensuite :
# Add-App rustdesk        RustDesk                               RustDesk                         rescue     ''                                     -Icon monitor-smartphone -Note RemoteNote

# --- Développeur --------------------------------------------------------------------------------------------------------------------------------------
Add-App git               Git                                    'The Git Development Community'  dev        Git.Git                                -Detect 'Git' -Icon git-branch
Add-App vscode            'Visual Studio Code'                   Microsoft                        dev        Microsoft.VisualStudioCode             -StoreId XP9KHM4BK9FZ7Q -Detect 'Microsoft Visual Studio Code*'
Add-App powershell7       'PowerShell 7'                         Microsoft                        dev        Microsoft.PowerShell                   -StoreId 9MZ1SNWT0N5D -Detect 'PowerShell 7*' -Icon terminal
Add-App windows-terminal  'Windows Terminal'                     Microsoft                        dev        Microsoft.WindowsTerminal              -StoreId 9N0DX20HK701 -Icon terminal
Add-App python313         'Python 3.13'                          'Python Software Foundation'     dev        Python.Python.3.13                     -StoreId 9PNRBTZXMB4Z -Detect 'Python 3.13*' -Icon braces
Add-App nodejs            'Node.js LTS'                          'OpenJS Foundation'              dev        OpenJS.NodeJS.LTS                      -Detect 'Node.js*' -Icon braces

# --- Téléchargements directs (dernier recours) --------------------------------------------------------------------------------------------------------
#            Id            Source                                                                                      Éditeur attendu (signature)    Options silencieuses
Add-Download firefox       -Url 'https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=fr'          -Signer 'Mozilla Corporation'     -Arguments '/S'
Add-Download thunderbird   -Url 'https://download.mozilla.org/?product=thunderbird-latest-ssl&os=win64&lang=fr'      -Signer 'Mozilla Corporation'     -Arguments '/S'
Add-Download chrome        -Url 'https://dl.google.com/dl/chrome/install/googlechromestandaloneenterprise64.msi'      -Signer 'Google LLC'
Add-Download steam         -Url 'https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe'                -Signer 'Valve Corp.'             -Arguments '/S'
Add-Download teamviewer    -Url 'https://download.teamviewer.com/download/TeamViewer_Setup_x64.exe'                -Signer 'TeamViewer Germany GmbH' -Arguments '/S'
Add-Download vscode        -Url 'https://update.code.visualstudio.com/latest/win32-x64/stable'                     -Signer 'Microsoft Corporation'   -Arguments '/VERYSILENT /NORESTART /MERGETASKS=!runcode'
Add-Download dotnet8       -Url 'https://aka.ms/dotnet/8.0/windowsdesktop-runtime-win-x64.exe'                     -Signer 'Microsoft Corporation'   -Arguments '/install /quiet /norestart'
Add-Download vcredist-x64  -Url 'https://aka.ms/vs/17/release/vc_redist.x64.exe'                                   -Signer 'Microsoft Corporation'   -Arguments '/install /quiet /norestart'
Add-Download vcredist-x86  -Url 'https://aka.ms/vs/17/release/vc_redist.x86.exe'                                   -Signer 'Microsoft Corporation'   -Arguments '/install /quiet /norestart'
Add-Download powershell7   -GitHub PowerShell/PowerShell     -Asset '^PowerShell-[\d.]+-win-x64\.msi$'              -Signer 'Microsoft Corporation'
Add-Download powertoys     -GitHub microsoft/PowerToys       -Asset '^PowerToysSetup-[\d.]+-x64\.exe$'              -Signer 'Microsoft Corporation'   -Arguments '/quiet /norestart'
Add-Download git           -GitHub git-for-windows/git       -Asset '^Git-[\d.]+-64-bit\.exe$'                      -Signer 'Johannes Schindelin'     -Arguments '/VERYSILENT /NORESTART'
Add-Download keepassxc     -GitHub keepassxreboot/keepassxc  -Asset '-Win64\.msi$'                                  -Signer 'DroidMonkey Apps, LLC'
# Add-Download rustdesk    -GitHub rustdesk/rustdesk         -Asset '-x86_64\.msi$'                                 -Signer '<à vérifier>'

# =============================================================================
#  5. CODES  —  ce que veulent dire les codes de sortie
# =============================================================================
#  winget répond par un code, vérifié un par un avec « winget error <code> »
#  (winget 1.29). On le traduit en code du script, décrit et traduit dans
#  REPORT. Ok = réussi ; Reboot = réussi, redémarrage nécessaire ; Code = le
#  code du script à afficher ; Info = ce que dit le journal.
$WINGET_CODES = @{
    '0x00000000' = @{ Ok = $true }                                    # réussi
    '0x8A15002B' = @{ Ok = $true; Info = 'already up to date' }       # aucune mise à jour applicable
    '0x8A150061' = @{ Ok = $true; Info = 'already installed' }        # au moins une version est déjà installée
    '0x8A15010D' = @{ Ok = $true; Info = 'already installed' }        # une autre version est déjà installée
    '0x8A150109' = @{ Ok = $true; Reboot = $true }                    # redémarrer pour terminer l'installation
    '0x8A15010B' = @{ Ok = $true; Reboot = $true }                    # le PC va redémarrer pour terminer
    '0x8A15010E' = @{ Ok = $true; Code = 'E311' }                     # une version plus récente est déjà installée
    '0x8A150014' = @{ Code = 'E301' }                                 # aucun paquet trouvé
    '0x8A150008' = @{ Code = 'E302' }                                 # échec du téléchargement
    '0x8A150011' = @{ Code = 'E303' }                                 # empreinte différente de celle du manifeste
    '0x8A15002D' = @{ Code = 'E303' }                                 # vérification de sécurité impossible
    '0x8A150101' = @{ Code = 'E304' }                                 # application en cours d'exécution
    '0x8A150103' = @{ Code = 'E304' }                                 # fichiers en cours d'utilisation
    '0x8A150111' = @{ Code = 'E304' }                                 # utilisée par une autre application
    '0x8A150102' = @{ Code = 'E305' }                                 # une autre installation est en cours
    '0x8A150105' = @{ Code = 'E306' }                                 # disque plein
    '0x8A150107' = @{ Code = 'E307' }                                 # pas de connexion Internet
    '0x8A15010F' = @{ Code = 'E308' }                                 # bloqué par une stratégie
    '0x8A15001B' = @{ Code = 'E308' }                                 # Microsoft Store bloqué par une stratégie
    '0x8A15001C' = @{ Code = 'E308' }                                 # application du Store bloquée par une stratégie
    '0x8A150056' = @{ Code = 'E309' }                                 # l'installeur refuse un contexte administrateur
    '0x8A150010' = @{ Code = 'E310' }                                 # aucun installeur applicable
    '0x8A150113' = @{ Code = 'E310' }                                 # paquet non pris en charge par le système
    '0x8A150104' = @{ Code = 'E312' }                                 # dépendance manquante
    '0x8A15010C' = @{ Code = 'E313' }                                 # annulé
    '0x8A15010A' = @{ Code = 'E314' }                                 # redémarrer avant d'installer
    '0x8A15001E' = @{ Code = 'E501' }                                 # échec de l'installation depuis le Store
}

# Codes de sortie d'un installeur lancé directement (conventions de Windows
# Installer, suivies aussi par la plupart des installeurs .exe).
$INSTALLER_CODES = @{
    0    = @{ Ok = $true }                                            # réussi
    3010 = @{ Ok = $true; Reboot = $true }                            # réussi, redémarrage nécessaire
    1641 = @{ Ok = $true; Reboot = $true }                            # réussi, redémarrage lancé par l'installeur
    1638 = @{ Ok = $true; Info = 'already installed' }                # une autre version est déjà installée
    1618 = @{ Code = 'E305' }                                         # une autre installation est en cours
    1602 = @{ Code = 'E313' }                                         # annulé
}

# =============================================================================
#  6. FONCTIONS
# =============================================================================
#  Règle de ce chapitre : une fonction qui RENVOIE une valeur n'écrit rien
#  (sinon ses lignes se mêleraient à sa valeur) ; elle range ses lignes de
#  journal dans son résultat (Logs), que l'appelant écrit. Les fonctions qui
#  écrivent ne renvoient rien.

# --- 6a. Journal ---------------------------------------------------------------

# Écrit une erreur codée. Le premier mot est le code déclaré dans REPORT ;
# Sindry affiche sa description traduite, le reste est le détail technique.
function Write-Err([string] $Code, [string] $Detail) {
    Write-Output "[ERR] $Code $Detail"
    $script:ErrCount++
}

# Écrit un avertissement codé : affiché avec sa solution, n'échoue pas.
function Write-Warn([string] $Code, [string] $Detail) {
    Write-Output "[WARN] $Code $Detail"
}

# Prépare une valeur pour une ligne d'analyse : sans guillemets ni caractères
# de contrôle, 400 caractères au plus (limite de Sindry).
function Format-Field([string] $Value) {
    $v = ($Value -replace '[\x00-\x1F"]', '').Trim()
    if ($v.Length -gt 400) { $v = $v.Substring(0, 400) }
    return $v
}

# Écrit un code de sortie en hexadécimal (0x8A150014), comme winget le documente.
function Format-Code([int] $Code) {
    return ('0x{0:X8}' -f [BitConverter]::ToUInt32([BitConverter]::GetBytes($Code), 0))
}

# Fabrique le résultat d'une tentative d'installation.
function New-Result([bool] $Ok = $false, [string] $Code = '', [string] $Detail = '', $Logs = $null,
                    [bool] $Reboot = $false, [string] $Info = '') {
    $lines = @()
    if ($Logs) { $lines = @($Logs) }
    return [pscustomobject] @{ Ok = $Ok; Code = $Code; Detail = $Detail; Logs = $lines; Reboot = $Reboot; Info = $Info }
}

# --- 6b. Chemins sûrs et catalogue ------------------------------------------

# Lit un chemin système dans HKLM : contrairement aux variables
# d'environnement, un programme sans droits ne peut pas le modifier.
function Get-TrustedPath([string] $Key, [string] $Name, [string] $Fallback) {
    try {
        $v = [string] (Get-ItemProperty -LiteralPath $Key -Name $Name -ErrorAction Stop).$Name
        if ($v -match '^[A-Za-z]:\\') { return $v.TrimEnd('\') }
    } catch { }
    return $Fallback
}

# Vrai si le texte est une expression régulière utilisable.
function Test-Regex([string] $Pattern) {
    if (-not $Pattern) { return $false }
    try { [void] [regex]::new($Pattern); return $true } catch { return $false }
}

# Vérifie chaque ligne du catalogue. Une ligne fautive est écartée avec un
# avertissement codé (C1xx) : le reste du catalogue reste utilisable. Les
# applis valides vont dans $APPS_OK.
function Test-Catalogue {
    foreach ($p in $CATALOGUE_PROBLEMS) {
        $parts = $p -split '\|', 2
        Write-Warn $parts[0] $parts[1]
    }
    $seen = @{}
    foreach ($a in $APPS) {
        # -cnotmatch : la comparaison respecte la casse (-notmatch l'ignorerait,
        # et laisserait passer un Id en majuscules).
        $problem = ''
        $detail = $a.Id
        if ($a.Id -cnotmatch '^[a-z0-9][a-z0-9-]{0,40}$') { $problem = 'C103' }
        elseif ($seen.ContainsKey($a.Id)) { $problem = 'C101' }
        elseif (-not $CATEGORIES.Contains($a.Category)) { $problem = 'C102'; $detail = "$($a.Id) -> '$($a.Category)'" }
        elseif ($a.WingetId -and $a.WingetId -notmatch '^[A-Za-z0-9][A-Za-z0-9.+_-]*\.[A-Za-z0-9.+_-]+$') { $problem = 'C107'; $detail = "$($a.Id) -> '$($a.WingetId)'" }
        elseif ($a.StoreId -and $a.StoreId -cnotmatch '^(9[A-Z0-9]{11}|XP[A-Z0-9]{12})$') { $problem = 'C107'; $detail = "$($a.Id) -> '$($a.StoreId)'" }
        elseif ($a.GitHub -and $a.GitHub -notmatch '^[A-Za-z0-9-]+/[A-Za-z0-9._-]+$') { $problem = 'C108'; $detail = "$($a.Id) -> '$($a.GitHub)'" }
        elseif ($a.GitHub -and -not (Test-Regex $a.Asset)) { $problem = 'C109'; $detail = "$($a.Id) -> '$($a.Asset)'" }
        elseif ($a.Url -and $a.Url -notmatch '^https://') { $problem = 'C106'; $detail = "$($a.Id) -> $($a.Url)" }
        elseif ($a.IconUrl -and $a.IconUrl -notmatch '^https://') { $problem = 'C106'; $detail = "$($a.Id) -> $($a.IconUrl)" }
        elseif (($a.Url -or $a.GitHub) -and -not $a.Signer) { $problem = 'C105' }
        elseif (-not ($a.WingetId -or $a.StoreId -or $a.Url -or $a.GitHub)) { $problem = 'C104' }
        if ($problem) { Write-Warn $problem (Format-Field $detail); continue }
        $seen[$a.Id] = $true
        $APPS_OK.Add($a)
    }
}

# --- 6c. Signature et winget ------------------------------------------------

# Contrôle la signature numérique d'un fichier : valide, et au nom EXACT de
# l'éditeur attendu, dans le champ CN (titulaire) ou O (organisation).
# Résultat : ok, mismatch (signé par un autre) ou invalid (pas de signature
# valide), avec le sujet du certificat pour le journal.
function Get-SignatureCheck([string] $Path, [string] $Expected) {
    $sig = $null
    try { $sig = Get-AuthenticodeSignature -LiteralPath $Path -ErrorAction Stop } catch { }
    if (-not $sig -or $sig.Status -ne 'Valid' -or -not $sig.SignerCertificate) {
        $why = 'unreadable'
        if ($sig) { $why = "$($sig.Status)" }
        return @{ Result = 'invalid'; Subject = $why }
    }
    $subject = $sig.SignerCertificate.Subject
    foreach ($m in [regex]::Matches($subject, '(?:^|,\s*)(?:CN|O)=(?:"((?:[^"]|"")*)"|([^,]*))')) {
        $value = $m.Groups[2].Value
        if ($m.Groups[1].Success) { $value = $m.Groups[1].Value -replace '""', '"' }
        if ($value.Trim() -eq $Expected) { return @{ Result = 'ok'; Subject = $subject } }
    }
    return @{ Result = 'mismatch'; Subject = $subject }
}

# Trouve le vrai winget.exe et le range dans $WINGET : dans le dossier de son
# paquet Windows, sous Program Files\WindowsApps, et signé par Microsoft.
# Écrit E202 pour un winget suspect, E201 s'il n'y en a aucun.
function Resolve-Winget {
    $script:WINGET = $null
    $root = (Join-Path $PROGRAM_FILES 'WindowsApps') + '\'
    $pkgs = @()
    try { $pkgs = @(Get-AppxPackage -Name $WINGET_PACKAGE -ErrorAction Stop) } catch { }
    if (-not $pkgs.Count) { try { $pkgs = @(Get-AppxPackage -AllUsers -Name $WINGET_PACKAGE -ErrorAction Stop) } catch { } }
    foreach ($p in @($pkgs | Sort-Object { [version] $_.Version } -Descending)) {
        if (-not $p.InstallLocation) { continue }
        $dir = [IO.Path]::GetFullPath([string] $p.InstallLocation)
        if (-not $dir.StartsWith($root, [StringComparison]::OrdinalIgnoreCase)) { Write-Warn 'E202' $dir; continue }
        $exe = Join-Path $dir 'winget.exe'
        if (-not (Test-Path -LiteralPath $exe -PathType Leaf -ErrorAction SilentlyContinue)) { continue }
        $check = Get-SignatureCheck $exe $WINGET_PUBLISHER
        if ($check.Result -ne 'ok') { Write-Warn 'E202' "$exe ($($check.Subject))"; continue }
        $script:WINGET = $exe
        Write-Output "[LOG] Winget $exe"
        return
    }
    Write-Warn 'E201' 'App Installer package not found'
}

# Demande à winget, en un seul appel, ce qu'il reconnaît parmi les programmes
# installés : « Nom  Id  Version  Disponible ». Sa sortie est traduite (en-têtes
# en français) : on ne lit que les lignes qui contiennent un Id du catalogue,
# jamais les en-têtes. Range le résultat dans $INVENTORY (id -> objet).
function Read-WingetInventory {
    $script:INVENTORY = @{}
    $global:LASTEXITCODE = -1
    $out = @()
    try { $out = @(& $WINGET list --source winget --accept-source-agreements --disable-interactivity 2>&1 | ForEach-Object { "$_" }) } catch { }
    if ($LASTEXITCODE -ne 0) {
        Write-Warn 'E203' (Format-Code $LASTEXITCODE)
        $script:INVENTORY = $null
        return
    }
    foreach ($a in $APPS_OK) {
        if (-not $a.WingetId) { continue }
        $pattern = '(?i)^(?<name>.+?)\s+' + [regex]::Escape($a.WingetId) + '\s+(?<ver>(?:<\s*)?\S+)(?:\s+(?<to>\S+))?\s*$'
        foreach ($line in $out) {
            $m = [regex]::Match($line, $pattern)
            if (-not $m.Success) { continue }
            $script:INVENTORY[$a.Id] = [pscustomobject] @{
                Name      = $m.Groups['name'].Value.Trim()
                Version   = ($m.Groups['ver'].Value -replace '\s+', ' ')
                Available = $m.Groups['to'].Value
            }
            break
        }
    }
    Write-Output "[LOG] Detect winget recognises $($script:INVENTORY.Count) catalogue applications"
}

# --- 6d. Détection (analyse) ------------------------------------------------

# Lit les programmes déclarés à Windows (« Applications installées ») : nom,
# version, icône, dossier. Les composants cachés et les mises à jour sont écartés.
function Get-RegistryApps {
    return @(Get-ItemProperty -Path $UNINSTALL_KEYS -ErrorAction SilentlyContinue |
             Where-Object { $_.DisplayName -and -not $_.SystemComponent -and -not $_.ParentKeyName })
}

# Chemin local de l'icône officielle d'une appli installée, pour exe= :
# DisplayIcon de Windows (sans guillemets ni « ,0 »), sinon son dossier
# d'installation suivi de -Exe. Seulement un fichier local absolu .exe/.dll/.ico.
function Get-IconPath($App, $Entry) {
    if (-not $Entry) { return '' }
    $candidates = New-Object System.Collections.Generic.List[string]
    if ($Entry.DisplayIcon) {
        $candidates.Add(((([string] $Entry.DisplayIcon) -replace '"', '') -replace ',\s*-?\d+\s*$', '').Trim())
    }
    if ($Entry.InstallLocation -and $App.Exe) {
        try { $candidates.Add((Join-Path (([string] $Entry.InstallLocation) -replace '"', '') $App.Exe)) } catch { }
    }
    foreach ($c in $candidates) {
        $p = [Environment]::ExpandEnvironmentVariables($c)
        if ($p -notmatch '^[A-Za-z]:\\[^"*?<>|]+\.(exe|dll|ico)$' -or $p -match '\\\.\.?\\') { continue }
        if (Test-Path -LiteralPath $p -PathType Leaf -ErrorAction SilentlyContinue) { return $p }
    }
    return ''
}

# Décide où ranger une appli (update, installed ou missing) et ce qu'on en
# montre : version en place, version disponible, icône officielle.
function Get-AppState($App, $Inventory, $Registry) {
    $w = $null
    if ($Inventory) { $w = $Inventory[$App.Id] }
    $entry = $null
    if ($w) { $entry = @($Registry | Where-Object { $_.DisplayName -eq $w.Name }) | Select-Object -First 1 }
    if (-not $entry) { $entry = @($Registry | Where-Object { $_.DisplayName -like $App.Detect }) | Select-Object -First 1 }
    $state = 'missing'
    $version = ''
    $available = ''
    if ($w) {
        $version = $w.Version
        $available = $w.Available
        $state = 'installed'
        if ($available) { $state = 'update' }
    } elseif ($entry) {
        $version = [string] $entry.DisplayVersion
        $state = 'installed'
    }
    $icon = ''
    if ($state -ne 'missing') { $icon = Get-IconPath $App $entry }
    return [pscustomobject] @{ State = $state; Version = $version; Available = $available; Icon = $icon }
}

# Écrit la ligne [ITEM] d'une catégorie : le nœud qui regroupe ses applis.
function Write-CategoryItem([string] $List, [string] $Key) {
    $c = $CATEGORIES[$Key]
    $line = "[ITEM] $List id=cat.$Key label=$($c.Label) kind=folder checked=false"
    if ($EMIT_ROLE_ICONS) { $line += " icon=$($c.Icon)" }
    Write-Output $line
}

# Écrit la ligne [ITEM] d'une appli, rangée sous sa catégorie. Jamais de size= :
# Sindry compterait la taille d'un installeur comme de l'espace libéré.
function Write-AppItem([string] $List, $App, $St, [bool] $Checked) {
    $line = "[ITEM] $List id=$($App.Id) parent=cat.$($App.Category) kind=app name=""$(Format-Field $App.Name)"" publisher=""$(Format-Field $App.Publisher)"""
    if ($St.Version)   { $line += " version=""$(Format-Field $St.Version)""" }
    if ($St.Available) { $line += " to=""$(Format-Field $St.Available)""" }
    if ($St.Icon)      { $line += " exe=""$($St.Icon)""" }
    $icon = $App.Icon
    if (-not $icon) { $icon = $CATEGORIES[$App.Category].Icon }
    if ($EMIT_ROLE_ICONS) { $line += " icon=$icon" }
    if ($EMIT_ICON_URLS -and $App.IconUrl) { $line += " iconurl=""$(Format-Field $App.IconUrl)""" }
    if ($Checked) { $line += ' checked=true' } else { $line += ' checked=false' }
    Write-Output $line
}

# Écrit une liste de l'analyse : chaque catégorie qui y a des applis, dans
# l'ordre du catalogue, puis ses applis par ordre alphabétique. Les notes
# des applis (accès à distance…) suivent la liste qui les contient.
function Write-ListItems([string] $List, [string] $State, $States) {
    $inList = @($APPS_OK | Where-Object { $States[$_.Id].State -eq $State })
    if (-not $inList.Count) { return }
    foreach ($key in $CATEGORIES.Keys) {
        $apps = @($inList | Where-Object { $_.Category -eq $key } | Sort-Object Name)
        if (-not $apps.Count) { continue }
        Write-CategoryItem $List $key
        foreach ($a in $apps) {
            $checked = $false
            if ($State -eq 'update') { $checked = $PRECHECK_UPDATES }
            if ($State -eq 'missing') { $checked = ($PRECHECK_MISSING -contains $a.Id) }
            Write-AppItem $List $a $States[$a.Id] ([bool] $checked)
        }
    }
    foreach ($note in @($inList | Where-Object { $_.Note } | ForEach-Object { $_.Note } | Sort-Object -Unique)) {
        Write-Output "[NOTE] $note $List"
    }
}

# --- 6e. Installation par winget ou le Store --------------------------------

# Les sources utilisables pour une appli, dans l'ordre de $SOURCE_ORDER.
function Get-Sources($App, [bool] $UseStore, [bool] $UseDirect) {
    $list = New-Object System.Collections.Generic.List[string]
    foreach ($s in $SOURCE_ORDER) {
        if ($s -eq 'winget'  -and $WINGET -and $App.WingetId) { $list.Add($s) }
        if ($s -eq 'msstore' -and $UseStore -and $WINGET -and $App.StoreId) { $list.Add($s) }
        if ($s -eq 'direct'  -and $UseDirect -and ($App.Url -or $App.GitHub) -and $App.Signer) { $list.Add($s) }
    }
    return $list.ToArray()
}

# Lance winget pour une appli, sur une source (winget ou msstore), et traduit
# son code de sortie. Les arguments sont passés un par un : aucune valeur
# n'est jamais interprétée comme une commande.
function Invoke-Winget([string] $Op, [string] $PackageId, [string] $Source) {
    $verb = 'install'
    if ($Op -eq 'update') { $verb = 'upgrade' }
    $argList = @($verb, '--id', $PackageId, '--exact', '--source', $Source,
                 '--accept-package-agreements', '--accept-source-agreements', '--disable-interactivity')
    if ($Source -eq 'winget') { $argList += '--silent' }
    if ($Op -eq 'reinstall') { $argList += '--force' }
    if ($Source -eq 'winget' -and @('machine', 'user') -contains $INSTALL_SCOPE) { $argList += @('--scope', $INSTALL_SCOPE) }
    $global:LASTEXITCODE = -1
    $out = @()
    try { $out = @(& $WINGET @argList 2>&1 | ForEach-Object { "$_" }) } catch { $out = @($_.Exception.Message) }
    $hex = Format-Code $LASTEXITCODE
    # Les dernières lignes parlantes de winget (canal Winget, jamais traduit),
    # sans ses barres de progression.
    $logs = New-Object System.Collections.Generic.List[string]
    foreach ($t in @($out | Where-Object { $_ -match '[A-Za-z]{3}' -and $_ -notmatch '[\u2580-\u259F]' } | Select-Object -Last $LOG_TAIL_LINES)) {
        $logs.Add("[LOG] Winget $(Format-Field $t)")
    }
    $r = $WINGET_CODES[$hex]
    if (-not $r) { $r = @{ Code = 'E315' } }
    return New-Result -Ok ([bool] $r.Ok) -Code ([string] $r.Code) -Detail "winget $hex" -Logs $logs -Reboot ([bool] $r.Reboot) -Info ([string] $r.Info)
}

# --- 6f. Téléchargement direct ----------------------------------------------

# Ouvre une adresse HTTPS en suivant au plus $MAX_REDIRECTS redirections,
# chacune vérifiée : une seule étape en HTTP et tout est refusé.
function Open-HttpsResponse([string] $Url) {
    $current = $Url
    for ($i = 0; $i -le $MAX_REDIRECTS; $i++) {
        if ($current -notmatch '^https://') { return @{ Code = 'E401'; Detail = "refused, not HTTPS: $current" } }
        $resp = $null
        try {
            $req = [Net.HttpWebRequest] [Net.WebRequest]::Create($current)
            $req.AllowAutoRedirect = $false
            $req.UserAgent = $USER_AGENT
            $req.Timeout = $DOWNLOAD_TIMEOUT * 1000
            $req.ReadWriteTimeout = $DOWNLOAD_TIMEOUT * 1000
            try { $resp = [Net.HttpWebResponse] $req.GetResponse() }
            catch [Net.WebException] {
                if (-not $_.Exception.Response) { return @{ Code = 'E401'; Detail = $_.Exception.Message } }
                $resp = [Net.HttpWebResponse] $_.Exception.Response
            }
        } catch { return @{ Code = 'E401'; Detail = $_.Exception.Message } }
        $status = [int] $resp.StatusCode
        if ($status -ge 300 -and $status -lt 400) {
            $location = $resp.Headers['Location']
            $resp.Close()
            if (-not $location) { return @{ Code = 'E401'; Detail = "HTTP $status without an address" } }
            $current = ([Uri]::new([Uri] $current, $location)).AbsoluteUri
            continue
        }
        if ($status -ne 200) { $resp.Close(); return @{ Code = 'E401'; Detail = "HTTP $status" } }
        return @{ Code = ''; Response = $resp }
    }
    return @{ Code = 'E401'; Detail = 'too many redirections' }
}

# Lit une petite réponse texte (l'API de GitHub), $JSON_MAX_KB au plus.
function Get-HttpsText([string] $Url) {
    $o = Open-HttpsResponse $Url
    if ($o.Code) { return $o }
    $resp = $o.Response
    try {
        $in = $resp.GetResponseStream()
        $ms = New-Object IO.MemoryStream
        $buf = New-Object byte[] 65536
        while (($n = $in.Read($buf, 0, $buf.Length)) -gt 0) {
            $ms.Write($buf, 0, $n)
            if ($ms.Length -gt ($JSON_MAX_KB * 1KB)) { return @{ Code = 'E402'; Detail = 'answer too large' } }
        }
        return @{ Code = ''; Text = [Text.Encoding]::UTF8.GetString($ms.ToArray()) }
    } catch { return @{ Code = 'E401'; Detail = $_.Exception.Message } }
    finally { $resp.Close() }
}

# Télécharge une adresse HTTPS dans un fichier neuf, ouvert en exclusivité,
# en refusant au-delà de $DOWNLOAD_MAX_MB.
function Save-HttpsFile([string] $Url, [string] $Path) {
    $o = Open-HttpsResponse $Url
    if ($o.Code) { return $o }
    $resp = $o.Response
    $max = [long] $DOWNLOAD_MAX_MB * 1MB
    if ($resp.ContentLength -gt $max) { $resp.Close(); return @{ Code = 'E402'; Detail = 'file too large' } }
    $in = $null
    $file = $null
    try {
        $in = $resp.GetResponseStream()
        $file = [IO.File]::Open($Path, [IO.FileMode]::CreateNew, [IO.FileAccess]::Write, [IO.FileShare]::None)
        $buf = New-Object byte[] 65536
        [long] $total = 0
        while (($n = $in.Read($buf, 0, $buf.Length)) -gt 0) {
            $total += $n
            if ($total -gt $max) { return @{ Code = 'E402'; Detail = 'file too large' } }
            $file.Write($buf, 0, $n)
        }
        if ($total -eq 0) { return @{ Code = 'E402'; Detail = 'empty file' } }
        return @{ Code = ''; Detail = "$total bytes" }
    } catch { return @{ Code = 'E401'; Detail = $_.Exception.Message } }
    finally {
        if ($file) { $file.Close() }
        if ($in) { $in.Close() }
        $resp.Close()
    }
}

# Lit la dernière version publiée d'un projet GitHub et choisit le fichier
# qui correspond à -Asset. Renvoie son adresse, et son empreinte SHA-256
# quand GitHub la publie.
function Get-GitHubAsset($App) {
    $t = Get-HttpsText "$GITHUB_API/$($App.GitHub)/releases/latest"
    if ($t.Code) { return @{ Code = $t.Code; Detail = $t.Detail } }
    $rel = $null
    try { $rel = $t.Text | ConvertFrom-Json } catch { return @{ Code = 'E405'; Detail = 'unreadable answer' } }
    $asset = $null
    foreach ($a in @($rel.assets)) { if ("$($a.name)" -match $App.Asset) { $asset = $a; break } }
    if (-not $asset) { return @{ Code = 'E405'; Detail = "$($App.GitHub) $($rel.tag_name)" } }
    $digest = ''
    if ("$($asset.digest)" -match '^sha256:([0-9a-fA-F]{64})$') { $digest = $Matches[1].ToUpper() }
    return @{ Code = ''; Url = [string] $asset.browser_download_url; Digest = $digest; Detail = "$($rel.tag_name) $($asset.name)" }
}

# Crée un dossier neuf, au nom imprévisible, dont les seuls droits sont ceux
# des Administrateurs et du Système, propriétaire compris : l'installeur ne
# peut pas y être remplacé entre sa vérification et son lancement.
function New-ProtectedFolder {
    $path = Join-Path (Join-Path $SYSTEM_ROOT 'Temp') ('Sindry-410-' + [guid]::NewGuid().ToString('N'))
    try {
        $admins = New-Object System.Security.Principal.SecurityIdentifier('S-1-5-32-544')
        $system = New-Object System.Security.Principal.SecurityIdentifier('S-1-5-18')
        $sec = New-Object System.Security.AccessControl.DirectorySecurity
        $sec.SetAccessRuleProtection($true, $false)                     # aucun droit hérité du dossier parent
        $sec.SetOwner($admins)                                          # propriétaire : les Administrateurs, pas le compte
        foreach ($who in $admins, $system) {
            $sec.AddAccessRule((New-Object System.Security.AccessControl.FileSystemAccessRule($who, 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')))
        }
        [void] [IO.Directory]::CreateDirectory($path, $sec)
        return $path
    } catch { return $null }
}

# Reconnaît un installeur à ses premiers octets : MSI ou exécutable Windows.
function Get-InstallerType([string] $Path) {
    $b = New-Object byte[] 8
    $fs = [IO.File]::OpenRead($Path)
    try { $n = $fs.Read($b, 0, 8) } finally { $fs.Close() }
    if ($n -ge 8 -and $b[0] -eq 0xD0 -and $b[1] -eq 0xCF -and $b[2] -eq 0x11 -and $b[3] -eq 0xE0) { return 'msi' }
    if ($n -ge 2 -and $b[0] -eq 0x4D -and $b[1] -eq 0x5A) { return 'exe' }
    return ''
}

# Dernier recours : télécharge l'installeur de l'éditeur dans un dossier
# protégé, vérifie l'empreinte GitHub puis la signature, et le lance en mode
# silencieux. Ne lance RIEN si la signature n'est pas valide ou n'est pas au
# nom de -Signer. Le dossier est effacé ensuite, quoi qu'il arrive.
function Invoke-DirectInstall($App) {
    $logs = New-Object System.Collections.Generic.List[string]
    $url = $App.Url
    $digest = ''
    if ($App.GitHub) {
        $g = Get-GitHubAsset $App
        if ($g.Code) { return New-Result -Code $g.Code -Detail $g.Detail -Logs $logs }
        $url = $g.Url
        $digest = $g.Digest
        $logs.Add("[LOG] Download GitHub $(Format-Field $g.Detail)")
    }
    $logs.Add("[LOG] Download $(Format-Field $url)")
    $dir = New-ProtectedFolder
    if (-not $dir) { return New-Result -Code 'E408' -Detail "$SYSTEM_ROOT\Temp" -Logs $logs }
    $file = Join-Path $dir 'installer.download'
    $final = ''
    try {
        $dl = Save-HttpsFile $url $file
        if ($dl.Code) { return New-Result -Code $dl.Code -Detail $dl.Detail -Logs $logs }
        $logs.Add("[LOG] Download $($dl.Detail)")
        if ($digest) {
            $hash = (Get-FileHash -LiteralPath $file -Algorithm SHA256).Hash
            if ($hash -ne $digest) { return New-Result -Code 'E406' -Detail "expected $digest" -Logs $logs }
            $logs.Add('[LOG] Download GitHub fingerprint matches')
        }
        $type = Get-InstallerType $file
        if (-not $type) { return New-Result -Code 'E402' -Detail 'not an installer' -Logs $logs }
        $final = Join-Path $dir "installer.$type"
        Move-Item -LiteralPath $file -Destination $final -ErrorAction Stop
        # La signature est vérifiée sur le fichier même qui sera lancé.
        $check = Get-SignatureCheck $final $App.Signer
        $logs.Add("[LOG] Download Signature $(Format-Field $check.Subject)")
        if ($check.Result -eq 'invalid') { return New-Result -Code 'E403' -Detail $check.Subject -Logs $logs }
        if ($check.Result -eq 'mismatch') { return New-Result -Code 'E404' -Detail "expected $($App.Signer)" -Logs $logs }
        if ($type -eq 'msi') {
            $argList = @('/i', "`"$final`"", '/qn', '/norestart')
            if ($App.Arguments) { $argList += $App.Arguments }
            $p = Start-Process -FilePath (Join-Path $SYSTEM32 'msiexec.exe') -ArgumentList $argList -Wait -PassThru -WindowStyle Hidden
        } else {
            $sp = @{ FilePath = $final; Wait = $true; PassThru = $true; WindowStyle = 'Hidden' }
            if ($App.Arguments) { $sp.ArgumentList = $App.Arguments }
            $p = Start-Process @sp
        }
        $exit = [int] $p.ExitCode
        $r = $INSTALLER_CODES[$exit]
        if (-not $r) { return New-Result -Code 'E407' -Detail "exit code $exit" -Logs $logs }
        return New-Result -Ok ([bool] $r.Ok) -Code ([string] $r.Code) -Detail "exit code $exit" -Logs $logs -Reboot ([bool] $r.Reboot) -Info ([string] $r.Info)
    } catch {
        return New-Result -Code 'E407' -Detail $_.Exception.Message -Logs $logs
    } finally {
        foreach ($f in @($file, $final)) {
            if ($f -and (Test-Path -LiteralPath $f -ErrorAction SilentlyContinue)) { Remove-Item -LiteralPath $f -Force -ErrorAction SilentlyContinue }
        }
        # Effacement NON récursif : seulement si l'installeur n'a rien laissé.
        try { [IO.Directory]::Delete($dir, $false) } catch { }
    }
}

# Essaie une source pour une appli et renvoie le résultat.
function Invoke-Source([string] $Source, $Job) {
    if ($Source -eq 'winget')  { return Invoke-Winget $Job.Op $Job.App.WingetId 'winget' }
    if ($Source -eq 'msstore') { return Invoke-Winget $Job.Op $Job.App.StoreId 'msstore' }
    return Invoke-DirectInstall $Job.App
}

# --- 6g. Bilan ---------------------------------------------------------------

# Écrit le bilan : une ligne par application, en colonnes alignées, puis les totaux.
function Write-Summary($Jobs) {
    $w = 11
    foreach ($j in $Jobs) { if ($j.App.Name.Length -gt $w) { $w = $j.App.Name.Length } }
    Write-Output ''
    Write-Output '[INFO] Summary'
    Write-Output ''
    Write-Output ('[INFO]   {0}  {1,-11}  {2,-9}  {3}' -f 'Application'.PadRight($w), 'Action', 'Result', 'Source')
    Write-Output ('[INFO]   {0}  {1}  {2}  {3}' -f ('-' * $w), ('-' * 11), ('-' * 9), ('-' * 15))
    foreach ($j in $Jobs) {
        Write-Output ('[INFO]   {0}  {1,-11}  {2,-9}  {3}' -f $j.App.Name.PadRight($w), $j.Op, $j.Result, $j.Source)
    }
    $done = @($Jobs | Where-Object { $_.Result -eq 'done' }).Count
    $failed = @($Jobs | Where-Object { $_.Result -eq 'failed' }).Count
    $simulated = @($Jobs | Where-Object { $_.Result -eq 'simulated' }).Count
    Write-Output ''
    Write-Output "[INFO] $done done, $failed failed, $simulated simulated"
}

# =============================================================================
#  7. PRÉPARATION
# =============================================================================
$SYSTEM_ROOT   = Get-TrustedPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' 'SystemRoot' 'C:\Windows'            # dossier de Windows, lu dans HKLM
$SYSTEM32      = Join-Path $SYSTEM_ROOT 'System32'                                                                          # outils du système (msiexec)
$PROGRAM_FILES = Get-TrustedPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion' 'ProgramFilesDir' 'C:\Program Files'    # Program Files, lu dans HKLM
$WINGET        = $null                                                                                                      # chemin vérifié de winget.exe (Resolve-Winget)
$INVENTORY     = $null                                                                                                      # ce que winget reconnaît : id -> nom, version, version disponible
$APPS_OK       = New-Object System.Collections.Generic.List[object]                                                        # applis du catalogue sans faute
$SOURCE_NAMES  = @{ winget = 'winget'; msstore = 'Microsoft Store'; direct = 'direct download' }                           # noms des sources dans le journal
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12   # HTTPS moderne pour les téléchargements directs

Test-Catalogue

# =============================================================================
#  8. ANALYSE  —  on décrit, on ne modifie RIEN
# =============================================================================
if ($env:SINDRY_MODE -eq 'scan') {

    $quick  = ("$($CONFIG.QuickList)" -eq 'True')    # liste rapide : aucune détection
    $states = @{}                                     # id -> état (update, installed, missing), version, icône

    if ($quick) {
        Write-Output '[STEP] 1/2 Quick list - nothing is checked on this PC'
        foreach ($a in $APPS_OK) { $states[$a.Id] = [pscustomobject] @{ State = 'missing'; Version = ''; Available = ''; Icon = '' } }
        Write-Output '[NOTE] QuickNote'
        Write-Output '[STEP] 2/2 Preparing the list'
    } else {
        Write-Output '[STEP] 1/3 Reading the applications Windows knows about'
        $registry = @(Get-RegistryApps)
        Write-Output "[LOG] Detect Windows lists $($registry.Count) programs"
        Write-Output '[STEP] 2/3 Asking winget what is installed and what can be updated'
        Resolve-Winget
        if ($WINGET) { Read-WingetInventory } else { Write-Output '[NOTE] NoWingetNote' }
        foreach ($a in $APPS_OK) { $states[$a.Id] = Get-AppState $a $INVENTORY $registry }
        Write-Output '[STEP] 3/3 Preparing the list'
    }

    Write-Output '[NOTE] PickNote'
    Write-Output '[NOTE] LicenceNote'
    Write-ListItems 'Updates'   'update'    $states
    Write-ListItems 'Missing'   'missing'   $states
    Write-ListItems 'Installed' 'installed' $states

    $count = @{ update = 0; missing = 0; installed = 0 }
    foreach ($s in $states.Values) { $count[$s.State]++ }
    Write-Output "[LOG] Detect $($APPS_OK.Count) applications: $($count.update) to update, $($count.missing) missing, $($count.installed) installed"
    exit 0
}

# =============================================================================
#  9. ACTION  —  uniquement ce qui a été coché
# =============================================================================
$SafeTest  = ("$($CONFIG.SafeTest)" -eq 'True')     # simulation : rien n'est lancé
$useStore  = ("$($CONFIG.UseStore)" -eq 'True')     # le Microsoft Store en secours
$useDirect = ("$($CONFIG.UseDirect)" -eq 'True')    # le téléchargement de l'éditeur en dernier recours

# Sindry renvoie des ids : chacun ne sert qu'à retrouver une appli du
# catalogue. Un id inconnu est ignoré, il ne sert jamais à bâtir quoi que ce soit.
$byId = @{}                                                         # id -> appli du catalogue
foreach ($a in $APPS_OK) { $byId[$a.Id] = $a }
$jobs = New-Object System.Collections.Generic.List[object]          # ce qu'il y a à faire, une entrée par appli
$taken = @{}                                                        # ids déjà retenus (une appli n'est traitée qu'une fois)
foreach ($pair in @(@('Updates', 'update'), @('Missing', 'install'), @('Installed', 'reinstall'))) {
    foreach ($raw in @($CONFIG[$pair[0]])) {
        $id = "$raw"
        if (-not $id -or $taken.ContainsKey($id)) { continue }
        if (-not $byId.ContainsKey($id)) { Write-Output "[WARN] Unknown application ignored: $(Format-Field $id)"; continue }
        $taken[$id] = $true
        $jobs.Add([pscustomobject] @{ App = $byId[$id]; Op = $pair[1]; Result = 'skipped'; Source = '-' })
    }
}

# Les composants (.NET, Visual C++) d'abord : les autres applis en dépendent.
$ordered = @($jobs | Sort-Object @{ Expression = { if ($INSTALL_FIRST -contains $_.App.Category) { 0 } else { 1 } } }, @{ Expression = { $_.App.Name } })

if (-not $ordered.Count) {
    Write-Output '[INFO] Nothing was selected'
    Write-Output '[DONE] Nothing to install'
    exit 0
}

Resolve-Winget
if ($SafeTest) { Write-Output '[INFO] SafeTest - nothing will be downloaded or installed' }

$VERBS     = @{ update = 'Updating'; install = 'Installing'; reinstall = 'Reinstalling' }   # libellés du journal, par action
$DONE      = @{ update = 'updated'; install = 'installed'; reinstall = 'reinstalled' }      # libellés de réussite, par action
$rebootFor = New-Object System.Collections.Generic.List[string]                           # applis qui demandent un redémarrage
$step      = 0                                                                              # numéro de l'appli en cours
$total     = $ordered.Count                                                                 # nombre d'applis à traiter

foreach ($job in $ordered) {
    $step++
    $app = $job.App
    Write-Output ''
    Write-Output "[STEP] $step/$total $($VERBS[$job.Op]) $($app.Name)"

    $sources = @(Get-Sources $app $useStore $useDirect)
    if (-not $sources.Count) {
        Write-Err 'E316' "$($app.Name): no source left to try"
        $job.Result = 'failed'
        continue
    }
    if ($SafeTest) {
        Write-Output "[INFO]   SafeTest - would try: $(($sources | ForEach-Object { $SOURCE_NAMES[$_] }) -join ', then ')"
        $job.Result = 'simulated'
        $job.Source = $SOURCE_NAMES[$sources[0]]
        continue
    }

    $last = $null
    $used = ''
    foreach ($src in $sources) {
        $used = $src
        Write-Output "[INFO]   Source: $($SOURCE_NAMES[$src])"
        try { $last = Invoke-Source $src $job } catch { $last = New-Result -Code 'E315' -Detail $_.Exception.Message }
        foreach ($l in $last.Logs) { Write-Output $l }
        if ($last.Ok) { break }
        # Un échec propre à la source (absente, téléchargement, refus) : on passe
        # à la suivante. Un échec propre au PC (appli ouverte, disque plein) : on arrête.
        if (($NEXT_SOURCE_ON -notcontains $last.Code) -or ($src -eq $sources[-1])) { break }
        Write-Warn $last.Code "$($app.Name) - $($SOURCE_NAMES[$src]): $($last.Detail)"
    }

    $job.Source = $SOURCE_NAMES[$used]
    if ($last.Ok) {
        if ($last.Code) { Write-Warn $last.Code "$($app.Name): $($last.Detail)" }
        $what = $DONE[$job.Op]
        if ($last.Info) { $what = $last.Info }
        Write-Output "[OK]     $($app.Name) $what"
        $job.Result = 'done'
        if ($last.Reboot) { $rebootFor.Add($app.Name) }
    } elseif ($NEXT_SOURCE_ON -contains $last.Code) {
        Write-Warn $last.Code "$($app.Name) - $($SOURCE_NAMES[$used]): $($last.Detail)"
        Write-Err 'E316' $app.Name
        $job.Result = 'failed'
    } else {
        Write-Err $last.Code "$($app.Name) - $($SOURCE_NAMES[$used]): $($last.Detail)"
        $job.Result = 'failed'
    }
    Write-Output "[CKPT] $($app.Name) finished - safe to stop from here"
}

# --- Bilan ------------------------------------------------------------------
Write-Summary $ordered
if ($rebootFor.Count) { Write-Output "[REBOOT] Restart Windows to finish installing: $($rebootFor -join ', ')" }
if ($SafeTest) { Write-Output '[DONE] Simulation finished - nothing was installed' }
else { Write-Output '[DONE] Applications processed' }

# Le verdict vient du code de sortie, jamais du seul démarrage.
if ($ErrCount -gt 0) { exit 1 } else { exit 0 }

# =============================================================================
#  10. ANNEXES
# =============================================================================
#  TROUVER LES IDENTIFIANTS
#    winget  :  winget search "nom"                    -> colonne ID
#    Store   :  winget search "nom" --source msstore   -> 9… ou XP…
#               puis vérifiez l'éditeur : winget show --id <id> --source msstore
#
#  TROUVER L'ÉDITEUR ATTENDU (-Signer) d'un installeur
#    Clic droit sur le fichier > Propriétés > Signatures numériques > Nom du
#    signataire. Ou en PowerShell :
#      (Get-AuthenticodeSignature .\setup.exe).SignerCertificate.Subject
#    -Signer doit être EXACTEMENT la valeur de CN= ou de O= (ex. 'Valve Corp.').
#    Un installeur non signé (celui de 7-Zip, par exemple) ne peut pas avoir de
#    source directe : le script refusera toujours de le lancer.
#
#  OPTIONS SILENCIEUSES (-Arguments) les plus courantes
#    NSIS          /S
#    Inno Setup    /VERYSILENT /NORESTART
#    MSI           rien : le script ajoute /qn /norestart
#    Microsoft     /install /quiet /norestart  (composants .NET, Visual C++)
#    Une option fausse peut laisser l'installeur attendre une réponse dans une
#    fenêtre cachée : essayez-la d'abord à la main.
#
#  ÉVOLUTIONS DE SINDRY ATTENDUES
#    E4  icon=     icône de secours Lucide          -> $EMIT_ROLE_ICONS = $true
#    E6  iconurl=  icône officielle téléchargée     -> $EMIT_ICON_URLS  = $true
#    Tant qu'elles n'existent pas, Sindry écarterait ces champs en les signalant
#    comme inconnus : les deux drapeaux restent à $false.
#
#  CODES DE SORTIE DU SCRIPT
#    0  tout ce qui était coché a réussi (ou la simulation est finie)
#    1  au moins une application n'a pas pu être traitée (voir les [ERR])
