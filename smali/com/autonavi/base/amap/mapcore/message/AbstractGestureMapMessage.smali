.class public abstract Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;
.super Lcom/autonavi/base/ae/gmap/AbstractMapMessage;
.source ""


# instance fields
.field public anchorX:I

.field public anchorY:I

.field public height:I

.field public isGestureScaleByMapCenter:Z

.field public isUseAnchor:Z

.field private state:I

.field public width:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/base/ae/gmap/AbstractMapMessage;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->width:I

    iput v0, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->height:I

    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->isGestureScaleByMapCenter:Z

    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->isUseAnchor:Z

    iput v0, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->state:I

    iput p1, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->state:I

    return-void
.end method


# virtual methods
.method protected getAnchorGeoPoint(Lcom/autonavi/base/ae/gmap/GLMapState;II)Lcom/autonavi/amap/mapcore/IPoint;
    .locals 0

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Lcom/autonavi/base/ae/gmap/GLMapState;->screenToP20Point(IILandroid/graphics/Point;)V

    return-object p0
.end method

.method public getMapGestureState()I
    .locals 0

    iget p0, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->state:I

    return p0
.end method

.method public abstract getType()I
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->width:I

    iput v0, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->height:I

    iput v0, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->state:I

    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->isGestureScaleByMapCenter:Z

    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->isUseAnchor:Z

    iput v0, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->anchorX:I

    iput v0, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->anchorY:I

    return-void
.end method

.method public abstract runCameraUpdate(Lcom/autonavi/base/ae/gmap/GLMapState;)V
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->state:I

    return-void
.end method

.method protected win2geo(Lcom/autonavi/base/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/IPoint;)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Lcom/autonavi/base/ae/gmap/GLMapState;->screenToP20Point(IILandroid/graphics/Point;)V

    return-void
.end method
