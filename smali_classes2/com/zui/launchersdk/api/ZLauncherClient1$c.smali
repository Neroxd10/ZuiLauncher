.class final Lcom/zui/launchersdk/api/ZLauncherClient1$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launchersdk/api/ZLauncherClient1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zui/launchersdk/api/ZLauncherClient1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p0, "---------ZLauncherClient onServiceConnected"

    invoke-static {p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$c;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->c(Lcom/zui/launchersdk/api/ZLauncherClient1$c;)Lcom/zui/launchersdk/api/ZLauncherClient1$c;

    :cond_0
    return-void
.end method
