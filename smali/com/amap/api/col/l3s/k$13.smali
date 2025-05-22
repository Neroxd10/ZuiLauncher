.class final Lcom/amap/api/col/l3s/k$13;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/k;->a(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:[Lcom/autonavi/base/ae/gmap/style/StyleItem;

.field final synthetic h:Lcom/amap/api/col/l3s/k;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k;IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$13;->h:Lcom/amap/api/col/l3s/k;

    iput p2, p0, Lcom/amap/api/col/l3s/k$13;->a:I

    iput p3, p0, Lcom/amap/api/col/l3s/k$13;->b:I

    iput p4, p0, Lcom/amap/api/col/l3s/k$13;->c:I

    iput p5, p0, Lcom/amap/api/col/l3s/k$13;->d:I

    iput-boolean p6, p0, Lcom/amap/api/col/l3s/k$13;->e:Z

    iput-boolean p7, p0, Lcom/amap/api/col/l3s/k$13;->f:Z

    iput-object p8, p0, Lcom/amap/api/col/l3s/k$13;->g:[Lcom/autonavi/base/ae/gmap/style/StyleItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$13;->h:Lcom/amap/api/col/l3s/k;

    iget-object v1, v0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v2, p0, Lcom/amap/api/col/l3s/k$13;->a:I

    iget v3, p0, Lcom/amap/api/col/l3s/k$13;->b:I

    iget v4, p0, Lcom/amap/api/col/l3s/k$13;->c:I

    iget v5, p0, Lcom/amap/api/col/l3s/k$13;->d:I

    iget-boolean v6, p0, Lcom/amap/api/col/l3s/k$13;->e:Z

    iget-boolean v7, p0, Lcom/amap/api/col/l3s/k$13;->f:Z

    iget-object v8, p0, Lcom/amap/api/col/l3s/k$13;->g:[Lcom/autonavi/base/ae/gmap/style/StyleItem;

    invoke-virtual/range {v1 .. v8}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setMapModeAndStyle(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
