.class public final Lcom/amap/api/col/l3s/ff;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/fe;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/ex;->f()Lcom/amap/api/col/l3s/je;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/jr;->a(Lcom/amap/api/col/l3s/je;)Lcom/amap/api/col/l3s/jr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/jr;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/amap/api/col/l3s/ex;->f()Lcom/amap/api/col/l3s/je;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/jr;->a(Lcom/amap/api/col/l3s/je;)Lcom/amap/api/col/l3s/jr;

    move-result-object p0

    if-nez p1, :cond_0

    invoke-static {p2, p3}, Lcom/amap/api/col/l3s/jq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/col/l3s/jq;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/jr;->a(Lcom/amap/api/col/l3s/jq;)V

    return-void

    :cond_0
    invoke-static {p2, p3}, Lcom/amap/api/col/l3s/jq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/col/l3s/jq;

    move-result-object p1

    goto :goto_0
.end method
