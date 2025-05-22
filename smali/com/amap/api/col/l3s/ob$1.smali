.class final Lcom/amap/api/col/l3s/ob$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/ob;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/ob;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/ob;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ob$1;->a:Lcom/amap/api/col/l3s/ob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$1;->a:Lcom/amap/api/col/l3s/ob;

    iget-object v0, v0, Lcom/amap/api/col/l3s/ob;->d:Lcom/amap/api/col/l3s/ng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$1;->a:Lcom/amap/api/col/l3s/ob;

    iget-object v0, v0, Lcom/amap/api/col/l3s/ob;->b:Lcom/amap/api/col/l3s/ok;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ob$1;->a:Lcom/amap/api/col/l3s/ob;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ob;->b:Lcom/amap/api/col/l3s/ok;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ok;->a()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ng;->b(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "cl"

    const-string v1, "upwr"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
