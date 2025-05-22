.class Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;
.super Landroid/os/AsyncTask;
.source ""

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Landroid/os/CancellationSignal$OnCancelListener;"
    }
.end annotation


# instance fields
.field final a:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;

.field private final b:Lcom/zui/launcher/model/WidgetItem;

.field private final c:I

.field private final d:I

.field private final e:Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;

.field private final f:Lcom/zui/launcher/views/ActivityContext;

.field g:[J

.field h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Z

.field final synthetic k:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;


# direct methods
.method constructor <init>(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;Lcom/zui/launcher/model/WidgetItem;IILcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->k:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->j:Z

    iput-object p2, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->f:Lcom/zui/launcher/views/ActivityContext;

    iput-object p3, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->a:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;

    iput-object p4, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->b:Lcom/zui/launcher/model/WidgetItem;

    iput p6, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->c:I

    iput p5, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->d:I

    iput-object p7, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->e:Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->i:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->j:Z

    return p0
.end method


# virtual methods
.method protected varargs c([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->k:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    iget-object p1, p1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->b:Ljava/util/Set;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->k:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    iget-object v1, v1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->d:I

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->c:I

    if-ne v3, v4, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->k:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    iget-object v1, v1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->b:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    iget p1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->d:I

    iget v1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->c:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_3
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v2

    :cond_4
    iget-object p1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->k:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    iget-object v1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->a:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;

    invoke-virtual {p1, v1, v2, p0}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->f(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;Landroid/graphics/Bitmap;Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_9

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->b:Lcom/zui/launcher/model/WidgetItem;

    iget-object p1, p1, Lcom/zui/launcher/model/WidgetItem;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->isPersistable()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->k:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    iget-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->a:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;

    iget-object v0, v0, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->d(Ljava/lang/String;)[J

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->g:[J

    iget-object v3, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->k:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    iget-object v4, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->f:Lcom/zui/launcher/views/ActivityContext;

    iget-object v5, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->b:Lcom/zui/launcher/model/WidgetItem;

    iget v7, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->d:I

    iget v8, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->c:I

    move-object v6, v2

    invoke-static/range {v3 .. v8}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->a(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/model/WidgetItem;Landroid/graphics/Bitmap;II)Landroid/util/Pair;

    move-result-object p1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_8

    iput-object v2, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->i:Landroid/graphics/Bitmap;

    :cond_8
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->j:Z

    move-object p1, v0

    :cond_9
    return-object p1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected d(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$b;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$b;-><init>(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->c([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected e(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->e:Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;

    invoke-interface {v0, p1}, Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;->onPreviewLoaded(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->g:[J

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$a;-><init>(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->h:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$c;

    invoke-direct {v1, p0}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b$c;-><init>(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->d(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;->e(Landroid/graphics/Bitmap;)V

    return-void
.end method
