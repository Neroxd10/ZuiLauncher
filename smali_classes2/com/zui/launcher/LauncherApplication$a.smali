.class Lcom/zui/launcher/LauncherApplication$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherApplication$a;->a:Lcom/zui/launcher/LauncherApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/LauncherApplication$a;->a:Lcom/zui/launcher/LauncherApplication;

    invoke-static {p1}, Lcom/zui/launcher/LauncherApplication;->a(Lcom/zui/launcher/LauncherApplication;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/LauncherApplication$a;->a:Lcom/zui/launcher/LauncherApplication;

    invoke-static {p0}, Lcom/zui/launcher/LauncherApplication;->b(Lcom/zui/launcher/LauncherApplication;)V

    :cond_0
    return-void
.end method
