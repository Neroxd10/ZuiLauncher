.class Lcom/zui/launcher/LauncherApplication$c;
.super Lcom/zui/launcher/SecureSettingObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherApplication;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/zui/launcher/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherApplication;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherApplication$c;->c:Lcom/zui/launcher/LauncherApplication;

    invoke-direct {p0, p2, p3, p4}, Lcom/zui/launcher/SecureSettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ZuiLauncher"

    const-string v0, "---------LauncherApplication--user_setup_complete------"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/LauncherApplication$c;->c:Lcom/zui/launcher/LauncherApplication;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isCTAVersion(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/LauncherApplication$c;->c:Lcom/zui/launcher/LauncherApplication;

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherApplication;->initCTAData()V

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/LauncherApplication$c;->c:Lcom/zui/launcher/LauncherApplication;

    invoke-static {p0}, Lcom/zui/launcher/LauncherApplication;->c(Lcom/zui/launcher/LauncherApplication;)V

    :cond_2
    return-void
.end method
