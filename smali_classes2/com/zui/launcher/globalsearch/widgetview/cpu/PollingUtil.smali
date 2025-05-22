.class public Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->c(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic b(Ljava/util/List;)V
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->handleCpuData()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static getInstance()Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;
    .locals 1

    sget-object v0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->c:Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;

    invoke-direct {v0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;-><init>()V

    sput-object v0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->c:Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;

    :cond_0
    sget-object v0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->c:Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;

    return-object v0
.end method


# virtual methods
.method public endAllPolling(Z)Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->getWidgetCpuList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endAllPolling  state -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cpuList  size -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->cpuPrintLog(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->d()V

    :cond_1
    return-object p0
.end method

.method public recycler()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public runImmediately(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public startPolling()V
    .locals 3

    invoke-static {}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->getWidgetCpuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->d()V

    new-instance p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/a;

    invoke-direct {p0, v0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/a;-><init>(Ljava/util/List;)V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    sget-object v0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->c:Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->startPolling(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public startPolling(Ljava/lang/Runnable;J)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil$a;-><init>(Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;Ljava/lang/Runnable;J)V

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->c(Ljava/lang/Runnable;J)V

    return-void
.end method
