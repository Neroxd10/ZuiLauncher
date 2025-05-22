.class final Lcom/amap/api/col/l3s/k$38;
.super Lcom/amap/api/col/l3s/k$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/k;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$38;->a:Lcom/amap/api/col/l3s/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/k$a;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-super {p0}, Lcom/amap/api/col/l3s/k$a;->run()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$38;->a:Lcom/amap/api/col/l3s/k;

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/k$a;->c:Z

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/k;->setMapTextEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
