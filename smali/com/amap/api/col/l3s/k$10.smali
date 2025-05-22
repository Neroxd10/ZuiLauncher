.class final Lcom/amap/api/col/l3s/k$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/fk;

.field final synthetic b:Lcom/amap/api/col/l3s/k;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k;Lcom/amap/api/col/l3s/fk;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$10;->b:Lcom/amap/api/col/l3s/k;

    iput-object p2, p0, Lcom/amap/api/col/l3s/k$10;->a:Lcom/amap/api/col/l3s/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$10;->b:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->m(Lcom/amap/api/col/l3s/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$10;->b:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->d:Lcom/amap/api/col/l3s/ax;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$10;->b:Lcom/amap/api/col/l3s/k;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k$10;->b:Lcom/amap/api/col/l3s/k;

    iget-object v1, v1, Lcom/amap/api/col/l3s/k;->d:Lcom/amap/api/col/l3s/ax;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/k;->setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/k$10;->a:Lcom/amap/api/col/l3s/fk;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
