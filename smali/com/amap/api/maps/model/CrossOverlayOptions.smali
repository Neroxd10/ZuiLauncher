.class public Lcom/amap/api/maps/model/CrossOverlayOptions;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

.field private bitmapDescriptor:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/model/CrossOverlayOptions;->a:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    iput-object v0, p0, Lcom/amap/api/maps/model/CrossOverlayOptions;->bitmapDescriptor:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getAttribute()Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/CrossOverlayOptions;->a:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    return-object p0
.end method

.method public getRes()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/CrossOverlayOptions;->bitmapDescriptor:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setAttribute(Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;)Lcom/amap/api/maps/model/CrossOverlayOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/CrossOverlayOptions;->a:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    return-object p0
.end method

.method public setRes(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/CrossOverlayOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/CrossOverlayOptions;->bitmapDescriptor:Landroid/graphics/Bitmap;

    return-object p0
.end method
