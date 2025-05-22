.class Lcom/zui/launcher/settings/ZuiLauncherFragment$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/settings/ZuiLauncherFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/preference/SwitchPreference;

.field final synthetic b:Landroid/content/SharedPreferences;

.field final synthetic c:Z

.field final synthetic d:Landroid/content/SharedPreferences$Editor;

.field final synthetic e:Lcom/zui/launcher/settings/ZuiLauncherFragment;


# direct methods
.method constructor <init>(Lcom/zui/launcher/settings/ZuiLauncherFragment;Lzui/preference/SwitchPreference;Landroid/content/SharedPreferences;ZLandroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$c;->e:Lcom/zui/launcher/settings/ZuiLauncherFragment;

    iput-object p2, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$c;->a:Lzui/preference/SwitchPreference;

    iput-object p3, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$c;->b:Landroid/content/SharedPreferences;

    iput-boolean p4, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$c;->c:Z

    iput-object p5, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$c;->d:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    iget-object p1, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$c;->a:Lzui/preference/SwitchPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lzui/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$c;->b:Landroid/content/SharedPreferences;

    const-string v1, "isSendPoint"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    rem-int/lit8 v3, p1, 0x7

    if-nez v3, :cond_0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$c;->c:Z

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dayInMonth --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  funcScreenOnOrOff --> "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$c;->c:Z

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  isButtonState -> "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "yudl"

    invoke-static {v4, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "screen"

    const-string v4, "event_left_screen"

    const-string v5, "leftScreenLabel"

    invoke-static {p1, v4, v5, v0}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$c;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$c;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$c;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/settings/ZuiLauncherFragment$c;->e:Lcom/zui/launcher/settings/ZuiLauncherFragment;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zui/launcher/util/SettingsValue;->setFuncScreenOnOrOff(ZLandroid/content/Context;)V

    return v2
.end method
