.class Lcom/zui/launcher/settings/ZuiLauncherFragment$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/settings/ZuiLauncherFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/preference/SwitchPreference;

.field final synthetic b:Lcom/zui/launcher/settings/ZuiLauncherFragment;


# direct methods
.method constructor <init>(Lcom/zui/launcher/settings/ZuiLauncherFragment;Lzui/preference/SwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$b;->b:Lcom/zui/launcher/settings/ZuiLauncherFragment;

    iput-object p2, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$b;->a:Lzui/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$b;->a:Lzui/preference/SwitchPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lzui/preference/SwitchPreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$b;->b:Lcom/zui/launcher/settings/ZuiLauncherFragment;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/zui/launcher/BluePoint;->switchBluePoint(Landroid/content/Context;Z)V

    const/4 p0, 0x0

    return p0
.end method
