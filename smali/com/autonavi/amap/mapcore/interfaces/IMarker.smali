.class public interface abstract Lcom/autonavi/amap/mapcore/interfaces/IMarker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;


# virtual methods
.method public abstract getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;
.end method

.method public abstract getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;
.end method

.method public abstract getIcons()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPeriod()I
.end method

.method public abstract getSnippet()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract hideInfoWindow()V
.end method

.method public abstract isDraggable()Z
.end method

.method public abstract isFlat()Z
.end method

.method public abstract isInfoWindowShown()Z
.end method

.method public abstract isPerspective()Z
.end method

.method public abstract isRemoved()Z
.end method

.method public abstract set2Top()V
.end method

.method public abstract setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
.end method

.method public abstract setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
.end method

.method public abstract setBelowMaskLayer(Z)V
.end method

.method public abstract setDraggable(Z)V
.end method

.method public abstract setFlat(Z)V
.end method

.method public abstract setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V
.end method

.method public abstract setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V
.end method

.method public abstract setIcons(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPeriod(I)V
.end method

.method public abstract setPerspective(Z)V
.end method

.method public abstract setPositionByPixels(II)V
.end method

.method public abstract setSnippet(Ljava/lang/String;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract showInfoWindow()V
.end method

.method public abstract startAnimation()Z
.end method
