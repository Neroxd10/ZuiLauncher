.class final Lcom/amap/api/col/l3s/bh$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/bh;->e(Lcom/amap/api/col/l3s/bg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/bg;

.field final synthetic b:Lcom/amap/api/col/l3s/bh;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/bh;Lcom/amap/api/col/l3s/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/bh$3;->b:Lcom/amap/api/col/l3s/bh;

    iput-object p2, p0, Lcom/amap/api/col/l3s/bh$3;->a:Lcom/amap/api/col/l3s/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh$3;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {v0}, Lcom/amap/api/col/l3s/bh;->e(Lcom/amap/api/col/l3s/bh;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh$3;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {v0}, Lcom/amap/api/col/l3s/bh;->b(Lcom/amap/api/col/l3s/bh;)V

    new-instance v0, Lcom/amap/api/col/l3s/bj;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh$3;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {v1}, Lcom/amap/api/col/l3s/bh;->c(Lcom/amap/api/col/l3s/bh;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/amap/api/col/l3s/bh;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3s/bj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/cf;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/bi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh$3;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {v1}, Lcom/amap/api/col/l3s/bh;->f(Lcom/amap/api/col/l3s/bh;)Z

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/bi;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh$3;->b:Lcom/amap/api/col/l3s/bh;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/bh;->c()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh$3;->a:Lcom/amap/api/col/l3s/bg;

    sget-object v1, Lcom/amap/api/col/l3s/bh;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setVersion(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/bh$3;->a:Lcom/amap/api/col/l3s/bg;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CityOperation current State==>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ck;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg;->d:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ck;->d()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg;->c:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ck;->e()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg;->g:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v2, p0, Lcom/amap/api/col/l3s/bg;->h:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v2, p0, Lcom/amap/api/col/l3s/bg;->j:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v2, p0, Lcom/amap/api/col/l3s/bg;->i:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v2, p0, Lcom/amap/api/col/l3s/bg;->k:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/ck;->b()I

    move-result v2

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ck;->b()I

    move-result v0

    if-ne v2, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    invoke-interface {p0}, Lcom/amap/api/col/l3s/co;->h()V

    return-void

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ck;->c()V

    return-void

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/bh;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/bh;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/bh;->a(Lcom/amap/api/col/l3s/bg;)V

    :cond_8
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/bg;->n:Z
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "OfflineDownloadManager"

    const-string v1, "startDownloadRunnable"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
