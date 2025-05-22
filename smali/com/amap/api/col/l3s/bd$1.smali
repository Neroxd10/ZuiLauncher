.class final Lcom/amap/api/col/l3s/bd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/ba;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amap/api/col/l3s/bd;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/bd;Lcom/amap/api/col/l3s/ba;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/bd$1;->c:Lcom/amap/api/col/l3s/bd;

    iput-object p2, p0, Lcom/amap/api/col/l3s/bd$1;->a:Lcom/amap/api/col/l3s/ba;

    iput-object p3, p0, Lcom/amap/api/col/l3s/bd$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/bd$1;->a:Lcom/amap/api/col/l3s/ba;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ba;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bd$1;->a:Lcom/amap/api/col/l3s/ba;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ba;->a()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/bd$1;->c:Lcom/amap/api/col/l3s/bd;

    invoke-static {v0}, Lcom/amap/api/col/l3s/bd;->a(Lcom/amap/api/col/l3s/bd;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bd$1;->b:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
