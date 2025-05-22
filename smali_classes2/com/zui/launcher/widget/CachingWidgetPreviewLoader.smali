.class public Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/widget/WidgetPreviewLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/widget/WidgetPreviewLoader;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zui/launcher/util/ComponentKey;",
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/launcher/widget/WidgetPreviewLoader;)V
    .locals 1
    .param p1    # Lcom/zui/launcher/widget/WidgetPreviewLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->a:Lcom/zui/launcher/widget/WidgetPreviewLoader;

    return-void
.end method

.method private a(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;)Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;
    .locals 1
    .param p1    # Lcom/zui/launcher/model/WidgetItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    invoke-static {p1}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->h(Lcom/zui/launcher/model/WidgetItem;)Lcom/zui/launcher/util/ComponentKey;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    sget-object p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;->a:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;

    monitor-exit v0

    return-object p0

    :cond_0
    sget-object p1, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;->a:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic b(Ljava/util/Map;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Landroid/graphics/Bitmap;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;->onPreviewLoaded(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private f(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;)Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;
    .locals 4
    .param p1    # Lcom/zui/launcher/model/WidgetItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->h(Lcom/zui/launcher/model/WidgetItem;)Lcom/zui/launcher/util/ComponentKey;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez p3, :cond_1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;

    iget-object p0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    :goto_0
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;

    iget-object p0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private g(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;)V
    .locals 3
    .param p1    # Lcom/zui/launcher/model/WidgetItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->h(Lcom/zui/launcher/model/WidgetItem;)Lcom/zui/launcher/util/ComponentKey;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static h(Lcom/zui/launcher/model/WidgetItem;)Lcom/zui/launcher/util/ComponentKey;
    .locals 2
    .param p0    # Lcom/zui/launcher/model/WidgetItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/zui/launcher/util/ComponentKey;

    iget-object v1, p0, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p0}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object v0
.end method


# virtual methods
.method public synthetic c(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->a(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;)Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;

    move-result-object v1

    instance-of v2, v1, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;

    if-nez v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    check-cast v1, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;

    invoke-virtual {v1, p3}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->b(Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;

    move-result-object p3

    iget-object v2, p3, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p3, v1, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->b:Landroid/os/CancellationSignal;

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->cancel()V

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->g(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->f(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;)Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearAll()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/widget/f;->a:Lcom/zui/launcher/widget/f;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object p0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;

    instance-of v1, v0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;

    iget-object v0, v0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->b:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public clearPreviews(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/model/WidgetItem;

    invoke-static {v2}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->h(Lcom/zui/launcher/model/WidgetItem;)Lcom/zui/launcher/util/ComponentKey;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;

    instance-of p2, p1, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;

    iget-object p1, p1, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->b:Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public synthetic e(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$b;

    invoke-direct {v1, p4}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$b;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, p2, v1}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->f(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;)Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p1, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;

    iget-object p0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->c:Ljava/util/Set;

    new-instance p1, Lcom/zui/launcher/widget/c;

    invoke-direct {p1, p4}, Lcom/zui/launcher/widget/c;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3, p4}, Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;->onPreviewLoaded(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getPreview(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Lcom/zui/launcher/model/WidgetItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->a(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;)Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;

    move-result-object p0

    instance-of p1, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$b;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$b;

    iget-object p0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$b;->b:Landroid/graphics/Bitmap;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isPreviewLoaded(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;)Z
    .locals 0
    .param p1    # Lcom/zui/launcher/model/WidgetItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->getPreview(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadPreview(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)Landroid/os/CancellationSignal;
    .locals 4
    .param p1    # Lcom/zui/launcher/views/ActivityContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/zui/launcher/model/WidgetItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v1, Lcom/zui/launcher/widget/d;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/zui/launcher/widget/d;-><init>(Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    iget-object v1, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->a(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;)Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;

    move-result-object v2

    instance-of v3, v2, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$b;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$b;

    iget-object p0, v2, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$b;->b:Landroid/graphics/Bitmap;

    invoke-interface {p4, p0}, Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;->onPreviewLoaded(Landroid/graphics/Bitmap;)V

    monitor-exit v1

    return-object v0

    :cond_0
    instance-of v3, v2, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;

    invoke-virtual {v2, p4}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->a(Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->f(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;)Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;

    monitor-exit v1

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->a:Lcom/zui/launcher/widget/WidgetPreviewLoader;

    new-instance v3, Lcom/zui/launcher/widget/e;

    invoke-direct {v3, p0, p2, p3, p4}, Lcom/zui/launcher/widget/e;-><init>(Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)V

    invoke-interface {v2, p1, p2, p3, v3}, Lcom/zui/launcher/widget/WidgetPreviewLoader;->loadPreview(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)Landroid/os/CancellationSignal;

    move-result-object p1

    new-instance v2, Landroidx/collection/ArraySet;

    invoke-direct {v2}, Landroidx/collection/ArraySet;-><init>()V

    invoke-virtual {v2, p4}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;

    invoke-direct {p4, p1, v2}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;-><init>(Landroid/os/CancellationSignal;Ljava/util/Set;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->f(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;)Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
