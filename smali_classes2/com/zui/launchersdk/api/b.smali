.class final Lcom/zui/launchersdk/api/b;
.super Lcom/zui/launchersdk/api/OverlayServiceConnection;
.source ""


# static fields
.field private static g:Lcom/zui/launchersdk/api/b;


# instance fields
.field private d:Lcom/zui/launchersdk/api/IZLauncherOverlay;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/launchersdk/api/ZLauncherClient;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x21

    invoke-direct {p0, p1, v0}, Lcom/zui/launchersdk/api/OverlayServiceConnection;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static b(Landroid/content/Context;)Lcom/zui/launchersdk/api/b;
    .locals 1

    sget-object v0, Lcom/zui/launchersdk/api/b;->g:Lcom/zui/launchersdk/api/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launchersdk/api/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zui/launchersdk/api/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zui/launchersdk/api/b;->g:Lcom/zui/launchersdk/api/b;

    :cond_0
    sget-object p0, Lcom/zui/launchersdk/api/b;->g:Lcom/zui/launchersdk/api/b;

    return-object p0
.end method

.method private final c()V
    .locals 2

    const-string v0, "ZLauncherClient"

    const-string v1, "----- ServiceClientManager  unbindService ----------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/b;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launchersdk/api/b;->d:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launchersdk/api/OverlayServiceConnection;->unbind()V

    :cond_0
    return-void
.end method

.method private final d(Lcom/zui/launchersdk/api/IZLauncherOverlay;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ServiceClientManager  connetctOverlay --------overlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/zui/launchersdk/api/b;->d:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    invoke-direct {p0}, Lcom/zui/launchersdk/api/b;->g()Lcom/zui/launchersdk/api/ZLauncherClient;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launchersdk/api/b;->d:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    invoke-virtual {p1, p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->f(Lcom/zui/launchersdk/api/IZLauncherOverlay;)V

    :cond_0
    return-void
.end method

.method private final g()Lcom/zui/launchersdk/api/ZLauncherClient;
    .locals 0

    iget-object p0, p0, Lcom/zui/launchersdk/api/b;->e:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launchersdk/api/ZLauncherClient;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/zui/launchersdk/api/ZLauncherClient;)Lcom/zui/launchersdk/api/IZLauncherOverlay;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/launchersdk/api/b;->e:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/zui/launchersdk/api/b;->d:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    return-object p0
.end method

.method public final e(Lcom/zui/launchersdk/api/ZLauncherClient;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ServiceClientManager  unbindCurrentClient ----------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " unbindservice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/zui/launchersdk/api/b;->g()Lcom/zui/launchersdk/api/ZLauncherClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launchersdk/api/b;->e:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/zui/launchersdk/api/OverlayServiceConnection;->unbind()V

    sget-object p2, Lcom/zui/launchersdk/api/b;->g:Lcom/zui/launchersdk/api/b;

    if-ne p2, p0, :cond_0

    sput-object p1, Lcom/zui/launchersdk/api/b;->g:Lcom/zui/launchersdk/api/b;

    :cond_0
    return-void
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launchersdk/api/b;->f:Z

    invoke-direct {p0}, Lcom/zui/launchersdk/api/b;->c()V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ServiceClientManager  onServiceConnected ----------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " IBinder: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZLauncherClient"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/zui/launchersdk/api/IZLauncherOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/launchersdk/api/IZLauncherOverlay;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launchersdk/api/b;->d(Lcom/zui/launchersdk/api/IZLauncherOverlay;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "ZLauncherClient"

    const-string v0, "----- ServiceClientManager  onServiceDisconnected ----------"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zui/launchersdk/api/b;->d(Lcom/zui/launchersdk/api/IZLauncherOverlay;)V

    invoke-direct {p0}, Lcom/zui/launchersdk/api/b;->c()V

    return-void
.end method
