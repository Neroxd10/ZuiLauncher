.class public abstract Lcom/lenovo/weathercenter/ILocationData$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/lenovo/weathercenter/ILocationData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenter/ILocationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenter/ILocationData$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.lenovo.weathercenter.ILocationData"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/ILocationData;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.lenovo.weathercenter.ILocationData"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lenovo/weathercenter/ILocationData;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/lenovo/weathercenter/ILocationData;

    return-object v0

    :cond_1
    new-instance v0, Lcom/lenovo/weathercenter/ILocationData$Stub$a;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenter/ILocationData$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/lenovo/weathercenter/ILocationData;
    .locals 1

    sget-object v0, Lcom/lenovo/weathercenter/ILocationData$Stub$a;->b:Lcom/lenovo/weathercenter/ILocationData;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/lenovo/weathercenter/ILocationData;)Z
    .locals 1

    sget-object v0, Lcom/lenovo/weathercenter/ILocationData$Stub$a;->b:Lcom/lenovo/weathercenter/ILocationData;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/lenovo/weathercenter/ILocationData$Stub$a;->b:Lcom/lenovo/weathercenter/ILocationData;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.lenovo.weathercenter.ILocationData"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/lenovo/weathercenter/ICitySearchListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/ICitySearchListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/lenovo/weathercenter/ILocationData;->searchCity(Ljava/lang/String;Lcom/lenovo/weathercenter/ICitySearchListener;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p1

    invoke-interface {p0, v1, v2, p1, p2}, Lcom/lenovo/weathercenter/ILocationData;->setCurrentLocation(DD)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/lenovo/weathercenter/ILocationData;->getCurrentLocation()V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/lenovo/weathercenter/ILocationDataListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/ILocationDataListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/lenovo/weathercenter/ILocationData;->unregister(Lcom/lenovo/weathercenter/ILocationDataListener;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/lenovo/weathercenter/ILocationDataListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/ILocationDataListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/lenovo/weathercenter/ILocationData;->register(Lcom/lenovo/weathercenter/ILocationDataListener;)V

    goto :goto_0
.end method
