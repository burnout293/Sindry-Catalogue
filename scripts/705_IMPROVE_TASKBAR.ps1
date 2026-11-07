## SINDRY:START
## id            : 6df6b03f-0bcc-4d97-a397-5d70383b0e89
## lang          : en
## title         : Improve the taskbar and search
## desc          : Cleans up the taskbar and the Start search - hides what you do not use and stops web results
## category      : customize
## icon          : layout-grid
## tags          : taskbar, search, bing, widgets, news and interests, task view, copilot, chat, alignment
## version       : 1.3
## author        : burnout293
## created       : 2026-10-06
## updated       : 2026-11-07
## admin         : true
## risk          : low
## duration      : fast
## reversible    : false
## interruptible : true
## reboot        : false
## engine        : auto
## scan          : true
## SINDRY:END

## SINDRY:OPTIONS
## Mode            : [select] [scan] Action — apply the clean-up or restore the Windows defaults
##   apply         : Apply the clean-up
##   restore       : Restore the Windows defaults
## Items           : [multi]  What to change — pick one or more
##   websearch     : No web results in search — stops Bing results in Start search
##   hidesearchbox : Hide the search box — removes the search field from the taskbar
##   taskview      : Hide the Task View button
##   widgets       : Hide Widgets — the news and weather button
##   chat          : Hide Chat — the Meet Now / Teams chat button
##   copilot       : Hide Copilot — removes the Copilot button
##   leftalign     : Align the taskbar to the left — Windows 11 style back to classic
## RestartExplorer : [bool]   Apply immediately — restarts the Explorer so changes show at once
## SafeTest        : [bool]   Safe test — simulates every change, modifies nothing
## SINDRY:END

## SINDRY:REPORT
## WidgetsNote : [note:info] Windows protects the Widgets button: to hide it, the script turns Widgets off with a Windows policy, for every user of this PC.
## E101 : [error] Administrator rights are missing, so a Windows policy could not be changed — Run the action again as an administrator
## E201 : [error] A taskbar or search setting could not be changed — The details show which one; restart the PC, then run the action again
## E202 : [error] A Windows policy could not be removed — Restart the PC, then run the action again
## W301 : [error] Windows protects the Widgets button, so Widgets were turned off with a Windows policy instead, for every user of this PC — To bring them back, run this action again with Restore
## E302 : [error] Windows protects the Widgets button and the policy fallback is switched off in the script, so Widgets are still shown — Hide them yourself: right-click the taskbar, then Taskbar settings (Windows 11) or News and interests (Windows 10)
## E303 : [error] Windows protects the Widgets button, so it could not be shown again — Show it yourself: right-click the taskbar, Taskbar settings, Widgets
## W304 : [error] Windows Home may ignore the Widgets policy — If Widgets are still shown after a restart, hide them yourself: right-click the taskbar, then Taskbar settings
## E901 : [error] Unexpected error — The details show what failed; run the action again
## SINDRY:END

## SINDRY:LANG fr
## title           : Améliorer la barre des tâches et la recherche
## desc            : Épure la barre des tâches et la recherche de Démarrer - masque l'inutile et coupe les résultats web
## Mode            : Action — appliquer le nettoyage ou rétablir les réglages de Windows
##   apply         : Appliquer le nettoyage
##   restore       : Rétablir les réglages de Windows
## Items           : Quoi modifier — un ou plusieurs éléments
##   websearch     : Pas de résultats web dans la recherche — coupe les résultats Bing dans Démarrer
##   hidesearchbox : Masquer la zone de recherche — retire le champ de recherche de la barre des tâches
##   taskview      : Masquer le bouton Vue des tâches
##   widgets       : Masquer les Widgets — le bouton actualités et météo
##   chat          : Masquer Chat — le bouton Discussion / Teams
##   copilot       : Masquer Copilot — retire le bouton Copilot
##   leftalign     : Aligner la barre des tâches à gauche — retour au style classique sous Windows 11
## RestartExplorer : Appliquer tout de suite — redémarre l'Explorateur pour un effet immédiat
## SafeTest        : Test sans risque — simule chaque modification, ne change rien
## WidgetsNote     : Windows protège le bouton Widgets : pour le masquer, le script coupe les Widgets par une stratégie Windows, pour tous les comptes de ce PC.
## E101            : Les droits administrateur manquent, une stratégie Windows n'a donc pas pu être modifiée — Relancez l'action en administrateur
## E201            : Un réglage de la barre des tâches ou de la recherche n'a pas pu être modifié — Le détail indique lequel ; redémarrez le PC, puis relancez l'action
## E202            : Une stratégie Windows n'a pas pu être retirée — Redémarrez le PC, puis relancez l'action
## W301            : Windows protège le bouton Widgets : ils ont donc été coupés par une stratégie Windows, pour tous les comptes de ce PC — Pour les retrouver, relancez cette action avec « Rétablir »
## E302            : Windows protège le bouton Widgets et le repli par stratégie est désactivé dans le script : les Widgets restent affichés — Masquez-les vous-même : clic droit sur la barre des tâches, puis Paramètres de la barre des tâches (Windows 11) ou Actualités et centres d'intérêt (Windows 10)
## E303            : Windows protège le bouton Widgets : il n'a pas pu être réaffiché — Réaffichez-le vous-même : clic droit sur la barre des tâches, Paramètres de la barre des tâches, Widgets
## W304            : Windows Famille peut ignorer la stratégie des Widgets — S'ils sont encore affichés après un redémarrage, masquez-les vous-même : clic droit sur la barre des tâches, puis Paramètres de la barre des tâches
## E901            : Erreur inattendue — Le détail indique ce qui a échoué ; relancez l'action
## SINDRY:END

# =============================================================================
#  SOMMAIRE
# =============================================================================
#   1. RÉSUMÉ        ce que fait le script, et le cas des Widgets
#   2. VARIABLES     les réglages, remplacés par ceux de Sindry
#   3. DRAPEAUX      les réglages internes, à ajuster d'un coup d'œil
#   4. RÉGLAGES      les valeurs du registre, élément par élément   <- À COMPLÉTER ICI
#   5. FONCTIONS     diagnostic, lecture, écriture, Widgets, bilan
#   6. PRÉPARATION   version de Windows, édition, droits
#   7. ANALYSE       dit ce qui est déjà en place, sans rien modifier
#   8. ACTION        applique ou rétablit ce qui est coché, puis le bilan
#   9. ANNEXES       vérifier à la main, limites
# =============================================================================

# =============================================================================
#  1. RÉSUMÉ
# =============================================================================
#  CE QUE FAIT LE SCRIPT
#    Il épure la barre des tâches et la recherche du compte courant (HKCU) :
#    résultats web, zone de recherche, Vue des tâches, Widgets, Chat, Copilot,
#    alignement. « Rétablir » remet les valeurs d'origine de Windows ; une
#    valeur de stratégie, qui n'existe pas d'origine, est supprimée.
#
#  LE CAS DES WIDGETS (1.2)
#    Le pilote UCPD de Windows (User Choice Protection Driver, livré par les
#    mises à jour depuis 2024, sous Windows 10 comme sous Windows 11) refuse à
#    PowerShell d'écrire la valeur du bouton Widgets, même en administrateur :
#    « Tentative d'exécution d'une opération non autorisée ». Ce ne sont pas les
#    droits sur la clé qui bloquent : le pilote regarde QUEL programme écrit.
#    Le script ne contourne jamais UCPD (renommer PowerShell, couper le pilote) :
#    c'est une protection de Windows. Il prend la voie prévue pour les
#    administrateurs, une stratégie de l'ordinateur (HKLM) :
#      - Windows 11 : il essaie d'abord TaskbarDa ; si Windows refuse, il pose
#        la stratégie « Autoriser les widgets » = 0 (Dsh\AllowNewsAndInterests) ;
#      - Windows 10 : « Actualités et centres d'intérêt » est protégé de la même
#        façon (ShellFeedsTaskbarViewMode) et l'Explorateur remet la valeur : le
#        script pose directement la stratégie EnableFeeds = 0.
#    La stratégie COUPE les Widgets (pas seulement le bouton), pour TOUS les
#    comptes du PC : la sortie le dit (W301). « Rétablir » la retire.
#
#  DROITS
#    Les stratégies (HKLM, et HKCU\Software\Policies) ne s'écrivent qu'en
#    administrateur : admin = true depuis la 1.2. Sans les droits, les autres
#    réglages sont tout de même appliqués, et chaque stratégie manquée sort en
#    E101.
#
#  MOTEUR : PowerShell 5.1 ou 7 (engine : auto).

# =============================================================================
#  2. VARIABLES  (valeurs par défaut ; Sindry les remplace par l'override)
# =============================================================================
$CONFIG = @{
    Mode            = "apply"     # [select] apply = nettoyer, restore = rétablir les valeurs de Windows
    Items           = @("websearch", "hidesearchbox", "taskview", "widgets", "chat", "copilot", "leftalign")  # [multi] éléments cochés d'office
    RestartExplorer = $true       # redémarre l'Explorateur à la fin, pour un effet immédiat
    SafeTest        = $false      # simulation : lit les valeurs, ne modifie rien
}

# --- Sindry override (ne pas supprimer) ---
if ($env:SINDRY_CONFIG) {
    ($env:SINDRY_CONFIG | ConvertFrom-Json).PSObject.Properties |
        ForEach-Object { $CONFIG[$_.Name] = $_.Value }
}

# =============================================================================
#  3. DRAPEAUX  (réglages internes)
# =============================================================================
$ALLOW_POLICY_FALLBACK = $true    # Widgets protégés par Windows : les couper par stratégie (tous les comptes) ; $false = E302, rien de plus
$EXPLORER_RESTART_WAIT = 1        # secondes d'attente avant de relancer l'Explorateur s'il ne repart pas seul
$WIN11_FIRST_BUILD     = 22000    # première build de Windows 11 : en dessous, c'est Windows 10
$SCAN_ITEMS = @('websearch', 'hidesearchbox', 'taskview', 'widgets', 'chat', 'copilot', 'leftalign')  # éléments décrits par l'analyse, dans cet ordre

# =============================================================================
#  4. RÉGLAGES  (chaque valeur : Off = cible du nettoyage, Default = valeur de
#     Windows, $null = « valeur absente » ; Policy = stratégie, admin requis)
# =============================================================================
$adv     = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'  # boutons et alignement de la barre des tâches
$search  = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search'             # recherche de Démarrer
$feeds   = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Feeds'              # actualités de Windows 10, réglage du compte
$polExp  = 'HKCU:\Software\Policies\Microsoft\Windows\Explorer'                 # stratégie de l'Explorateur, pour ce compte
$polCop  = 'HKCU:\Software\Policies\Microsoft\Windows\WindowsCopilot'           # stratégie de Copilot, pour ce compte
$polDsh  = 'HKLM:\SOFTWARE\Policies\Microsoft\Dsh'                               # stratégie « Autoriser les widgets » (Windows 11)
$polFeed = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds'             # stratégie « Actualités et centres d'intérêt » (Windows 10)

# Éléments ordinaires : leurs valeurs s'appliquent telles quelles.
$Definitions = @{
    websearch = @{ Label = 'No web results in search'; Values = @(
        @{ Path = $search; Name = 'BingSearchEnabled';           Off = 0; Default = 1;     Policy = $false },
        @{ Path = $polExp; Name = 'DisableSearchBoxSuggestions'; Off = 1; Default = $null; Policy = $true }
    ) }
    hidesearchbox = @{ Label = 'Hide the search box'; Values = @(
        @{ Path = $search; Name = 'SearchboxTaskbarMode'; Off = 0; Default = 3; Policy = $false }
    ) }
    taskview = @{ Label = 'Hide the Task View button'; Values = @(
        @{ Path = $adv; Name = 'ShowTaskViewButton'; Off = 0; Default = 1; Policy = $false }
    ) }
    widgets = @{ Label = 'Hide Widgets'; Values = @() }   # traité à part : Invoke-Widgets
    chat = @{ Label = 'Hide Chat'; Values = @(
        @{ Path = $adv; Name = 'TaskbarMn'; Off = 0; Default = 1; Policy = $false }
    ) }
    copilot = @{ Label = 'Hide Copilot'; Values = @(
        @{ Path = $adv;    Name = 'ShowCopilotButton';     Off = 0; Default = 1;     Policy = $false },
        @{ Path = $polCop; Name = 'TurnOffWindowsCopilot'; Off = 1; Default = $null; Policy = $true }
    ) }
    leftalign = @{ Label = 'Align the taskbar to the left'; Values = @(
        @{ Path = $adv; Name = 'TaskbarAl'; Off = 0; Default = 1; Policy = $false }
    ) }
}

# Widgets : le bouton (protégé par UCPD) et les deux stratégies de repli.
$WidgetsButton = @{ Path = $adv;     Name = 'TaskbarDa';                 Off = 0; Default = 1;     Policy = $false }  # bouton Widgets de Windows 11
$WidgetsPolicy = @{ Path = $polDsh;  Name = 'AllowNewsAndInterests';     Off = 0; Default = $null; Policy = $true }   # stratégie de Windows 11
$FeedsPolicy   = @{ Path = $polFeed; Name = 'EnableFeeds';               Off = 0; Default = $null; Policy = $true }   # stratégie de Windows 10
$FeedsView     = @{ Path = $feeds;   Name = 'ShellFeedsTaskbarViewMode'; Off = 2; Default = $null; Policy = $false }  # Windows 10, lu seulement : 2 = masqué par l'utilisateur

# =============================================================================
#  5. FONCTIONS
# =============================================================================

# Écrit le détail d'une erreur attrapée, en mode diagnostic seulement (SINDRY_DIAG=1).
# Reçoit l'enregistrement d'erreur ($_) ; ne renvoie rien.
function Write-Diag($ErrorRecord) {
    if ($env:SINDRY_DIAG -ne '1') { return }
    $e = $ErrorRecord.Exception
    Write-Host ("[LOG] Diag {0} HResult=0x{1:X8}" -f $e.GetType().FullName, $e.HResult)
    Write-Host "[LOG] Diag $($ErrorRecord.CategoryInfo)"
    Write-Host "[LOG] Diag $($ErrorRecord.InvocationInfo.PositionMessage -replace '\s+', ' ')"
    if ($e.InnerException) { Write-Host "[LOG] Diag Inner: $($e.InnerException.Message)" }
}

# Donne le chemin complet d'une valeur, tel que regedit l'affiche.
# Reçoit la définition ; renvoie « HKCU\...\Nom ».
function Format-Key($V) {
    return "$($V.Path -replace ':', '')\$($V.Name)"
}

# Lit une valeur du registre.
# Reçoit la définition ; renvoie la valeur, ou $null si elle est absente.
function Get-Value($V) {
    return (Get-ItemProperty -LiteralPath $V.Path -Name $V.Name -ErrorAction SilentlyContinue).($V.Name)
}

# Dit si une valeur est déjà à la cible.
# Reçoit la définition et la cible ($null = absente) ; renvoie $true ou $false.
function Test-Target($V, $Wanted) {
    $current = Get-Value $V
    if ($null -eq $Wanted) { return ($null -eq $current) }
    if ($null -eq $current) { return $false }
    try { return ([int]$current -eq $Wanted) } catch { return $false }
}

# Amène une valeur à sa cible : l'écrit, ou la supprime si la cible est $null.
# Reçoit la définition, la cible et -Protected (un refus de Windows est alors
# attendu : il n'est pas compté comme erreur, l'appelant prend le relais).
# Renvoie 'already', 'simulated', 'done', 'protected' ou 'failed'.
function Set-Target {
    param($V, $Wanted, [switch] $Protected)
    $current = Get-Value $V

    # Déjà à la cible : rien à faire.
    if (Test-Target $V $Wanted) {
        if ($null -eq $Wanted) { Write-Host "[OK]   $($V.Name) not set - nothing to remove" }
        else { Write-Host "[OK]   $($V.Name) already $Wanted" }
        return 'already'
    }

    # Simulation : on dit seulement ce qui serait fait.
    if ($SafeTest) {
        $was = if ($null -eq $current) { 'not set' } else { "$current" }
        if ($null -eq $Wanted) { Write-Host "[INFO] SafeTest - would remove $($V.Name) (currently $was)" }
        else { Write-Host "[INFO] SafeTest - would set $($V.Name) = $Wanted (currently $was)" }
        $script:simulated++
        return 'simulated'
    }

    # Une stratégie ne s'écrit qu'en administrateur : inutile d'essayer sans.
    if ($V.Policy -and -not $IsAdmin) {
        Write-Host "[ERR]  E101 $(Format-Key $V): administrator rights are required"
        $script:errors++
        return 'failed'
    }

    try {
        if ($null -eq $Wanted) {
            Remove-ItemProperty -LiteralPath $V.Path -Name $V.Name -ErrorAction Stop
            Write-Host "[OK]   $($V.Name) removed"
        } else {
            if (-not (Test-Path -LiteralPath $V.Path)) { New-Item -Path $V.Path -Force -ErrorAction Stop | Out-Null }
            Set-ItemProperty -LiteralPath $V.Path -Name $V.Name -Value $Wanted -Type DWord -ErrorAction Stop
            Write-Host "[OK]   $($V.Name) = $Wanted"
        }
        $script:changed++
        return 'done'
    } catch {
        # Refus de Windows : UCPD lève UnauthorizedAccessException, une ACL SecurityException.
        $denied = ($_.Exception -is [System.UnauthorizedAccessException]) -or ($_.Exception -is [System.Security.SecurityException])
        if ($Protected -and $denied) {
            Write-Host "[INFO] $($V.Name) is protected by Windows (UCPD): $($_.Exception.Message)"
            Write-Diag $_
            return 'protected'
        }
        $code = if ($null -eq $Wanted) { 'E202' } else { 'E201' }
        Write-Host "[ERR]  $code $(Format-Key $V): $($_.Exception.GetType().Name) - $($_.Exception.Message)"
        Write-Diag $_
        $script:errors++
        return 'failed'
    }
}

# Repli des Widgets : les coupe par la stratégie de l'ordinateur (tous les comptes).
# Reçoit la définition de la stratégie (Windows 10 ou 11) ; ne renvoie rien.
function Use-WidgetsPolicy($Policy) {
    if (-not $ALLOW_POLICY_FALLBACK) {
        Write-Host "[ERR]  E302 Widgets: protected by Windows, and the policy fallback is switched off"
        $script:errors++
        return
    }
    if ($SafeTest) { Write-Host "[INFO] SafeTest - Widgets are protected by Windows: the policy below would turn them off for every user" }
    $result = Set-Target $Policy $Policy.Off
    if ($result -eq 'done') {
        Write-Host "[WARN] W301 Widgets turned off by the policy $(Format-Key $Policy) = 0 - applies to every user of this PC"
    }
    if ($IsHome -and ($result -eq 'done' -or $result -eq 'already')) {
        Write-Host "[WARN] W304 Windows edition '$Edition' may ignore this policy"
    }
    if ($result -ne 'failed') { $script:widgetsByPolicy = $true }
}

# Masque ou réaffiche les Widgets selon la version de Windows (voir RÉSUMÉ).
# Ne reçoit rien (lit $Restore et $IsWin11) ; ne renvoie rien.
function Invoke-Widgets {
    if ($IsWin11) {
        if ($Restore) {
            Set-Target $WidgetsPolicy $WidgetsPolicy.Default | Out-Null
            # Absent ou 1 : le bouton est déjà affiché, comme à l'origine.
            if (-not (Test-Target $WidgetsButton $WidgetsButton.Off)) {
                Write-Host "[OK]   TaskbarDa is not 0 - the Widgets button is shown"
                return
            }
            if ($SafeTest -and $UcpdRunning) { Write-Host "[INFO] SafeTest - Windows may refuse the next change (UCPD)" }
            $result = Set-Target $WidgetsButton $WidgetsButton.Default -Protected
            if ($result -eq 'protected') {
                Write-Host "[ERR]  E303 $(Format-Key $WidgetsButton): blocked by Windows (UCPD)"
                $script:errors++
            }
            return
        }
        # Déjà coupés par la stratégie : le bouton n'a plus d'effet.
        if (Test-Target $WidgetsPolicy $WidgetsPolicy.Off) {
            Write-Host "[OK]   AllowNewsAndInterests already 0 - Widgets are turned off by policy"
            $script:widgetsByPolicy = $true
            return
        }
        if ($SafeTest -and $UcpdRunning -and -not (Test-Target $WidgetsButton $WidgetsButton.Off)) {
            # En simulation rien n'est écrit : on suppose le refus dès qu'UCPD tourne.
            Use-WidgetsPolicy $WidgetsPolicy
            return
        }
        $result = Set-Target $WidgetsButton $WidgetsButton.Off -Protected
        if ($result -eq 'protected') { Use-WidgetsPolicy $WidgetsPolicy }
        return
    }

    # Windows 10 : « Actualités et centres d'intérêt ».
    if ($Restore) {
        Set-Target $FeedsPolicy $FeedsPolicy.Default | Out-Null
        return
    }
    if (Test-Target $FeedsView $FeedsView.Off) {
        Write-Host "[OK]   ShellFeedsTaskbarViewMode already 2 - news and interests hidden for this user"
        return
    }
    Use-WidgetsPolicy $FeedsPolicy
}

# Dit si les Widgets sont déjà dans l'état voulu par le Mode.
# Ne reçoit rien ; renvoie $true ou $false.
function Test-WidgetsDone {
    if ($IsWin11) {
        if ($Restore) { return ((Test-Target $WidgetsPolicy $null) -and -not (Test-Target $WidgetsButton 0)) }
        return ((Test-Target $WidgetsButton 0) -or (Test-Target $WidgetsPolicy 0))
    }
    if ($Restore) { return (Test-Target $FeedsPolicy $null) }
    return ((Test-Target $FeedsPolicy 0) -or (Test-Target $FeedsView 2))
}

# Dit si un élément est déjà dans l'état voulu par le Mode.
# Reçoit la clé de l'élément ; renvoie $true ou $false.
function Test-ItemDone($Key) {
    if ($Key -eq 'widgets') { return (Test-WidgetsDone) }
    foreach ($v in $Definitions[$Key].Values) {
        $wanted = if ($Restore) { $v.Default } else { $v.Off }
        if (-not (Test-Target $v $wanted)) { return $false }
    }
    return $true
}

# =============================================================================
#  6. PRÉPARATION
# =============================================================================
# Toute erreur imprévue : un code, le détail, et un échec franc.
trap {
    Write-Host "[ERR]  E901 $($_.Exception.GetType().Name) - $($_.Exception.Message)"
    Write-Diag $_
    exit 1
}

$SafeTest = ("$($CONFIG.SafeTest)" -eq 'True')   # simulation demandée
$Restore  = ($CONFIG.Mode -eq 'restore')         # rétablir plutôt que nettoyer
$errors          = 0                             # erreurs comptées
$changed         = 0                             # valeurs réellement modifiées
$simulated       = 0                             # valeurs qui le seraient (SafeTest)
$widgetsByPolicy = $false                        # les Widgets passent par une stratégie

# Version et édition lues dans HKLM, pas dans l'environnement.
$nt          = Get-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -ErrorAction SilentlyContinue
$Build       = [int]$nt.CurrentBuildNumber                 # numéro de build de Windows
$Edition     = "$($nt.EditionID)"                          # Professional, Core (Famille)...
$IsWin11     = ($Build -ge $WIN11_FIRST_BUILD)             # Windows 11 ou plus récent
$IsHome      = ($Edition -like 'Core*')                    # Windows Famille : stratégies pas toujours suivies
$IsAdmin     = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)  # élevé ?
$UcpdRunning = ((Get-Service -Name 'UCPD' -ErrorAction SilentlyContinue).Status -eq 'Running')  # pilote qui protège le bouton Widgets

# =============================================================================
#  7. ANALYSE  (SINDRY_MODE=scan) — lecture seule. Pour chaque élément,
#     state=ok si tout est déjà à la cible du Mode.
# =============================================================================
if ($env:SINDRY_MODE -eq 'scan') {
    Write-Output "[STEP] 1/1 Reading current settings"
    foreach ($key in $SCAN_ITEMS) {
        $state = if (Test-ItemDone $key) { 'ok' } else { 'todo' }
        Write-Output "[FIND] Items.$key state=$state"
    }
    # Widgets à masquer alors que Windows protège le bouton : le repli est annoncé.
    $protectedHere = (-not $IsWin11) -or $UcpdRunning
    if (-not $Restore -and $ALLOW_POLICY_FALLBACK -and $protectedHere -and -not (Test-WidgetsDone)) {
        Write-Output "[NOTE] WidgetsNote Items.widgets"
    }
    exit 0
}

# =============================================================================
#  8. ACTION
# =============================================================================
$winName = if ($IsWin11) { 'Windows 11' } else { 'Windows 10' }
$rights  = if ($IsAdmin) { 'administrator' } else { 'not elevated' }
Write-Host "[INFO] $winName - build $Build - edition $Edition - $rights"
if ($SafeTest) { Write-Host "[INFO] SafeTest mode - settings are read, nothing is changed" }
if ($Restore)  { Write-Host "[INFO] Restoring the Windows taskbar and search defaults" }

$items = @($CONFIG.Items)
if ($items.Count -eq 0) {
    Write-Host "[WARN] Nothing selected - nothing to do"
    Write-Host "[DONE] Nothing changed"
    exit 0
}

$summary = @()   # une ligne par élément, pour le bilan
$step    = 0
$total   = $items.Count
foreach ($key in $items) {
    $step++
    $def = $Definitions[$key]
    if (-not $def) {
        Write-Host "[STEP] $step/$total Unknown item '$key'"
        Write-Host "[WARN] Unknown item '$key' - skipped"
        continue
    }
    Write-Host ""
    Write-Host "[STEP] $step/$total $($def.Label)"
    $e0 = $errors; $c0 = $changed; $s0 = $simulated
    if ($key -eq 'widgets') { Invoke-Widgets }
    else { foreach ($v in $def.Values) { Set-Target $v $(if ($Restore) { $v.Default } else { $v.Off }) | Out-Null } }

    $result = if ($errors -gt $e0) { 'error' }
              elseif ($changed -gt $c0) { 'changed' }
              elseif ($simulated -gt $s0) { 'would change' }
              else { 'already done' }
    if ($key -eq 'widgets' -and $widgetsByPolicy -and $result -ne 'error') { $result += ' (policy)' }
    $summary += [pscustomobject]@{ Label = $def.Label; Result = $result }
}

# Redémarrage de l'Explorateur pour un effet immédiat (barre des tâches).
Write-Host ""
if ($CONFIG.RestartExplorer -and $changed -gt 0 -and -not $SafeTest) {
    Write-Host "[INFO] Restarting Explorer to apply the changes"
    Stop-Process -Name explorer -Force -ErrorAction SilentlyContinue
    Start-Sleep -Seconds $EXPLORER_RESTART_WAIT
    if (-not (Get-Process -Name explorer -ErrorAction SilentlyContinue)) { Start-Process explorer.exe }
} elseif ($SafeTest -and $CONFIG.RestartExplorer) {
    Write-Host "[INFO] SafeTest - would restart Explorer to apply the changes"
}

# Bilan en tableau : un élément par ligne.
Write-Host ""
Write-Host "[INFO] Summary"
Write-Host ("[INFO]   {0,-32} {1}" -f 'Item', 'Result')
Write-Host ("[INFO]   {0,-32} {1}" -f ('-' * 32), ('-' * 18))
foreach ($row in $summary) { Write-Host ("[INFO]   {0,-32} {1}" -f $row.Label, $row.Result) }
Write-Host ""

if ($SafeTest) {
    Write-Host "[DONE] SafeTest finished - nothing was changed"
    exit 0
}
if ($errors -gt 0) {
    Write-Host "[DONE] Finished with $errors error(s)"
    exit 1
}
if ($changed -eq 0) { Write-Host "[INFO] Everything was already as requested" }
Write-Host "[DONE] Taskbar and search updated"
exit 0

# =============================================================================
#  9. ANNEXES
# =============================================================================
#  VÉRIFIER À LA MAIN
#    sc query UCPD                                         RUNNING = bouton Widgets protégé
#    reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarDa
#    reg query "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v AllowNewsAndInterests
#    reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v EnableFeeds
#
#  LIMITES
#    - Windows Famille peut ignorer les stratégies : W304 le signale.
#    - La stratégie des Widgets s'applique à tous les comptes du PC, et coupe
#      aussi le tableau des Widgets, pas seulement le bouton.
#    - HKCU est le compte qui lance le script : si l'élévation se fait avec un
#      AUTRE compte administrateur, ce sont ses réglages à lui qui changent.
#    - TurnOffWindowsCopilot peut ne plus avoir d'effet sur les Windows 11
#      récents (Copilot y est devenu une application) ; ShowCopilotButton
#      masque toujours le bouton.
#    - Sources des stratégies : Policy CSP NewsAndInterests/AllowNewsAndInterests
#      (Windows 11) et Feeds/FeedsEnabled (Windows 10), learn.microsoft.com.
