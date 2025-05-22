.class public Lcom/lenovo/weathercenter/entity/Forecast;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lenovo/weathercenter/entity/Forecast;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:D

.field private l:I

.field private m:D

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/weathercenter/entity/Forecast$a;

    invoke-direct {v0}, Lcom/lenovo/weathercenter/entity/Forecast$a;-><init>()V

    sput-object v0, Lcom/lenovo/weathercenter/entity/Forecast;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x111

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->f:I

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->g:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->n:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x111

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->f:I

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->g:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->n:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->d:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->e:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->k:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->m:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->n:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->o:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->p:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->q:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAirQualityForcast()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->n:I

    return p0
.end method

.method public getForcastDate()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->b:J

    return-wide v0
.end method

.method public getLastUptime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->q:J

    return-wide v0
.end method

.method public getMaxTemperature()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->f:I

    return p0
.end method

.method public getMinTemperature()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->g:I

    return p0
.end method

.method public getMoreDaysLink()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->o:Ljava/lang/String;

    return-object p0
.end method

.method public getPublishTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getSunRiseTime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->d:J

    return-wide v0
.end method

.method public getSunSetTime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->e:J

    return-wide v0
.end method

.method public getTodayLink()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->p:Ljava/lang/String;

    return-object p0
.end method

.method public getWeatherIdDay()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->h:I

    return p0
.end method

.method public getWeatherIdNight()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->i:I

    return p0
.end method

.method public getWindDirectionDay()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->j:I

    return p0
.end method

.method public getWindDirectionNight()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->l:I

    return p0
.end method

.method public getWindPowerDay()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->k:D

    return-wide v0
.end method

.method public getWindPowerNight()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->m:D

    return-wide v0
.end method

.method public setAirQualityForcast(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->n:I

    return-void
.end method

.method public setForcastDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->b:J

    return-void
.end method

.method public setLastUptime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->q:J

    return-void
.end method

.method public setMaxTemperature(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->f:I

    return-void
.end method

.method public setMinTemperature(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->g:I

    return-void
.end method

.method public setMoreDaysLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->o:Ljava/lang/String;

    return-void
.end method

.method public setPublishTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->c:Ljava/lang/String;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->a:Ljava/lang/String;

    return-void
.end method

.method public setSunRiseTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->d:J

    return-void
.end method

.method public setSunSetTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->e:J

    return-void
.end method

.method public setTodayLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->p:Ljava/lang/String;

    return-void
.end method

.method public setWeatherIdDay(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->h:I

    return-void
.end method

.method public setWeatherIdNight(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->i:I

    return-void
.end method

.method public setWindDirectionDay(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->j:I

    return-void
.end method

.method public setWindDirectionNight(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->l:I

    return-void
.end method

.method public setWindPowerDay(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->k:D

    return-void
.end method

.method public setWindPowerNight(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->m:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / forcastDate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lenovo/weathercenter/entity/Forecast;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " / publish time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/Forecast;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/Forecast;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Forecast;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Forecast;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Forecast;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Forecast;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Forecast;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->k:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Forecast;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->m:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Forecast;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/Forecast;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/Forecast;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Forecast;->q:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
