.class Lcom/zui/launcher/util/GalleySendPositionManager$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/util/GalleySendPositionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/appwidget/AppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field

.field private b:[I

.field final synthetic c:Lcom/zui/launcher/util/GalleySendPositionManager;


# direct methods
.method constructor <init>(Lcom/zui/launcher/util/GalleySendPositionManager;Landroid/appwidget/AppWidgetHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/util/GalleySendPositionManager$a;->c:Lcom/zui/launcher/util/GalleySendPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/zui/launcher/util/GalleySendPositionManager$a;->b:[I

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/zui/launcher/util/GalleySendPositionManager$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/zui/launcher/util/GalleySendPositionManager$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/util/GalleySendPositionManager$a;->c:Lcom/zui/launcher/util/GalleySendPositionManager;

    invoke-static {v4}, Lcom/zui/launcher/util/GalleySendPositionManager;->a(Lcom/zui/launcher/util/GalleySendPositionManager;)Landroid/util/SparseLongArray;

    move-result-object v4

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zui/launcher/util/GalleySendPositionManager$a;->b:[I

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHostView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/zui/launcher/util/GalleySendPositionManager$a;->b:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v4, p0, Lcom/zui/launcher/util/GalleySendPositionManager$a;->b:[I

    aget v5, v4, v1

    const/4 v6, 0x1

    if-lez v5, :cond_0

    aget v4, v4, v1

    int-to-float v4, v4

    cmpg-float v0, v4, v0

    if-gez v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zui/launcher/util/GalleySendPositionManager$a;->b:[I

    aget v1, v5, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/util/GalleySendPositionManager$a;->b:[I

    aget v1, v1, v6

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isInScreen="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " className="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d1\u9001\u6570\u636e\u6570\u636e: target = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "gallery"

    invoke-static {v4, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/zui/launcher/util/GalleySendPositionManager$a;->c:Lcom/zui/launcher/util/GalleySendPositionManager;

    invoke-static {v5}, Lcom/zui/launcher/util/GalleySendPositionManager;->b(Lcom/zui/launcher/util/GalleySendPositionManager;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/zui/launcher/util/GalleySendPositionManager$a;->c:Lcom/zui/launcher/util/GalleySendPositionManager;

    invoke-static {v5}, Lcom/zui/launcher/util/GalleySendPositionManager;->b(Lcom/zui/launcher/util/GalleySendPositionManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "\u53d1\u9001\u5e7f\u64ad"

    invoke-static {v4, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/util/GalleySendPositionManager$a;->c:Lcom/zui/launcher/util/GalleySendPositionManager;

    invoke-static {v0}, Lcom/zui/launcher/util/GalleySendPositionManager;->a(Lcom/zui/launcher/util/GalleySendPositionManager;)Landroid/util/SparseLongArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseLongArray;->delete(I)V

    iget-object v0, p0, Lcom/zui/launcher/util/GalleySendPositionManager$a;->c:Lcom/zui/launcher/util/GalleySendPositionManager;

    invoke-static {v0}, Lcom/zui/launcher/util/GalleySendPositionManager;->c(Lcom/zui/launcher/util/GalleySendPositionManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v0, p0, Lcom/zui/launcher/util/GalleySendPositionManager$a;->c:Lcom/zui/launcher/util/GalleySendPositionManager;

    invoke-static {v0}, Lcom/zui/launcher/util/GalleySendPositionManager;->d(Lcom/zui/launcher/util/GalleySendPositionManager;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/util/GalleySendPositionManager$a;->c:Lcom/zui/launcher/util/GalleySendPositionManager;

    invoke-static {p0}, Lcom/zui/launcher/util/GalleySendPositionManager;->c(Lcom/zui/launcher/util/GalleySendPositionManager;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    return-void
.end method
