.class public Lcom/zui/launchersdk/api/ZLauncherClient;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;,
        Lcom/zui/launchersdk/api/ZLauncherClient$a;
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

.field private static m:I = -0x1


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;

.field private final c:Lcom/zui/launchersdk/api/OverlayServiceConnection;

.field private final d:Lcom/zui/launchersdk/api/b;

.field private final e:Landroid/content/BroadcastReceiver;

.field private f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:Landroid/view/WindowManager$LayoutParams;

.field private l:Lcom/zui/launchersdk/api/ZLauncherClient$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/launchersdk/api/OverlayReceiver;

    invoke-direct {v0, p0}, Lcom/zui/launchersdk/api/OverlayReceiver;-><init>(Lcom/zui/launchersdk/api/ZLauncherClient;)V

    iput-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->e:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->g:I

    iput-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    iput v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->i:I

    iput-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->b:Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;

    new-instance p2, Lcom/zui/launchersdk/api/OverlayServiceConnection;

    const/16 v1, 0x41

    invoke-direct {p2, p1, v1}, Lcom/zui/launchersdk/api/OverlayServiceConnection;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->c:Lcom/zui/launchersdk/api/OverlayServiceConnection;

    invoke-static {p3}, Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;->a(Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;)I

    move-result p2

    iput p2, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->j:I

    invoke-static {p1}, Lcom/zui/launchersdk/api/b;->b(Landroid/content/Context;)Lcom/zui/launchersdk/api/b;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->d:Lcom/zui/launchersdk/api/b;

    invoke-virtual {p2, p0}, Lcom/zui/launchersdk/api/b;->a(Lcom/zui/launchersdk/api/ZLauncherClient;)Lcom/zui/launchersdk/api/IZLauncherOverlay;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p3, "package"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p3, v1, :cond_0

    const-string p3, "com.zui.launchersdk"

    invoke-virtual {p2, p3, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_0
    iget-object p3, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, v0, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget p2, Lcom/zui/launchersdk/api/ZLauncherClient;->m:I

    if-gtz p2, :cond_1

    invoke-static {p1}, Lcom/zui/launchersdk/api/ZLauncherClient;->i(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->reconnect()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_2

    iget-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->onAttachedToWindow()V

    :cond_2
    return-void
.end method

.method private static a(I)I
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x7ff

    if-gt p0, v0, :cond_0

    shl-int/lit8 p0, p0, 0x2

    or-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid duration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/zui/launchersdk/api/ZLauncherClient;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zui.launcher.WINDOW_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.zui.launchersdk"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x40

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".OverlayService"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method private final d()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  applyWindowToken----mOverlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->l:Lcom/zui/launchersdk/api/ZLauncherClient$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launchersdk/api/ZLauncherClient$a;

    invoke-direct {v0}, Lcom/zui/launchersdk/api/ZLauncherClient$a;-><init>()V

    iput-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->l:Lcom/zui/launchersdk/api/ZLauncherClient$a;

    :cond_0
    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->l:Lcom/zui/launchersdk/api/ZLauncherClient$a;

    invoke-virtual {v0, p0}, Lcom/zui/launchersdk/api/ZLauncherClient$a;->h(Lcom/zui/launchersdk/api/ZLauncherClient;)V

    sget v0, Lcom/zui/launchersdk/api/ZLauncherClient;->m:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->k:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->l:Lcom/zui/launchersdk/api/ZLauncherClient$a;

    iget v5, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->j:I

    iget-object v6, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->a:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-interface {v0, v1, v4, v5, v2}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/zui/launchersdk/api/IZLauncherOverlayCallback;II)V

    goto :goto_2

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "layout_params"

    iget-object v4, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "configuration"

    iget-object v4, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "client_options"

    iget v4, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->j:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "multi_window_flag"

    iget-object v4, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    iget-object v2, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->l:Lcom/zui/launchersdk/api/ZLauncherClient$a;

    invoke-interface {v1, v0, v2}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->windowAttached(Landroid/os/Bundle;Lcom/zui/launchersdk/api/IZLauncherOverlayCallback;)V

    :goto_2
    sget v0, Lcom/zui/launchersdk/api/ZLauncherClient;->m:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    iget p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->g:I

    invoke-interface {v0, p0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->onActivityStateChanged(I)V

    return-void

    :cond_4
    iget v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    invoke-interface {p0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->onResume()V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    invoke-interface {p0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_3
    return-void
.end method

.method private final e(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  setWindowAttrs----windowAttrs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->k:Landroid/view/WindowManager$LayoutParams;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->k:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->d()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->windowDetached(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    :cond_1
    :goto_0
    return-void
.end method

.method private final g(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  doUnbind----unbindService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->c:Lcom/zui/launchersdk/api/OverlayServiceConnection;

    invoke-virtual {v0}, Lcom/zui/launchersdk/api/OverlayServiceConnection;->unbind()V

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->l:Lcom/zui/launchersdk/api/ZLauncherClient$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launchersdk/api/ZLauncherClient$a;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->l:Lcom/zui/launchersdk/api/ZLauncherClient$a;

    :cond_1
    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->d:Lcom/zui/launchersdk/api/b;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launchersdk/api/b;->e(Lcom/zui/launchersdk/api/ZLauncherClient;Z)V

    return-void
.end method

.method static synthetic h(Lcom/zui/launchersdk/api/ZLauncherClient;)I
    .locals 0

    iget p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->i:I

    return p0
.end method

.method private static i(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v1, "service.api.version"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/zui/launchersdk/api/ZLauncherClient;->m:I

    goto :goto_0

    :cond_0
    sput v0, Lcom/zui/launchersdk/api/ZLauncherClient;->m:I

    :goto_0
    return-void
.end method

.method private final j()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic k(Lcom/zui/launchersdk/api/ZLauncherClient;)Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->b:Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;

    return-object p0
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    const-string v0, "ZLauncherClient"

    const-string v1, "----- ZLauncherClient  disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launchersdk/api/ZLauncherClient;->g(Z)V

    return-void
.end method

.method public final doUnbindForNew()V
    .locals 2

    const-string v0, "ZLauncherClient"

    const-string v1, "----- ZLauncherClient  doUnbindForNew----: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->d:Lcom/zui/launchersdk/api/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/launchersdk/api/b;->f(Z)V

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->c:Lcom/zui/launchersdk/api/OverlayServiceConnection;

    invoke-virtual {v0}, Lcom/zui/launchersdk/api/OverlayServiceConnection;->unbind()V

    invoke-virtual {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->reconnect()V

    return-void
.end method

.method public endMove()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  endMove----isConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    invoke-interface {p0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->endScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method final f(Lcom/zui/launchersdk/api/IZLauncherOverlay;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  connect----overlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launchersdk/api/ZLauncherClient;->notifyStatusChanged(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->k:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getActivityState()I
    .locals 0

    iget p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->g:I

    return p0
.end method

.method public hideOverlay(I)V
    .locals 2

    invoke-static {p1}, Lcom/zui/launchersdk/api/ZLauncherClient;->a(I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  hideOverlay----mOverlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->closeOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public hideOverlay(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->closeOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final notifyStatusChanged(I)V
    .locals 3

    iget v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->i:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->i:I

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->b:Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-interface {p0, v0, v1}, Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;->onServiceStateChanged(ZZ)V

    :cond_2
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  onAttachedToWindow --------mDestroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launchersdk/api/ZLauncherClient;->e(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  onDestroy --------mDestroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launchersdk/api/ZLauncherClient;->g(Z)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  onDetachedFromWindow --------mDestroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/launchersdk/api/ZLauncherClient;->e(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  onPause --------mDestroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->g:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->g:I

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->k:Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_1

    :try_start_0
    sget p0, Lcom/zui/launchersdk/api/ZLauncherClient;->m:I

    const/4 v2, 0x4

    if-ge p0, v2, :cond_0

    invoke-interface {v1}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->onPause()V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->onActivityStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  onResume --------mDestroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->g:I

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->k:Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_1

    :try_start_0
    sget p0, Lcom/zui/launchersdk/api/ZLauncherClient;->m:I

    const/4 v2, 0x4

    if-ge p0, v2, :cond_0

    invoke-interface {v1}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->onResume()V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->onActivityStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  onStart --------mDestroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->d:Lcom/zui/launchersdk/api/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launchersdk/api/b;->f(Z)V

    invoke-virtual {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->reconnect()V

    iget v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->g:I

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->k:Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {v1, v0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->onActivityStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  onStop --------mDestroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->d:Lcom/zui/launchersdk/api/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/launchersdk/api/b;->f(Z)V

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->c:Lcom/zui/launchersdk/api/OverlayServiceConnection;

    invoke-virtual {v0}, Lcom/zui/launchersdk/api/OverlayServiceConnection;->unbind()V

    iget v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->g:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->g:I

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->k:Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {v1, v0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->onActivityStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public reattachOverlay()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  reattachOverlay----mWindowAttrs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->k:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    sget v0, Lcom/zui/launchersdk/api/ZLauncherClient;->m:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->d()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->k:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->a:Landroid/app/Activity;

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
    :goto_1
    return-void
.end method

.method public reconnect()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  reconnect----mDestroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->d:Lcom/zui/launchersdk/api/b;

    invoke-virtual {v0}, Lcom/zui/launchersdk/api/OverlayServiceConnection;->bind()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->c:Lcom/zui/launchersdk/api/OverlayServiceConnection;

    invoke-virtual {v0}, Lcom/zui/launchersdk/api/OverlayServiceConnection;->bind()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->a:Landroid/app/Activity;

    new-instance v1, Lcom/zui/launchersdk/api/a;

    invoke-direct {v1, p0}, Lcom/zui/launchersdk/api/a;-><init>(Lcom/zui/launchersdk/api/ZLauncherClient;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public requestHotwordDetection(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->requestVoiceDetection(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setClientOptions(Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  setClientOptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;->a(Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;->a(Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;)I

    move-result v0

    iget v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->j:I

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;->a(Lcom/zui/launchersdk/api/ZLauncherClient$ClientOptions;)I

    move-result p1

    iput p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->j:I

    iget-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->k:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->d()V

    :cond_0
    return-void
.end method

.method public showOverlay(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  showOverlay----mOverlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/zui/launchersdk/api/ZLauncherClient;->a(I)I

    move-result p1

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->openOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public showOverlay(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->openOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public startMove()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- ZLauncherClient  startMove----isConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    invoke-interface {p0}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->startScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public updateMove(F)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launchersdk/api/ZLauncherClient;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient;->f:Lcom/zui/launchersdk/api/IZLauncherOverlay;

    invoke-interface {p0, p1}, Lcom/zui/launchersdk/api/IZLauncherOverlay;->onScroll(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
