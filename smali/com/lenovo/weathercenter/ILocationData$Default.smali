.class public Lcom/lenovo/weathercenter/ILocationData$Default;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/weathercenter/ILocationData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenter/ILocationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentLocation()V
    .locals 0

    return-void
.end method

.method public register(Lcom/lenovo/weathercenter/ILocationDataListener;)V
    .locals 0

    return-void
.end method

.method public searchCity(Ljava/lang/String;Lcom/lenovo/weathercenter/ICitySearchListener;)V
    .locals 0

    return-void
.end method

.method public setCurrentLocation(DD)V
    .locals 0

    return-void
.end method

.method public unregister(Lcom/lenovo/weathercenter/ILocationDataListener;)V
    .locals 0

    return-void
.end method
