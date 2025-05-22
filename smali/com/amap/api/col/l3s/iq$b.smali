.class final Lcom/amap/api/col/l3s/iq$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/trace/TraceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/iq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/iq;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3s/iq;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amap/api/col/l3s/iq$b;->b:Ljava/util/List;

    return-void
.end method

.method private a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {v0}, Lcom/amap/api/col/l3s/iq;->a(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {v1}, Lcom/amap/api/col/l3s/iq;->a(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {v1}, Lcom/amap/api/col/l3s/iq;->a(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p2, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {p2}, Lcom/amap/api/col/l3s/iq;->c(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {p1}, Lcom/amap/api/col/l3s/iq;->c(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {p2}, Lcom/amap/api/col/l3s/iq;->a(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;

    move-result-object p2

    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {p1}, Lcom/amap/api/col/l3s/iq;->c(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {p2}, Lcom/amap/api/col/l3s/iq;->d(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {p1}, Lcom/amap/api/col/l3s/iq;->c(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {p2}, Lcom/amap/api/col/l3s/iq;->a(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {p1}, Lcom/amap/api/col/l3s/iq;->f(Lcom/amap/api/col/l3s/iq;)Lcom/amap/api/trace/TraceStatusListener;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {p2}, Lcom/amap/api/col/l3s/iq;->e(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {p0}, Lcom/amap/api/col/l3s/iq;->c(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;

    move-result-object p0

    const-string v0, "\u7ea0\u504f\u6210\u529f"

    invoke-interface {p1, p2, p0, v0}, Lcom/amap/api/trace/TraceStatusListener;->onTraceStatus(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final onFinished(ILjava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/iq$b;->a(ILjava/util/List;)V

    return-void
.end method

.method public final onRequestFailed(ILjava/lang/String;)V
    .locals 8

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {v0}, Lcom/amap/api/col/l3s/iq;->a(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {v0}, Lcom/amap/api/col/l3s/iq;->a(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/iq$b;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/iq$b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {v2}, Lcom/amap/api/col/l3s/iq;->b(Lcom/amap/api/col/l3s/iq;)I

    move-result v2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/iq$b;->a:Lcom/amap/api/col/l3s/iq;

    invoke-static {v1}, Lcom/amap/api/col/l3s/iq;->b(Lcom/amap/api/col/l3s/iq;)I

    move-result v1

    sub-int v1, v0, v1

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3s/iq$b;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/trace/TraceLocation;

    if-eqz v2, :cond_1

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v2}, Lcom/amap/api/trace/TraceLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/amap/api/trace/TraceLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/iq$b;->a(ILjava/util/List;)V

    return-void
.end method

.method public final onTraceProcessing(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
