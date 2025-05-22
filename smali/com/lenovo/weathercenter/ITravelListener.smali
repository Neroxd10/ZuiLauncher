.class public interface abstract Lcom/lenovo/weathercenter/ITravelListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenter/ITravelListener$Stub;,
        Lcom/lenovo/weathercenter/ITravelListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onBusRouteSearched(ILcom/lenovo/weathercenter/entity/Travel;)V
.end method

.method public abstract onDriveRouteSearched(ILcom/lenovo/weathercenter/entity/Travel;)V
.end method

.method public abstract onRideRouteSearched(ILcom/lenovo/weathercenter/entity/Travel;)V
.end method

.method public abstract onTravelError(I)V
.end method

.method public abstract onWalkRouteSearched(ILcom/lenovo/weathercenter/entity/Travel;)V
.end method
