.class public Lcom/zui/launcher/util/ConfigMonitor;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field private final a:Landroid/graphics/Point;

.field private final b:Landroid/graphics/Point;

.field private final c:Landroid/content/Context;

.field private final d:F

.field private final e:I

.field private final f:I

.field private final g:Landroid/graphics/Point;

.field private final h:Landroid/graphics/Point;

.field private final i:Landroid/graphics/Point;

.field private j:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->a:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->b:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/zui/launcher/util/ConfigMonitor;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/zui/launcher/util/ConfigMonitor;->d:F

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->e:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/ConfigMonitor;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->f:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->g:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->h:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->i:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/zui/launcher/util/ConfigMonitor;->h:Landroid/graphics/Point;

    invoke-virtual {p1, v1, v0}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iput-object p2, p0, Lcom/zui/launcher/util/ConfigMonitor;->j:Ljava/util/function/Consumer;

    iget-object p1, p0, Lcom/zui/launcher/util/ConfigMonitor;->c:Landroid/content/Context;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/zui/launcher/util/ConfigMonitor;->c:Landroid/content/Context;

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    sget-object p2, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p2}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/view/Display;
    .locals 0

    const-class p0, Landroid/view/WindowManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->j:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->j:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/launcher/util/ConfigMonitor;->j:Ljava/util/function/Consumer;

    sget-object v1, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v2, Lcom/zui/launcher/util/c;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/util/c;-><init>(Lcom/zui/launcher/util/ConfigMonitor;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public synthetic b(Ljava/util/function/Consumer;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/ConfigMonitor;->c:Landroid/content/Context;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 7

    iget v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->f:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/util/ConfigMonitor;->c:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/ConfigMonitor;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->a:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->g:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/zui/launcher/util/ConfigMonitor;->a:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "ConfigMonitor"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->g:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/zui/launcher/util/ConfigMonitor;->a:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->y:I

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->g:Landroid/graphics/Point;

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->a:Landroid/graphics/Point;

    aput-object v0, p1, v2

    const-string v0, "Display size changed from %s to %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/zui/launcher/util/ConfigMonitor;->c()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->a:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/zui/launcher/util/ConfigMonitor;->b:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v5}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget-object p1, p0, Lcom/zui/launcher/util/ConfigMonitor;->h:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->a:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/util/ConfigMonitor;->i:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->b:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->h:Landroid/graphics/Point;

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->i:Landroid/graphics/Point;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->a:Landroid/graphics/Point;

    aput-object v0, p1, v1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/zui/launcher/util/ConfigMonitor;->b:Landroid/graphics/Point;

    aput-object v1, p1, v0

    const-string v0, "Available size changed from [%s, %s] to [%s, %s]"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/zui/launcher/util/ConfigMonitor;->c()V

    :cond_3
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/zui/launcher/util/ConfigMonitor;->d:F

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    iget p2, p0, Lcom/zui/launcher/util/ConfigMonitor;->e:I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq p2, p1, :cond_1

    :cond_0
    const-string p1, "ConfigMonitor"

    const-string p2, "Configuration changed."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/zui/launcher/util/ConfigMonitor;->c()V

    :cond_1
    return-void
.end method

.method public unregister()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->c:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/zui/launcher/util/ConfigMonitor;->c:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ConfigMonitor"

    const-string v1, "Failed to unregister config monitor"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
