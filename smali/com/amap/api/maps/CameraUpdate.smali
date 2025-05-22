.class public final Lcom/amap/api/maps/CameraUpdate;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;


# direct methods
.method constructor <init>(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps/CameraUpdate;->a:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    return-void
.end method


# virtual methods
.method public final getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/CameraUpdate;->a:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    return-object p0
.end method
