.class public abstract Lcom/lenovo/weathercenter/IWeather$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/lenovo/weathercenter/IWeather;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenter/IWeather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenter/IWeather$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.lenovo.weathercenter.IWeather"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/IWeather;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.lenovo.weathercenter.IWeather"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lenovo/weathercenter/IWeather;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/lenovo/weathercenter/IWeather;

    return-object v0

    :cond_1
    new-instance v0, Lcom/lenovo/weathercenter/IWeather$Stub$a;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenter/IWeather$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/lenovo/weathercenter/IWeather;
    .locals 1

    sget-object v0, Lcom/lenovo/weathercenter/IWeather$Stub$a;->b:Lcom/lenovo/weathercenter/IWeather;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/lenovo/weathercenter/IWeather;)Z
    .locals 1

    sget-object v0, Lcom/lenovo/weathercenter/IWeather$Stub$a;->b:Lcom/lenovo/weathercenter/IWeather;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/lenovo/weathercenter/IWeather$Stub$a;->b:Lcom/lenovo/weathercenter/IWeather;

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.lenovo.weathercenter.IWeather"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/lenovo/weathercenter/IWeather;->getHotCitys()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/lenovo/weathercenter/IWeatherListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/IWeatherListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/lenovo/weathercenter/IWeather;->unregister(Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/lenovo/weathercenter/IWeatherListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/IWeatherListener;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/lenovo/weathercenter/IWeather;->register(Ljava/lang/String;Ljava/util/List;Lcom/lenovo/weathercenter/IWeatherListener;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/lenovo/weathercenter/IWeatherListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/IWeatherListener;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/lenovo/weathercenter/IWeather;->getAlert(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/lenovo/weathercenter/IWeatherListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/IWeatherListener;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/lenovo/weathercenter/IWeather;->get24Hour(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/lenovo/weathercenter/IWeatherListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/IWeatherListener;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/lenovo/weathercenter/IWeather;->getAir(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/lenovo/weathercenter/IWeatherListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/IWeatherListener;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/lenovo/weathercenter/IWeather;->getIndex(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/lenovo/weathercenter/IWeatherListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/IWeatherListener;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/lenovo/weathercenter/IWeather;->getCondition(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/lenovo/weathercenter/IWeatherListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/IWeatherListener;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/lenovo/weathercenter/IWeather;->getForecast(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/lenovo/weathercenter/IWeatherListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/IWeatherListener;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/lenovo/weathercenter/IWeather;->getWeather(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/IWeatherListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
