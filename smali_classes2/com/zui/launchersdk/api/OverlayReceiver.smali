.class public Lcom/zui/launchersdk/api/OverlayReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private a:Lcom/zui/launchersdk/api/ZLauncherClient;


# direct methods
.method constructor <init>(Lcom/zui/launchersdk/api/ZLauncherClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/zui/launchersdk/api/OverlayReceiver;->a:Lcom/zui/launchersdk/api/ZLauncherClient;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.zui.launchersdk"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/zui/launchersdk/api/OverlayReceiver;->a:Lcom/zui/launchersdk/api/ZLauncherClient;

    invoke-virtual {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->doUnbindForNew()V

    :cond_1
    return-void
.end method
