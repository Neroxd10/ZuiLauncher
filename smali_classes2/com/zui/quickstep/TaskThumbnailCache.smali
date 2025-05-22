.class public Lcom/zui/quickstep/TaskThumbnailCache;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/TaskThumbnailCache$ThumbnailLoadRequest;,
        Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/zui/quickstep/util/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/quickstep/util/TaskKeyLruCache<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;

.field private final d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;-><init>(Landroid/content/Context;Lcom/zui/quickstep/TaskThumbnailCache$a;)V

    iput-object p2, p0, Lcom/zui/quickstep/TaskThumbnailCache;->c:Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0079

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/zui/quickstep/TaskThumbnailCache;->a:I

    const p2, 0x7f050004

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/quickstep/TaskThumbnailCache;->d:Z

    new-instance p1, Lcom/zui/quickstep/util/TaskKeyLruCache;

    iget p2, p0, Lcom/zui/quickstep/TaskThumbnailCache;->a:I

    invoke-direct {p1, p2}, Lcom/zui/quickstep/util/TaskKeyLruCache;-><init>(I)V

    iput-object p1, p0, Lcom/zui/quickstep/TaskThumbnailCache;->b:Lcom/zui/quickstep/util/TaskKeyLruCache;

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    invoke-static {}, Lcom/zui/quickstep/TaskThumbnailCache;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/zui/quickstep/TaskThumbnailCache;)Lcom/zui/quickstep/util/TaskKeyLruCache;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TaskThumbnailCache;->b:Lcom/zui/quickstep/util/TaskKeyLruCache;

    return-object p0
.end method

.method static synthetic c(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    return-void
.end method

.method private static e()Z
    .locals 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_lowResTaskSnapshotScale"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private f(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;)Lcom/zui/quickstep/util/CancellableTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)",
            "Lcom/zui/quickstep/util/CancellableTask;"
        }
    .end annotation

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    iget-object v0, p0, Lcom/zui/quickstep/TaskThumbnailCache;->b:Lcom/zui/quickstep/util/TaskKeyLruCache;

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/util/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->reducedResolution:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Lcom/zui/quickstep/TaskThumbnailCache$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zui/quickstep/TaskThumbnailCache$a;-><init>(Lcom/zui/quickstep/TaskThumbnailCache;Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TaskThumbnailCache;->b:Lcom/zui/quickstep/util/TaskKeyLruCache;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/TaskKeyLruCache;->evictAll()V

    return-void
.end method

.method public getCacheSize()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/TaskThumbnailCache;->a:I

    return p0
.end method

.method public getHighResLoadingState()Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TaskThumbnailCache;->c:Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;

    return-object p0
.end method

.method public isPreloadingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/TaskThumbnailCache;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/TaskThumbnailCache;->c:Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;

    invoke-static {p0}, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->a(Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TaskThumbnailCache;->b:Lcom/zui/quickstep/util/TaskKeyLruCache;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/util/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    return-void
.end method

.method public updateTaskSnapShot(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    iget-object p0, p0, Lcom/zui/quickstep/TaskThumbnailCache;->b:Lcom/zui/quickstep/util/TaskKeyLruCache;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/util/TaskKeyLruCache;->updateIfAlreadyInCache(ILjava/lang/Object;)V

    return-void
.end method

.method public updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/zui/quickstep/util/CancellableTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)",
            "Lcom/zui/quickstep/util/CancellableTask;"
        }
    .end annotation

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    iget-object v0, p0, Lcom/zui/quickstep/TaskThumbnailCache;->c:Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;

    invoke-virtual {v0}, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->reducedResolution:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v1, p0, Lcom/zui/quickstep/TaskThumbnailCache;->c:Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;

    invoke-virtual {v1}, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->isEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/zui/quickstep/t1;

    invoke-direct {v2, p1, p2}, Lcom/zui/quickstep/t1;-><init>(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/quickstep/TaskThumbnailCache;->f(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;)Lcom/zui/quickstep/util/CancellableTask;

    move-result-object p0

    return-object p0
.end method

.method public updateThumbnailInCache(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 3

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v1, 0x1

    new-instance v2, Lcom/zui/quickstep/s1;

    invoke-direct {v2, p1}, Lcom/zui/quickstep/s1;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/quickstep/TaskThumbnailCache;->f(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;)Lcom/zui/quickstep/util/CancellableTask;

    :cond_0
    return-void
.end method
