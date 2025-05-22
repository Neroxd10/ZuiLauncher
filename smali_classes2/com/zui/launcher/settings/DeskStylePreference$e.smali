.class Lcom/zui/launcher/settings/DeskStylePreference$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/settings/DeskStylePreference;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zui/launcher/settings/DeskStylePreference;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/settings/DeskStylePreference$e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/settings/DeskStylePreference$e;->a:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lcom/zui/launcher/settings/ZuiLauncherSettings;->getInstance()Lcom/zui/launcher/settings/ZuiLauncherSettings;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/zui/launcher/settings/ZuiLauncherSettings;->getInstance()Lcom/zui/launcher/settings/ZuiLauncherSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/settings/ZuiLauncherSettings;->finish()V

    :cond_0
    return-void
.end method
