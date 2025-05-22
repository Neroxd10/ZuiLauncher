.class public Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->a:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;
    .locals 2

    sget-object v0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->b:Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;

    invoke-direct {v1}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;-><init>()V

    sput-object v1, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->b:Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->b:Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public add(Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getWidgetCpuList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->a:Ljava/util/List;

    return-object p0
.end method

.method public recycler()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    const/4 p0, 0x0

    sput-object p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->b:Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;

    return-void
.end method

.method public remove(Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
