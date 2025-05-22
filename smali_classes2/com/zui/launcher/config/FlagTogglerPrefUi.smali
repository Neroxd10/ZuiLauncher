.class public final Lcom/zui/launcher/config/FlagTogglerPrefUi;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroidx/preference/PreferenceFragment;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Landroidx/preference/PreferenceDataStore;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/launcher/config/FlagTogglerPrefUi$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/config/FlagTogglerPrefUi$a;-><init>(Lcom/zui/launcher/config/FlagTogglerPrefUi;)V

    iput-object v0, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi;->d:Landroidx/preference/PreferenceDataStore;

    iput-object p1, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi;->a:Landroidx/preference/PreferenceFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi;->b:Landroid/content/Context;

    const-string v0, "featureFlags"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/config/FlagTogglerPrefUi;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/config/FlagTogglerPrefUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/config/FlagTogglerPrefUi;->e()V

    return-void
.end method

.method private c()Z
    .locals 3

    invoke-static {}, Lcom/zui/launcher/config/BaseFlags;->getTogglableFlags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/TogglableFlag;

    invoke-direct {p0, v1}, Lcom/zui/launcher/config/FlagTogglerPrefUi;->d(Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;)Z

    move-result v2

    invoke-virtual {v1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v1

    if-eq v2, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private d(Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;)Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi;->d:Landroidx/preference/PreferenceDataStore;

    invoke-virtual {p1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi;->a:Landroidx/preference/PreferenceFragment;

    invoke-direct {p0}, Lcom/zui/launcher/config/FlagTogglerPrefUi;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object p0, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi;->a:Landroidx/preference/PreferenceFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method private f(Landroidx/preference/SwitchPreference;Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;)V
    .locals 3

    invoke-virtual {p2}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a()Z

    move-result p0

    const-string v0, ""

    const-string v1, "<b>OVERRIDDEN</b><br>"

    if-eqz p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-virtual {p2}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public applyTo(Landroidx/preference/PreferenceGroup;)V
    .locals 4

    invoke-static {}, Lcom/zui/launcher/config/BaseFlags;->getTogglableFlags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;

    new-instance v2, Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/zui/launcher/config/FlagTogglerPrefUi;->d(Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v2, v1}, Lcom/zui/launcher/config/FlagTogglerPrefUi;->f(Landroidx/preference/SwitchPreference;Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;)V

    iget-object v1, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi;->d:Landroidx/preference/PreferenceDataStore;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/config/FlagTogglerPrefUi;->e()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/config/FlagTogglerPrefUi;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0a0259

    const/4 v0, 0x0

    const-string v1, "Apply"

    invoke-interface {p1, v0, p0, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0259

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi;->c:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Killing launcher process "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to apply new flag values"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlagTogglerPrefFrag"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/config/FlagTogglerPrefUi;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi;->b:Landroid/content/Context;

    const/4 v0, 0x1

    const-string v1, "Flag won\'t be applied until you restart launcher"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
