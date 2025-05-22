.class public Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition$a;

    invoke-direct {v0}, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition$a;-><init>()V

    sput-object v0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->j:J

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

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->b:J

    return-wide v0
.end method

.method public getLastUptime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->j:J

    return-wide v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getTemperature()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->e:I

    return p0
.end method

.method public getWeatherDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getWeatherId()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->c:I

    return p0
.end method

.method public getWindDirectionId()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->f:I

    return p0
.end method

.method public getWindSpeed()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->g:I

    return p0
.end method

.method public isDayLight()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->h:Z

    return p0
.end method

.method public setEpochDateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->b:J

    return-void
.end method

.method public setIsDayLight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->h:Z

    return-void
.end method

.method public setLastUptime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->j:J

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->i:Ljava/lang/String;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->a:Ljava/lang/String;

    return-void
.end method

.method public setTemperature(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->e:I

    return-void
.end method

.method public setWeatherDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->d:Ljava/lang/String;

    return-void
.end method

.method public setWeatherId(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->c:I

    return-void
.end method

.method public setWindDirectionId(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->f:I

    return-void
.end method

.method public setWindSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->g:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->h:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/TwentyHoursCondition;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
