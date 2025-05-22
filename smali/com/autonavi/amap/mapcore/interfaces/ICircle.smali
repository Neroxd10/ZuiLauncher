.class public interface abstract Lcom/autonavi/amap/mapcore/interfaces/ICircle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IOverlay;


# virtual methods
.method public abstract contains(Lcom/amap/api/maps/model/LatLng;)Z
.end method

.method public abstract getCenter()Lcom/amap/api/maps/model/LatLng;
.end method

.method public abstract getDottedLineType()I
.end method

.method public abstract getFillColor()I
.end method

.method public abstract getHoleOptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRadius()D
.end method

.method public abstract getStrokeColor()I
.end method

.method public abstract getStrokeWidth()F
.end method

.method public abstract setCenter(Lcom/amap/api/maps/model/LatLng;)V
.end method

.method public abstract setDottedLineType(I)V
.end method

.method public abstract setFillColor(I)V
.end method

.method public abstract setHoleOptions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRadius(D)V
.end method

.method public abstract setStrokeColor(I)V
.end method

.method public abstract setStrokeWidth(F)V
.end method
