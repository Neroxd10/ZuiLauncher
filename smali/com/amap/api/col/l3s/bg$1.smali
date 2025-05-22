.class final Lcom/amap/api/col/l3s/bg$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/by$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/amap/api/col/l3s/bg;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/bg;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/bg$1;->c:Lcom/amap/api/col/l3s/bg;

    iput-object p2, p0, Lcom/amap/api/col/l3s/bg$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/col/l3s/bg$1;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg$1;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ce;->b(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg$1;->c:Lcom/amap/api/col/l3s/bg;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg$1;->c:Lcom/amap/api/col/l3s/bg;

    iget-object v0, v0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ck;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/bg$1;->c:Lcom/amap/api/col/l3s/bg;

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->k:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ck;->b()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/ck;->a(I)V

    return-void
.end method

.method public final a(F)V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg$1;->c:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result v0

    float-to-double v1, p1

    const-wide v3, 0x3fd8f5c28f5c28f6L    # 0.39

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    add-double/2addr v1, v3

    double-to-int p1, v1

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/col/l3s/bg$1;->c:Lcom/amap/api/col/l3s/bg;

    invoke-static {v2}, Lcom/amap/api/col/l3s/bg;->a(Lcom/amap/api/col/l3s/bg;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg$1;->c:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/bg$1;->c:Lcom/amap/api/col/l3s/bg;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/bg;->a(Lcom/amap/api/col/l3s/bg;J)J

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/bg$1;->c:Lcom/amap/api/col/l3s/bg;

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->k:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ck;->b()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/ck;->a(I)V

    return-void
.end method
