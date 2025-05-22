.class Lcom/zui/launcher/settings/ZuiLauncherFragment$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/settings/ZuiLauncherFragment;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/settings/ZuiLauncherFragment;


# direct methods
.method constructor <init>(Lcom/zui/launcher/settings/ZuiLauncherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$a;->a:Lcom/zui/launcher/settings/ZuiLauncherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$a;->a:Lcom/zui/launcher/settings/ZuiLauncherFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/zui/launcher/settings/DeskStyleSettings;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$a;->a:Lcom/zui/launcher/settings/ZuiLauncherFragment;

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    return p0
.end method
