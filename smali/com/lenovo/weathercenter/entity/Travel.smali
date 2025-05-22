.class public Lcom/lenovo/weathercenter/entity/Travel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lenovo/weathercenter/entity/Travel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:F

.field private e:F

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/weathercenter/entity/Travel$a;

    invoke-direct {v0}, Lcom/lenovo/weathercenter/entity/Travel$a;-><init>()V

    sput-object v0, Lcom/lenovo/weathercenter/entity/Travel;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Travel;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/Travel;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/Travel;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Travel;->d:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Travel;->e:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Travel;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Travel;->g:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getmDepartureAirport()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/Travel;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getmDepartureCity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/Travel;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getmDistance()F
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Travel;->d:F

    return p0
.end method

.method public getmDuration()F
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Travel;->e:F

    return p0
.end method

.method public getmMode()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Travel;->g:I

    return p0
.end method

.method public getmRouteType()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Travel;->f:I

    return p0
.end method

.method public getmToken()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Travel;->a:I

    return p0
.end method

.method public setmDepartureAirport(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/Travel;->c:Ljava/lang/String;

    return-void
.end method

.method public setmDepartureCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/Travel;->b:Ljava/lang/String;

    return-void
.end method

.method public setmDistance(F)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Travel;->d:F

    return-void
.end method

.method public setmDuration(F)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Travel;->e:F

    return-void
.end method

.method public setmMode(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Travel;->g:I

    return-void
.end method

.method public setmRouteType(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Travel;->f:I

    return-void
.end method

.method public setmToken(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Travel;->a:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Travel;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/Travel;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/Travel;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Travel;->d:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Travel;->e:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Travel;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Travel;->g:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
