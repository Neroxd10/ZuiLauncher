.class final Lcom/zui/launchersdk/api/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/zui/launchersdk/api/ZLauncherClient;


# direct methods
.method constructor <init>(Lcom/zui/launchersdk/api/ZLauncherClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launchersdk/api/a;->a:Lcom/zui/launchersdk/api/ZLauncherClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launchersdk/api/a;->a:Lcom/zui/launchersdk/api/ZLauncherClient;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launchersdk/api/ZLauncherClient;->notifyStatusChanged(I)V

    return-void
.end method
