.class public Lcom/zui/launchersdk/api/ZLauncherClient1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launchersdk/api/ZLauncherClient1$d;,
        Lcom/zui/launchersdk/api/ZLauncherClient1$c;
    }
.end annotation


# static fields
.field public static final CLIENT_OP_DISABLED:I = 0x2

.field public static final CLIENT_OP_ENABLED:I = 0x3

.field public static final CLOSE_OVERLAY_IMMEDIATE:I = 0x0

.field public static final CLOSE_OVERLAY_USE_ANIM:I = 0x1

.field public static final DISABLE_MULTI_WINDOW_MODE:I = 0x0

.field public static final ENABLE_MULTI_WINDOW_MODE:I = 0x1

.field public static final STATE_SERVICE_CONNECT:I = 0x1

.field public static final STATE_SERVICE_DISCONNECT:I = 0x0

.field public static final STATE_SERVICE_UNBIND:I = 0x2

.field private static n:Lcom/zui/launchersdk/api/ZLauncherClient1$c;


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Lcom/zui/launchersdk/api/ZLauncherClient1$d;

.field private c:Z

.field private d:Z

.field private e:Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;

.field private f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

.field private g:Lcom/zui/launchersdk/api/OverlayServiceConnection;

.field private h:I

.field private final i:Landroid/content/Intent;

.field private j:I

.field private k:I

.field private final l:Landroid/content/BroadcastReceiver;

.field private m:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/launchersdk/api/ZLauncherClient1$a;

    invoke-direct {v0, p0}, Lcom/zui/launchersdk/api/ZLauncherClient1$a;-><init>(Lcom/zui/launchersdk/api/ZLauncherClient1;)V

    iput-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->l:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->d:Z

    iput-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->c:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->j:I

    iput-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    invoke-static {p1, p3}, Lcom/zui/launchersdk/api/ZLauncherClient1;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->i:Landroid/content/Intent;

    iput-object p2, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->e:Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;

    iput v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->k:I

    new-instance p2, Lcom/zui/launchersdk/api/OverlayServiceConnection;

    const/16 v1, 0x41

    invoke-direct {p2, p1, v1}, Lcom/zui/launchersdk/api/OverlayServiceConnection;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->g:Lcom/zui/launchersdk/api/OverlayServiceConnection;

    if-eqz p4, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->h:I

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "package"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p1, p3, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    iget-object p3, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "---------ZLauncherClient new mServiceIntent: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->i:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->reconnect()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;Z)V
    .locals 1

    const-string v0, "com.zui.launchersdk"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/zui/launchersdk/api/ZLauncherClient1;-><init>(Landroid/app/Activity;Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launchersdk/api/ZLauncherClient1;)I
    .locals 0

    iget p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->j:I

    return p0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zui.launcher.WINDOW_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".OverlayService"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method static synthetic c(Lcom/zui/launchersdk/api/ZLauncherClient1$c;)Lcom/zui/launchersdk/api/ZLauncherClient1$c;
    .locals 0

    sput-object p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->n:Lcom/zui/launchersdk/api/ZLauncherClient1$c;

    return-object p0
.end method

.method private d()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------ZLauncherClient applyWindowToken overlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "   multiMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->b:Lcom/zui/launchersdk/api/ZLauncherClient1$d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;

    invoke-direct {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1$d;-><init>()V

    iput-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->b:Lcom/zui/launchersdk/api/ZLauncherClient1$d;

    :cond_1
    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->b:Lcom/zui/launchersdk/api/ZLauncherClient1$d;

    invoke-virtual {v0, p0}, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->h(Lcom/zui/launchersdk/api/ZLauncherClient1;)V

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->m:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->b:Lcom/zui/launchersdk/api/ZLauncherClient1$d;

    iget v3, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->h:I

    iget-object v4, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/zui/launchersdk/api/IZLauncherOverlayCallback;II)V

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->d:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    invoke-interface {p0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->onResume()V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    invoke-interface {p0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public static debugOverlay(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LauncherOverlay"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private e(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->j:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->j:I

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->e:Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1, v0}, Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;->onServiceStateChanged(ZZ)V

    return-void
.end method

.method private f(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------ZLauncherClient setWindowAttrs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->m:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->d()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->windowDetached(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/zui/launchersdk/api/ZLauncherClient1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launchersdk/api/ZLauncherClient1;->e(I)V

    return-void
.end method

.method private h(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------ZLauncherClient removeClient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->c:Z

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->g:Lcom/zui/launchersdk/api/OverlayServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->b:Lcom/zui/launchersdk/api/ZLauncherClient1$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->g()V

    iput-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->b:Lcom/zui/launchersdk/api/ZLauncherClient1$d;

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/zui/launchersdk/api/ZLauncherClient1;->n:Lcom/zui/launchersdk/api/ZLauncherClient1$c;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/zui/launchersdk/api/ZLauncherClient1;->n:Lcom/zui/launchersdk/api/ZLauncherClient1$c;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sput-object v1, Lcom/zui/launchersdk/api/ZLauncherClient1;->n:Lcom/zui/launchersdk/api/ZLauncherClient1$c;

    :cond_1
    return-void
.end method

.method private i(Landroid/content/Context;Landroid/content/ServiceConnection;I)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------ZLauncherClient connectSafely: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->i:Landroid/content/Intent;

    or-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p0, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "DrawerOverlayClient"

    const-string p1, "Unable to connect to overlay service"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic j(Lcom/zui/launchersdk/api/ZLauncherClient1;)Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->e:Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;

    return-object p0
.end method

.method private k()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic l(Lcom/zui/launchersdk/api/ZLauncherClient1;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public enableOverlayScreen(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iget v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->h:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->h:I

    iget-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->m:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->d()V

    :cond_1
    return-void
.end method

.method public endMove()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------ZLauncherClient endMove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    invoke-interface {p0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->endScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public hideOverlay(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->closeOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------ZLauncherClient onAttachedToWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->f(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->h(Z)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------ZLauncherClient onDetachedFromWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->f(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------ZLauncherClient onPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->d:Z

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->m:Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {v0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------ZLauncherClient onPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->reconnect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->d:Z

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->m:Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {v0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public reattachOverlay()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->m:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------LauncherClient   reattch  multiWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->reattachOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public reconnect()V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->c:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->k:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zui/launchersdk/api/ZLauncherClient1;->n:Lcom/zui/launchersdk/api/ZLauncherClient1$c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/zui/launchersdk/api/ZLauncherClient1$c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->i:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/zui/launchersdk/api/ZLauncherClient1;->n:Lcom/zui/launchersdk/api/ZLauncherClient1$c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v0, "---------ZLauncherClient reconnect unbindService"

    invoke-static {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/zui/launchersdk/api/ZLauncherClient1;->n:Lcom/zui/launchersdk/api/ZLauncherClient1$c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/zui/launchersdk/api/ZLauncherClient1$c;

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->i:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zui/launchersdk/api/ZLauncherClient1$c;-><init>(Lcom/zui/launchersdk/api/ZLauncherClient1;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launchersdk/api/ZLauncherClient1;->n:Lcom/zui/launchersdk/api/ZLauncherClient1$c;

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/zui/launchersdk/api/ZLauncherClient1;->n:Lcom/zui/launchersdk/api/ZLauncherClient1$c;

    const/16 v2, 0x20

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/launchersdk/api/ZLauncherClient1;->i(Landroid/content/Context;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    sput-object v0, Lcom/zui/launchersdk/api/ZLauncherClient1;->n:Lcom/zui/launchersdk/api/ZLauncherClient1$c;

    const-string v0, "---------ZLauncherClient reconnect not connectSafely 111111"

    invoke-static {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/zui/launchersdk/api/ZLauncherClient1;->n:Lcom/zui/launchersdk/api/ZLauncherClient1$c;

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->k:I

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->g:Lcom/zui/launchersdk/api/OverlayServiceConnection;

    const/16 v2, 0x80

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/launchersdk/api/ZLauncherClient1;->i(Landroid/content/Context;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "---------ZLauncherClient reconnect not connectSafely 222"

    invoke-static {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->k:I

    :cond_3
    iget v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->k:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->a:Landroid/app/Activity;

    new-instance v1, Lcom/zui/launchersdk/api/ZLauncherClient1$b;

    invoke-direct {v1, p0}, Lcom/zui/launchersdk/api/ZLauncherClient1$b;-><init>(Lcom/zui/launchersdk/api/ZLauncherClient1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------ZLauncherClient reconnect return  mDestoryed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->k:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    return-void
.end method

.method public startMove()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "---------ZLauncherClient startMove noConnect"

    invoke-static {p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    invoke-interface {p0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->startScroll()V

    const-string p0, "---------ZLauncherClient startMove startScroll"

    invoke-static {p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public updateMove(F)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "---------ZLauncherClient updateMove noConnect"

    invoke-static {p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->debugOverlay(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    invoke-interface {p0, p1}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->onScroll(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
