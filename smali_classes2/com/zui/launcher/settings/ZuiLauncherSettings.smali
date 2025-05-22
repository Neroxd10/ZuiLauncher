.class public Lcom/zui/launcher/settings/ZuiLauncherSettings;
.super Landroid/app/Activity;
.source ""


# static fields
.field private static b:Lcom/zui/launcher/settings/ZuiLauncherSettings;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/settings/ZuiLauncherSettings;->a:Z

    return-void
.end method

.method private a()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/zui/launcher/graphics/GridOptionsProvider;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/zui/launcher/settings/ZuiLauncherSettings;
    .locals 1

    sget-object v0, Lcom/zui/launcher/settings/ZuiLauncherSettings;->b:Lcom/zui/launcher/settings/ZuiLauncherSettings;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d007a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    sput-object p0, Lcom/zui/launcher/settings/ZuiLauncherSettings;->b:Lcom/zui/launcher/settings/ZuiLauncherSettings;

    invoke-direct {p0}, Lcom/zui/launcher/settings/ZuiLauncherSettings;->a()V

    const p1, 0x7f0a01aa

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/zui/launcher/settings/ZuiLauncherFragment;

    invoke-direct {v0}, Lcom/zui/launcher/settings/ZuiLauncherFragment;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/settings/ZuiLauncherSettings;->setActionBarLayout()V

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->updateSystemUiColorForSettings(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/zui/launcher/util/SettingsValue;->isFuncScreenOnOrOff(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/settings/ZuiLauncherSettings;->a:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/zui/launcher/settings/ZuiLauncherSettings;->b:Lcom/zui/launcher/settings/ZuiLauncherSettings;

    invoke-static {p0}, Lcom/zui/launcher/util/SettingsValue;->isFuncScreenOnOrOff(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/zui/launcher/settings/ZuiLauncherSettings;->a:Z

    if-eq v1, v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zui.launcher.action.ACTION_SET_LEFTSCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "switch"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/settings/ZuiLauncherSettings;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public setActionBarLayout()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method
