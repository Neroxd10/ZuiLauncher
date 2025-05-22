.class public Lcom/zui/launcher/settings/ZuiLauncherFragment;
.super Landroid/preference/PreferenceFragment;
.source ""


# instance fields
.field private a:Lcom/zui/launcher/settings/ZuiGridOptionPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/BluePoint;->hasBluePointFunction(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "blue_point_pref"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lzui/preference/SwitchPreference;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->setPreferencePadding(Lzui/preference/SwitchPreference;Landroid/content/res/Resources;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/BluePoint;->isBluePointEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lzui/preference/SwitchPreference;->setChecked(Z)V

    new-instance v0, Lcom/zui/launcher/settings/ZuiLauncherFragment$b;

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/settings/ZuiLauncherFragment$b;-><init>(Lcom/zui/launcher/settings/ZuiLauncherFragment;Lzui/preference/SwitchPreference;)V

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private b()V
    .locals 8

    const-string v0, "switch_prererence"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lzui/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CustomSwitchSp"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->setPreferencePadding(Lzui/preference/SwitchPreference;Landroid/content/res/Resources;)V

    invoke-static {}, Lcom/zui/launcher/LeftScreenCompat;->isOverlayVersion()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isOverlayEnabled(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {v0, v3}, Lzui/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    return-void

    :cond_3
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/util/SettingsValue;->isFuncScreenOnOrOff(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lzui/preference/SwitchPreference;->setChecked(Z)V

    new-instance v7, Lcom/zui/launcher/settings/ZuiLauncherFragment$c;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/settings/ZuiLauncherFragment$c;-><init>(Lcom/zui/launcher/settings/ZuiLauncherFragment;Lzui/preference/SwitchPreference;Landroid/content/SharedPreferences;ZLandroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v7}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private c()V
    .locals 1

    const-string v0, "desktop_style_title"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lzui/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->setPreferencePadding(Lzui/preference/Preference;Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    const-string v0, "desktop_style"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lzui/preference/PreferenceWithArrow;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->setPreferencePadding(Lzui/preference/Preference;Landroid/content/res/Resources;)V

    const v2, 0x7f03000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const v3, 0x7f03000c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/config/FeatureFlags;->getDesktopStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/zui/launcher/settings/ZuiLauncherFragment$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/settings/ZuiLauncherFragment$a;-><init>(Lcom/zui/launcher/settings/ZuiLauncherFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f16000f

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "container"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/settings/ZuiGridOptionPreference;

    iput-object p1, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment;->a:Lcom/zui/launcher/settings/ZuiGridOptionPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/settings/ZuiLauncherSettings;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->setActivity(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/zui/launcher/settings/ZuiLauncherFragment;->a()V

    invoke-direct {p0}, Lcom/zui/launcher/settings/ZuiLauncherFragment;->b()V

    invoke-direct {p0}, Lcom/zui/launcher/settings/ZuiLauncherFragment;->c()V

    const-string p1, "container_title"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lzui/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/launcher/Utilities;->setPreferencePadding(Lzui/preference/Preference;Landroid/content/res/Resources;)V

    invoke-direct {p0}, Lcom/zui/launcher/settings/ZuiLauncherFragment;->d()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    iget-object p0, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment;->a:Lcom/zui/launcher/settings/ZuiGridOptionPreference;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->setActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
