.class public interface abstract Lcom/lenovo/weathercenter/ILocationDataListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenter/ILocationDataListener$Stub;,
        Lcom/lenovo/weathercenter/ILocationDataListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onCurrentLocationChanged(ILcom/lenovo/weathercenter/entity/CityDetail;)V
.end method
