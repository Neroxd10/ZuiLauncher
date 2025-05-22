.class public Lcom/lenovo/weathercenter/entity/Air;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lenovo/weathercenter/entity/Air;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:J

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/weathercenter/entity/Air$a;

    invoke-direct {v0}, Lcom/lenovo/weathercenter/entity/Air$a;-><init>()V

    sput-object v0, Lcom/lenovo/weathercenter/entity/Air;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/Air;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Air;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Air;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Air;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Air;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Air;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Air;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Air;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Air;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/weathercenter/entity/Air;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Air;->k:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Air;->l:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCarbonMonoxide()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Air;->e:I

    return p0
.end method

.method public getEpochDateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Air;->k:J

    return-wide v0
.end method

.method public getLastUptime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Air;->l:J

    return-wide v0
.end method

.method public getLead()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Air;->i:I

    return p0
.end method

.method public getNitrogenDioxide()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Air;->g:I

    return p0
.end method

.method public getNitrogenMonoxide()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Air;->f:I

    return p0
.end method

.method public getOzone()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Air;->d:I

    return p0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/Air;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getSulfurMonoxide()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Air;->h:I

    return p0
.end method

.method public getValueAQI()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Air;->j:I

    return p0
.end method

.method public getValuePM10()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Air;->c:I

    return p0
.end method

.method public getValuePM25()I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenter/entity/Air;->b:I

    return p0
.end method

.method public setCarbonMonoxide(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Air;->e:I

    return-void
.end method

.method public setEpochDateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Air;->k:J

    return-void
.end method

.method public setLastUptime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Air;->l:J

    return-void
.end method

.method public setLead(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Air;->i:I

    return-void
.end method

.method public setNitrogenDioxide(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Air;->g:I

    return-void
.end method

.method public setNitrogenMonoxide(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Air;->f:I

    return-void
.end method

.method public setOzone(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Air;->d:I

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/Air;->a:Ljava/lang/String;

    return-void
.end method

.method public setSulfurMonoxide(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Air;->h:I

    return-void
.end method

.method public setValueAQI(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Air;->j:I

    return-void
.end method

.method public setValuePM10(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Air;->c:I

    return-void
.end method

.method public setValuePM25(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenter/entity/Air;->b:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/Air;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Air;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Air;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Air;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Air;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Air;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Air;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Air;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Air;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/lenovo/weathercenter/entity/Air;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Air;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Air;->l:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
