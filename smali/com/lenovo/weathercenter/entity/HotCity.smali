.class public Lcom/lenovo/weathercenter/entity/HotCity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lenovo/weathercenter/entity/HotCity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/weathercenter/entity/HotCity$a;

    invoke-direct {v0}, Lcom/lenovo/weathercenter/entity/HotCity$a;-><init>()V

    sput-object v0, Lcom/lenovo/weathercenter/entity/HotCity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/HotCity;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/HotCity;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/HotCity;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/HotCity;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/HotCity;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCityNameCN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/HotCity;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getCityNameEN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/HotCity;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getCityNameTW()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/HotCity;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/HotCity;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/HotCity;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setCityNameCN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/HotCity;->b:Ljava/lang/String;

    return-void
.end method

.method public setCityNameEN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/HotCity;->c:Ljava/lang/String;

    return-void
.end method

.method public setCityNameTW(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/HotCity;->d:Ljava/lang/String;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/HotCity;->a:Ljava/lang/String;

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/HotCity;->e:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/HotCity;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/HotCity;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/HotCity;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/HotCity;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/HotCity;->e:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
