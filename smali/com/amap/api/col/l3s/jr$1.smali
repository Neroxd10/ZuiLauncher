.class final Lcom/amap/api/col/l3s/jr$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/kb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/jr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/jr;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/jr;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/jr$1;->a:Lcom/amap/api/col/l3s/jr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/jr$1;->a:Lcom/amap/api/col/l3s/jr;

    invoke-static {v0}, Lcom/amap/api/col/l3s/jr;->a(Lcom/amap/api/col/l3s/jr;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/jr$1;->a:Lcom/amap/api/col/l3s/jr;

    invoke-static {v0}, Lcom/amap/api/col/l3s/jr;->b(Lcom/amap/api/col/l3s/jr;)Lcom/amap/api/col/l3s/lg;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/l3s/lg;->f:Lcom/amap/api/col/l3s/ma;

    check-cast v0, Lcom/amap/api/col/l3s/js;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/js;->a(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/jr$1;->a:Lcom/amap/api/col/l3s/jr;

    invoke-static {p1}, Lcom/amap/api/col/l3s/jr;->b(Lcom/amap/api/col/l3s/jr;)Lcom/amap/api/col/l3s/lg;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/col/l3s/lg;->f:Lcom/amap/api/col/l3s/ma;

    check-cast p1, Lcom/amap/api/col/l3s/js;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/js;->b()J

    move-result-wide v0

    iget-object p1, p0, Lcom/amap/api/col/l3s/jr$1;->a:Lcom/amap/api/col/l3s/jr;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-static {p1, v1, v0}, Lcom/amap/api/col/l3s/jr;->a(Lcom/amap/api/col/l3s/jr;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/jr$1;->a:Lcom/amap/api/col/l3s/jr;

    invoke-static {p1}, Lcom/amap/api/col/l3s/jr;->a(Lcom/amap/api/col/l3s/jr;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/amap/api/col/l3s/jr$1$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/jr$1$1;-><init>(Lcom/amap/api/col/l3s/jr$1;)V

    const-wide/32 v1, 0xa1220

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
