.class public abstract Lcom/lenovo/weathercenter/IWidgetWeather$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/lenovo/weathercenter/IWidgetWeather;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenter/IWidgetWeather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenter/IWidgetWeather$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.lenovo.weathercenter.IWidgetWeather"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/IWidgetWeather;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.lenovo.weathercenter.IWidgetWeather"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lenovo/weathercenter/IWidgetWeather;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/lenovo/weathercenter/IWidgetWeather;

    return-object v0

    :cond_1
    new-instance v0, Lcom/lenovo/weathercenter/IWidgetWeather$Stub$a;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenter/IWidgetWeather$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/lenovo/weathercenter/IWidgetWeather;
    .locals 1

    sget-object v0, Lcom/lenovo/weathercenter/IWidgetWeather$Stub$a;->b:Lcom/lenovo/weathercenter/IWidgetWeather;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/lenovo/weathercenter/IWidgetWeather;)Z
    .locals 1

    sget-object v0, Lcom/lenovo/weathercenter/IWidgetWeather$Stub$a;->b:Lcom/lenovo/weathercenter/IWidgetWeather;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/lenovo/weathercenter/IWidgetWeather$Stub$a;->b:Lcom/lenovo/weathercenter/IWidgetWeather;

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

    const-string v1, "com.lenovo.weathercenter.IWidgetWeather"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

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

    invoke-static {p2}, Lcom/lenovo/weathercenter/IWidgetWeatherListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/IWidgetWeatherListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/lenovo/weathercenter/IWidgetWeather;->unregister(Ljava/lang/String;Lcom/lenovo/weathercenter/IWidgetWeatherListener;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/lenovo/weathercenter/IWidgetWeatherListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/IWidgetWeatherListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/lenovo/weathercenter/IWidgetWeather;->register(Ljava/lang/String;Lcom/lenovo/weathercenter/IWidgetWeatherListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/lenovo/weathercenter/IWidgetWeather;->getDefaultCityWeather(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    sget-object p4, Lcom/lenovo/weathercenter/entity/CityDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lenovo/weathercenter/entity/CityDetail;

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    :goto_1
    invoke-interface {p0, p1, p2}, Lcom/lenovo/weathercenter/IWidgetWeather;->setDefaultCity(Ljava/lang/String;Lcom/lenovo/weathercenter/entity/CityDetail;)V

    goto :goto_0
.end method
