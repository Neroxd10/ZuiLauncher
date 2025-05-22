.class final Lcom/amap/api/col/l3s/dj$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/fa$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/dj;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/col/l3s/ai;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/dj;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/dj;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/dj$1;->a:Lcom/amap/api/col/l3s/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dj$1;->a:Lcom/amap/api/col/l3s/dj;

    invoke-static {p0}, Lcom/amap/api/col/l3s/dj;->a(Lcom/amap/api/col/l3s/dj;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->resetRenderTimeLongLong()V

    return-void
.end method
