.class public Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;
.super Landroidx/preference/PreferenceFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LauncherSettingsFragment"
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/util/SecureSettingsObserver;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->c:Z

    return-void
.end method

.method private a()Lcom/zui/launcher/settings/PreferenceHighlighter;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object p0, p0, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->b:Ljava/lang/String;

    invoke-interface {v2, p0}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_2

    new-instance v1, Lcom/zui/launcher/settings/PreferenceHighlighter;

    invoke-direct {v1, v0, p0}, Lcom/zui/launcher/settings/PreferenceHighlighter;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_2
    return-object v1
.end method


# virtual methods
.method protected getParentKeyForPref(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initPreference(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "pref_grid_options"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "flag_toggler"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "pref_add_icon_to_home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "pref_grid_control"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "pref_allowRotation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "pref_developer_options"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v1, "pref_icon_badging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v3

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    instance-of v0, p1, Lcom/zui/launcher/settings/GridOptionPreference;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    check-cast p1, Lcom/zui/launcher/settings/GridOptionPreference;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/settings/GridOptionPreference;->setActivity(Landroid/app/Activity;)V

    :cond_1
    return v3

    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isDevelopersOptionsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/zui/launcher/Utilities;->IS_DEBUG_DEVICE:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->existsStyleWallpapers(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    return v2

    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/config/BaseFlags;->showFlagTogglerUi(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->hasPlugins(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    return v2

    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/config/BaseFlags;->showFlagTogglerUi(Landroid/content/Context;)Z

    move-result p0

    return p0

    :pswitch_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    invoke-static {}, Lcom/zui/launcher/states/RotationHelper;->getAllowRotationDefaultValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    return v3

    :pswitch_5
    sget-boolean p0, Lcom/zui/launcher/Utilities;->ATLEAST_OREO:Z

    return p0

    :pswitch_6
    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_OREO:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p1, Lcom/zui/launcher/settings/NotificationDotsPreference;

    invoke-static {v0, p1}, Lcom/zui/launcher/util/SecureSettingsObserver;->newNotificationSettingsObserver(Landroid/content/Context;Lcom/zui/launcher/util/SecureSettingsObserver$OnChangeListener;)Lcom/zui/launcher/util/SecureSettingsObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->a:Lcom/zui/launcher/util/SecureSettingsObserver;

    invoke-virtual {p1}, Lcom/zui/launcher/util/SecureSettingsObserver;->register()V

    iget-object p1, p0, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->a:Lcom/zui/launcher/util/SecureSettingsObserver;

    invoke-virtual {p1}, Lcom/zui/launcher/util/SecureSettingsObserver;->getResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->a:Lcom/zui/launcher/util/SecureSettingsObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->a:Lcom/zui/launcher/util/SecureSettingsObserver;

    invoke-virtual {p0}, Lcom/zui/launcher/util/SecureSettingsObserver;->dispatchOnChange()V

    return v3

    :cond_7
    :goto_2
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x78b3b18a -> :sswitch_6
        -0x7711ebf3 -> :sswitch_5
        -0x2f13c735 -> :sswitch_4
        -0x5b87600 -> :sswitch_3
        0x2e177d7 -> :sswitch_2
        0x60c829cb -> :sswitch_1
        0x7716ab41 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->b:Ljava/lang/String;

    if-nez p2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->getParentKeyForPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "android:preference_highlighted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->c:Z

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "com.zui.launcher.prefs"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const p1, 0x7f16000d

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_4

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->initPreference(Landroidx/preference/Preference;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->a:Lcom/zui/launcher/util/SecureSettingsObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/util/SecureSettingsObserver;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->a:Lcom/zui/launcher/util/SecureSettingsObserver;

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->c:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->a()Lcom/zui/launcher/settings/PreferenceHighlighter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->c:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean p0, p0, Lcom/zui/launcher/settings/SettingsActivity$LauncherSettingsFragment;->c:Z

    const-string v0, "android:preference_highlighted"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
