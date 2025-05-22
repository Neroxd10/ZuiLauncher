.class final Lcom/amap/api/col/l3s/bh$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/bh;->a(Lcom/amap/api/col/l3s/bg;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/bg;

.field final synthetic b:Z

.field final synthetic c:Lcom/amap/api/col/l3s/bh;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/bh;Lcom/amap/api/col/l3s/bg;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/bh$2;->c:Lcom/amap/api/col/l3s/bh;

    iput-object p2, p0, Lcom/amap/api/col/l3s/bh$2;->a:Lcom/amap/api/col/l3s/bg;

    iput-boolean p3, p0, Lcom/amap/api/col/l3s/bh$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh$2;->a:Lcom/amap/api/col/l3s/bg;

    iget-object v0, v0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh$2;->a:Lcom/amap/api/col/l3s/bg;

    iget-object v1, v1, Lcom/amap/api/col/l3s/bg;->a:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh$2;->c:Lcom/amap/api/col/l3s/bh;

    invoke-static {v0}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh$2;->c:Lcom/amap/api/col/l3s/bh;

    invoke-static {v0}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object v0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bh$2;->a:Lcom/amap/api/col/l3s/bg;

    invoke-interface {v0, p0}, Lcom/amap/api/col/l3s/bh$a;->c(Lcom/amap/api/col/l3s/bg;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh$2;->a:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh$2;->a:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh$2;->c:Lcom/amap/api/col/l3s/bh;

    iget-object v0, v0, Lcom/amap/api/col/l3s/bh;->g:Lcom/amap/api/col/l3s/bn;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh$2;->a:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/bn;->a(Lcom/amap/api/col/l3s/bg;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh$2;->c:Lcom/amap/api/col/l3s/bh;

    invoke-static {v0}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh$2;->c:Lcom/amap/api/col/l3s/bh;

    invoke-static {v0}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object v0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bh$2;->a:Lcom/amap/api/col/l3s/bg;

    invoke-interface {v0, p0}, Lcom/amap/api/col/l3s/bh$a;->c(Lcom/amap/api/col/l3s/bg;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh$2;->c:Lcom/amap/api/col/l3s/bh;

    iget-object v0, v0, Lcom/amap/api/col/l3s/bh;->g:Lcom/amap/api/col/l3s/bn;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh$2;->a:Lcom/amap/api/col/l3s/bg;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/bn;->a(Lcom/amap/api/col/l3s/bg;)V

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/bh$2;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh$2;->c:Lcom/amap/api/col/l3s/bh;

    invoke-static {v0}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh$2;->c:Lcom/amap/api/col/l3s/bh;

    invoke-static {v0}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object v0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bh$2;->a:Lcom/amap/api/col/l3s/bg;

    invoke-interface {v0, p0}, Lcom/amap/api/col/l3s/bh$a;->c(Lcom/amap/api/col/l3s/bg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "requestDelete"

    const-string v1, "removeExcecRunnable"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
