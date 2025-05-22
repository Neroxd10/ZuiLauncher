.class public Lcom/zui/launcher/util/GalleySendPositionManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/GalleySendPositionManager$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Landroid/util/SparseLongArray;

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/ScheduledFuture;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/util/SparseIntArray;

.field f:I

.field g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.zui.gallery.widget.AppWidget"

    iput-object v0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->c:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->d:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->e:Landroid/util/SparseIntArray;

    const/16 v0, 0x258

    iput v0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->f:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->g:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/util/GalleySendPositionManager;)Landroid/util/SparseLongArray;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->c:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/util/GalleySendPositionManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/util/GalleySendPositionManager;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->d:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/util/GalleySendPositionManager;)Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->e:Landroid/util/SparseIntArray;

    return-object p0
.end method


# virtual methods
.method public addSendThread(Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/Launcher;)V
    .locals 12

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->isInOverViewState()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_2

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v3}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    move v4, v5

    :cond_2
    iget-object v3, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->c:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->c:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/16 v7, 0x7d0

    cmp-long v3, v5, v7

    if-gtz v3, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Lcom/zui/launcher/util/GalleySendPositionManager$a;

    invoke-direct {v6, p0, p1}, Lcom/zui/launcher/util/GalleySendPositionManager$a;-><init>(Lcom/zui/launcher/util/GalleySendPositionManager;Landroid/appwidget/AppWidgetHostView;)V

    iget p1, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->f:I

    int-to-long v7, p1

    iget p1, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->g:I

    int-to-long v9, p1

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v5 .. v11}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iget-object v3, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->c:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p2, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public clearAll()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->c:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lcom/zui/launcher/util/GalleySendPositionManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
