.class final Lcom/amap/api/col/l3s/fo$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/fo;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/fo;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/fo;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fo$1;->a:Lcom/amap/api/col/l3s/fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invalidateCompassView()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo$1;->a:Lcom/amap/api/col/l3s/fo;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fo;->b(Lcom/amap/api/col/l3s/fo;)Lcom/amap/api/col/l3s/fl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo$1;->a:Lcom/amap/api/col/l3s/fo;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fo;->b(Lcom/amap/api/col/l3s/fo;)Lcom/amap/api/col/l3s/fl;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/fo$1$2;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/fo$1$2;-><init>(Lcom/amap/api/col/l3s/fo$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final invalidateScaleView()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo$1;->a:Lcom/amap/api/col/l3s/fo;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fo;->a(Lcom/amap/api/col/l3s/fo;)Lcom/amap/api/col/l3s/fq;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo$1;->a:Lcom/amap/api/col/l3s/fo;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fo;->a(Lcom/amap/api/col/l3s/fo;)Lcom/amap/api/col/l3s/fq;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/fo$1$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/fo$1$1;-><init>(Lcom/amap/api/col/l3s/fo$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final invalidateZoomController(F)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fo$1;->a:Lcom/amap/api/col/l3s/fo;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fo;->c(Lcom/amap/api/col/l3s/fo;)Lcom/amap/api/col/l3s/fs;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fo$1;->a:Lcom/amap/api/col/l3s/fo;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fo;->c(Lcom/amap/api/col/l3s/fo;)Lcom/amap/api/col/l3s/fs;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/fo$1$3;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/fo$1$3;-><init>(Lcom/amap/api/col/l3s/fo$1;F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setFrontViewVisibility(Z)V
    .locals 0

    return-void
.end method
