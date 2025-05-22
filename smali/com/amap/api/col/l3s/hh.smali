.class public Lcom/amap/api/col/l3s/hh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/hh$a;,
        Lcom/amap/api/col/l3s/hh$b;,
        Lcom/amap/api/col/l3s/hh$c;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/amap/api/col/l3s/hh;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amap/api/col/l3s/hi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/hh;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/amap/api/col/l3s/hh;
    .locals 2

    sget-object v0, Lcom/amap/api/col/l3s/hh;->a:Lcom/amap/api/col/l3s/hh;

    if-nez v0, :cond_1

    const-class v0, Lcom/amap/api/col/l3s/hh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/hh;->a:Lcom/amap/api/col/l3s/hh;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3s/hh;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/hh;-><init>()V

    sput-object v1, Lcom/amap/api/col/l3s/hh;->a:Lcom/amap/api/col/l3s/hh;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/api/col/l3s/hh;->a:Lcom/amap/api/col/l3s/hh;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/hh$b;)Lcom/amap/api/col/l3s/hh$c;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/hh;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3s/hi;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/amap/api/col/l3s/hi;->a(Lcom/amap/api/col/l3s/hh$b;)Lcom/amap/api/col/l3s/hh$c;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Lcom/amap/api/col/l3s/hi;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/hh;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/col/l3s/hi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/amap/api/col/l3s/hh$a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/hh;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/hi;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/hi;->a(Lcom/amap/api/col/l3s/hh$a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/hh$b;Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/hh;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/hi;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/col/l3s/hi;->a(Lcom/amap/api/col/l3s/hh$b;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/amap/api/col/l3s/hh$a;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/hh;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/col/l3s/hi;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lcom/amap/api/col/l3s/hi;->a(Lcom/amap/api/col/l3s/hh$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/amap/api/col/l3s/hi;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/hh;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Lcom/amap/api/col/l3s/hh$b;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/hh;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3s/hi;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/amap/api/col/l3s/hi;->b(Lcom/amap/api/col/l3s/hh$b;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method
