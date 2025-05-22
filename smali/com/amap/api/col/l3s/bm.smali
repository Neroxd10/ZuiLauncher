.class public final Lcom/amap/api/col/l3s/bm;
.super Lcom/amap/api/col/l3s/md;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/cb$a;


# instance fields
.field private a:Lcom/amap/api/col/l3s/cb;

.field private b:Lcom/amap/api/col/l3s/cd;

.field private c:Lcom/amap/api/col/l3s/cg;

.field private d:Landroid/content/Context;

.field private f:Landroid/os/Bundle;

.field private g:Z


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3s/cg;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/md;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bm;->f:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/bm;->g:Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/bm;->c:Lcom/amap/api/col/l3s/cg;

    iput-object p2, p0, Lcom/amap/api/col/l3s/bm;->d:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/l3s/cg;Landroid/content/Context;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/bm;-><init>(Lcom/amap/api/col/l3s/cg;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/bm;->g:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/bm;->a:Lcom/amap/api/col/l3s/cb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/cb;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/md;->cancelTask()V

    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/bm;->b:Lcom/amap/api/col/l3s/cd;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cd;->a()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/bm;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/bm;->f:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bm;->b:Lcom/amap/api/col/l3s/cd;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cd;->b()V

    :cond_0
    return-void
.end method

.method public final runTask()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/bm;->c:Lcom/amap/api/col/l3s/cg;

    invoke-interface {v0}, Lcom/amap/api/col/l3s/cg;->q()Z

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bm;->c:Lcom/amap/api/col/l3s/cg;

    invoke-interface {v0}, Lcom/amap/api/col/l3s/cg;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/cc;

    iget-object v2, p0, Lcom/amap/api/col/l3s/bm;->c:Lcom/amap/api/col/l3s/cg;

    invoke-interface {v2}, Lcom/amap/api/col/l3s/cg;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/bm;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ex;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/l3s/bm;->c:Lcom/amap/api/col/l3s/cg;

    invoke-interface {v4}, Lcom/amap/api/col/l3s/cg;->r()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/amap/api/col/l3s/cc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/col/l3s/cb;

    iget-object v2, p0, Lcom/amap/api/col/l3s/bm;->c:Lcom/amap/api/col/l3s/cg;

    invoke-interface {v2}, Lcom/amap/api/col/l3s/cg;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/bm;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/col/l3s/bm;->c:Lcom/amap/api/col/l3s/cg;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/col/l3s/cb;-><init>(Lcom/amap/api/col/l3s/cc;Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/col/l3s/ch;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bm;->a:Lcom/amap/api/col/l3s/cb;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/cb;->a(Lcom/amap/api/col/l3s/cb$a;)V

    new-instance v0, Lcom/amap/api/col/l3s/cd;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bm;->c:Lcom/amap/api/col/l3s/cg;

    iget-object v2, p0, Lcom/amap/api/col/l3s/bm;->c:Lcom/amap/api/col/l3s/cg;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3s/cd;-><init>(Lcom/amap/api/col/l3s/ca;Lcom/amap/api/col/l3s/bz;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bm;->b:Lcom/amap/api/col/l3s/cd;

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/bm;->g:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bm;->a:Lcom/amap/api/col/l3s/cb;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cb;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
