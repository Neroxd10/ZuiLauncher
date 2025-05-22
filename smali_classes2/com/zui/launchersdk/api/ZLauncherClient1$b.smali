.class Lcom/zui/launchersdk/api/ZLauncherClient1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launchersdk/api/ZLauncherClient1;->reconnect()V
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

    iput-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$b;->a:Lcom/zui/launchersdk/api/ZLauncherClient1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "---------ZLauncherClient reconnect notifyStatusChanged(0)"

    invoke-static {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$b;->a:Lcom/zui/launchersdk/api/ZLauncherClient1;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->g(Lcom/zui/launchersdk/api/ZLauncherClient1;I)V

    return-void
.end method
