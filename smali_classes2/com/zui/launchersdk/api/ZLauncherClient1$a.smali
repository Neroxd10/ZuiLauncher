.class Lcom/zui/launchersdk/api/ZLauncherClient1$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launchersdk/api/ZLauncherClient1;-><init>(Landroid/app/Activity;Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launchersdk/api/ZLauncherClient1;


# direct methods
.method constructor <init>(Lcom/zui/launchersdk/api/ZLauncherClient1;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$a;->a:Lcom/zui/launchersdk/api/ZLauncherClient1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$a;->a:Lcom/zui/launchersdk/api/ZLauncherClient1;

    invoke-virtual {p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->reconnect()V

    return-void
.end method
