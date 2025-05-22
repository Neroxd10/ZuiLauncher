.class final Lcom/amap/api/col/l3s/iy$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/iy;->a(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/iy$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/iy;->g:Lcom/amap/api/col/l3s/iy$a;

    invoke-interface {v1}, Lcom/amap/api/col/l3s/iy$a;->b()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/amap/api/col/l3s/iy;->g:Lcom/amap/api/col/l3s/iy$a;

    iget-object v3, p0, Lcom/amap/api/col/l3s/iy$1;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/col/l3s/iy;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/l3s/iy$1;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/amap/api/col/l3s/iy;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v0, v0, v4}, Lcom/amap/api/col/l3s/iy$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/kw;->a()Lcom/amap/api/col/l3s/kw;

    sget-object v2, Lcom/amap/api/col/l3s/iy;->g:Lcom/amap/api/col/l3s/iy$a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/amap/api/col/l3s/iy$a;->a([BLjava/util/Map;)Lcom/amap/api/col/l3s/ld;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/kw;->a(Lcom/amap/api/col/l3s/ld;)[B

    move-result-object v0

    sget-object v1, Lcom/amap/api/col/l3s/iy;->g:Lcom/amap/api/col/l3s/iy$a;

    iget-object p0, p0, Lcom/amap/api/col/l3s/iy$1;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, p0, v2}, Lcom/amap/api/col/l3s/iy$a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sput-object p0, Lcom/amap/api/col/l3s/iy;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
