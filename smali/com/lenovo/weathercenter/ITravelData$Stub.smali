.class public abstract Lcom/lenovo/weathercenter/ITravelData$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/lenovo/weathercenter/ITravelData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenter/ITravelData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenter/ITravelData$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.lenovo.weathercenter.ITravelData"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/ITravelData;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.lenovo.weathercenter.ITravelData"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lenovo/weathercenter/ITravelData;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/lenovo/weathercenter/ITravelData;

    return-object v0

    :cond_1
    new-instance v0, Lcom/lenovo/weathercenter/ITravelData$Stub$a;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenter/ITravelData$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/lenovo/weathercenter/ITravelData;
    .locals 1

    sget-object v0, Lcom/lenovo/weathercenter/ITravelData$Stub$a;->b:Lcom/lenovo/weathercenter/ITravelData;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/lenovo/weathercenter/ITravelData;)Z
    .locals 1

    sget-object v0, Lcom/lenovo/weathercenter/ITravelData$Stub$a;->b:Lcom/lenovo/weathercenter/ITravelData;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/lenovo/weathercenter/ITravelData$Stub$a;->b:Lcom/lenovo/weathercenter/ITravelData;

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
    .locals 8

    const/4 v0, 0x1

    const-string v1, "com.lenovo.weathercenter.ITravelData"

    if-eq p1, v0, :cond_1

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

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/lenovo/weathercenter/ITravelListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/ITravelListener;

    move-result-object v7

    move-object v1, p0

    invoke-interface/range {v1 .. v7}, Lcom/lenovo/weathercenter/ITravelData;->loadTraffic(ILjava/lang/String;Ljava/lang/String;IILcom/lenovo/weathercenter/ITravelListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
