.class public interface abstract Lcom/lenovo/weathercenter/ILocationData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenter/ILocationData$Stub;,
        Lcom/lenovo/weathercenter/ILocationData$Default;
    }
.end annotation


# virtual methods
.method public abstract getCurrentLocation()V
.end method

.method public abstract register(Lcom/lenovo/weathercenter/ILocationDataListener;)V
.end method

.method public abstract searchCity(Ljava/lang/String;Lcom/lenovo/weathercenter/ICitySearchListener;)V
.end method

.method public abstract setCurrentLocation(DD)V
.end method

.method public abstract unregister(Lcom/lenovo/weathercenter/ILocationDataListener;)V
.end method
