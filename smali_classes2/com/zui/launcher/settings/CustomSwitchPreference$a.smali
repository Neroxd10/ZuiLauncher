.class Lcom/zui/launcher/settings/CustomSwitchPreference$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/settings/CustomSwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/SharedPreferences$Editor;

.field final synthetic d:Lcom/zui/launcher/settings/CustomSwitchPreference;


# direct methods
.method constructor <init>(Lcom/zui/launcher/settings/CustomSwitchPreference;Landroid/content/SharedPreferences;ZLandroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/settings/CustomSwitchPreference$a;->d:Lcom/zui/launcher/settings/CustomSwitchPreference;

    iput-object p2, p0, Lcom/zui/launcher/settings/CustomSwitchPreference$a;->a:Landroid/content/SharedPreferences;

    iput-boolean p3, p0, Lcom/zui/launcher/settings/CustomSwitchPreference$a;->b:Z

    iput-object p4, p0, Lcom/zui/launcher/settings/CustomSwitchPreference$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/settings/CustomSwitchPreference$a;->a:Landroid/content/SharedPreferences;

    const-string v1, "isSendPoint"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    rem-int/lit8 v3, p1, 0x7

    if-nez v3, :cond_0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/launcher/settings/CustomSwitchPreference$a;->b:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dayInMonth --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  funcScreenOnOrOff --> "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/zui/launcher/settings/CustomSwitchPreference$a;->b:Z

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  isButtonState -> "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "yudl"

    invoke-static {v3, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "screen"

    const-string v3, "event_left_screen"

    const-string v4, "leftScreenLabel"

    invoke-static {p1, v3, v4, v0}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/settings/CustomSwitchPreference$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zui/launcher/settings/CustomSwitchPreference$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/settings/CustomSwitchPreference$a;->d:Lcom/zui/launcher/settings/CustomSwitchPreference;

    invoke-static {p1}, Lcom/zui/launcher/settings/CustomSwitchPreference;->a(Lcom/zui/launcher/settings/CustomSwitchPreference;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/settings/CustomSwitchPreference$a;->d:Lcom/zui/launcher/settings/CustomSwitchPreference;

    invoke-static {p0}, Lcom/zui/launcher/settings/CustomSwitchPreference;->b(Lcom/zui/launcher/settings/CustomSwitchPreference;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zui/launcher/util/SettingsValue;->setFuncScreenOnOrOff(ZLandroid/content/Context;)V

    return-void
.end method
