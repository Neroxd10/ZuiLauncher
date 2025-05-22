.class final Lcom/amap/api/col/l3s/kb$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/kb;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/je;Ljava/lang/String;Lcom/amap/api/col/l3s/lg;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/col/l3s/je;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/amap/api/col/l3s/lg;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3s/je;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/col/l3s/lg;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/kb$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/kb$1;->b:Lcom/amap/api/col/l3s/je;

    iput-object p3, p0, Lcom/amap/api/col/l3s/kb$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/amap/api/col/l3s/kb$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/amap/api/col/l3s/kb$1;->e:Lcom/amap/api/col/l3s/lg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/l3s/kb$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/l3s/kb$1;->b:Lcom/amap/api/col/l3s/je;

    iget-object v2, p0, Lcom/amap/api/col/l3s/kb$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/l3s/kb$1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/l3s/kb;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/je;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/kb$1;->e:Lcom/amap/api/col/l3s/lg;

    iget-object v2, v1, Lcom/amap/api/col/l3s/lg;->e:Lcom/amap/api/col/l3s/kq;

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/col/l3s/ko;

    new-instance v3, Lcom/amap/api/col/l3s/kp;

    new-instance v4, Lcom/amap/api/col/l3s/kr;

    new-instance v5, Lcom/amap/api/col/l3s/ks;

    invoke-direct {v5}, Lcom/amap/api/col/l3s/ks;-><init>()V

    invoke-direct {v4, v5}, Lcom/amap/api/col/l3s/kr;-><init>(Lcom/amap/api/col/l3s/kq;)V

    invoke-direct {v3, v4}, Lcom/amap/api/col/l3s/kp;-><init>(Lcom/amap/api/col/l3s/kq;)V

    invoke-direct {v2, v3}, Lcom/amap/api/col/l3s/ko;-><init>(Lcom/amap/api/col/l3s/kq;)V

    iput-object v2, v1, Lcom/amap/api/col/l3s/lg;->e:Lcom/amap/api/col/l3s/kq;

    :cond_0
    invoke-static {v0}, Lcom/amap/api/col/l3s/jc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/col/l3s/jf;->a(Ljava/lang/String;)[B

    move-result-object v0

    iget-object p0, p0, Lcom/amap/api/col/l3s/kb$1;->e:Lcom/amap/api/col/l3s/lg;

    invoke-static {v1, v0, p0}, Lcom/amap/api/col/l3s/lh;->a(Ljava/lang/String;[BLcom/amap/api/col/l3s/lg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
