.class public Lcom/lenovo/weathercenter/entity/Condition;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lenovo/weathercenter/entity/Condition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:D

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/weathercenter/entity/Condition$a;

    invoke-direct {v0}, Lcom/lenovo/weathercenter/entity/Condition$a;-><init>()V

    sput-object v0, Lcom/lenovo/weathercenter/entity/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->c:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->g:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->l:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/Condition;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEpochDateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->b:J

    return-wide v0
.end method

.method public getHumidity()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Condition;->e:I

    return p0
.end method

.method public getLastUptime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->l:J

    return-wide v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/Condition;->k:Ljava/lang/String;

    return-object p0
.end method

.method public getPrecipitation()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Condition;->i:I

    return p0
.end method

.method public getPressure()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Condition;->j:I

    return p0
.end method

.method public getPublishTime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->c:J

    return-wide v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/Condition;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getTemperature()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Condition;->d:I

    return p0
.end method

.method public getWeatherID()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Condition;->h:I

    return p0
.end method

.method public getWeatherText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/Condition;->m:Ljava/lang/String;

    return-object p0
.end method

.method public getWindDirection()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Condition;->f:I

    return p0
.end method

.method public getWindPower()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->g:D

    return-wide v0
.end method

.method public setEpochDateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Condition;->b:J

    return-void
.end method

.method public setHumidity(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Condition;->e:I

    return-void
.end method

.method public setLastUptime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Condition;->l:J

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/Condition;->k:Ljava/lang/String;

    return-void
.end method

.method public setPrecipitation(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Condition;->i:I

    return-void
.end method

.method public setPressure(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Condition;->j:I

    return-void
.end method

.method public setPublishTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Condition;->c:J

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/Condition;->a:Ljava/lang/String;

    return-void
.end method

.method public setTemperature(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Condition;->d:I

    return-void
.end method

.method public setWeatherID(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Condition;->h:I

    return-void
.end method

.method public setWeatherText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/Condition;->m:Ljava/lang/String;

    return-void
.end method

.method public setWindDirection(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Condition;->f:I

    return-void
.end method

.method public setWindPower(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Condition;->g:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/Condition;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Condition;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Condition;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Condition;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->g:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Condition;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Condition;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Condition;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/Condition;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Condition;->l:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/Condition;->m:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
