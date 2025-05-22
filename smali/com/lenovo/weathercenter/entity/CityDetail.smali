.class public Lcom/lenovo/weathercenter/entity/CityDetail;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lenovo/weathercenter/entity/CityDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private b:D

.field private c:D

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/weathercenter/entity/CityDetail$a;

    invoke-direct {v0}, Lcom/lenovo/weathercenter/entity/CityDetail$a;-><init>()V

    sput-object v0, Lcom/lenovo/weathercenter/entity/CityDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->a:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->b:D

    iput-wide v1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->c:D

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->B:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->a:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->b:D

    iput-wide v1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->c:D

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->B:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->b:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->c:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->n:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->o:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->p:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->r:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->s:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->t:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->u:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->v:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->w:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->x:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->y:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->z:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->A:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->B:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getCityNameEN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getCityNameTW()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getData1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->y:Ljava/lang/String;

    return-object p0
.end method

.method public getData2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->z:Ljava/lang/String;

    return-object p0
.end method

.method public getData3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->A:Ljava/lang/String;

    return-object p0
.end method

.method public getDistrictNameCN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getDistrictNameEN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getDistrictNameTW()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->b:D

    return-wide v0
.end method

.method public getLevel2CN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->t:Ljava/lang/String;

    return-object p0
.end method

.method public getLevel2EN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->s:Ljava/lang/String;

    return-object p0
.end method

.method public getLevel2TW()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->u:Ljava/lang/String;

    return-object p0
.end method

.method public getLevel3CN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->w:Ljava/lang/String;

    return-object p0
.end method

.method public getLevel3EN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->v:Ljava/lang/String;

    return-object p0
.end method

.method public getLevel3TW()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->x:Ljava/lang/String;

    return-object p0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->c:D

    return-wide v0
.end method

.method public getNationNameCN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->n:Ljava/lang/String;

    return-object p0
.end method

.method public getNationNameEN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->m:Ljava/lang/String;

    return-object p0
.end method

.method public getNationNameTW()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->o:Ljava/lang/String;

    return-object p0
.end method

.method public getParentCityCN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->q:Ljava/lang/String;

    return-object p0
.end method

.method public getParentCityEN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->p:Ljava/lang/String;

    return-object p0
.end method

.method public getParentCityTW()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->r:Ljava/lang/String;

    return-object p0
.end method

.method public getProvinceNameCN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->k:Ljava/lang/String;

    return-object p0
.end method

.method public getProvinceNameEN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getProvinceNameTW()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->l:Ljava/lang/String;

    return-object p0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->B:Ljava/lang/String;

    return-object p0
.end method

.method public setCityNameCN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->e:Ljava/lang/String;

    return-void
.end method

.method public setCityNameEN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->d:Ljava/lang/String;

    return-void
.end method

.method public setCityNameTW(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->f:Ljava/lang/String;

    return-void
.end method

.method public setData1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->y:Ljava/lang/String;

    return-void
.end method

.method public setData2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->z:Ljava/lang/String;

    return-void
.end method

.method public setData3(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->A:Ljava/lang/String;

    return-void
.end method

.method public setDistrictNameCN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->h:Ljava/lang/String;

    return-void
.end method

.method public setDistrictNameEN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->g:Ljava/lang/String;

    return-void
.end method

.method public setDistrictNameTW(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->i:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->b:D

    return-void
.end method

.method public setLevel2CN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->t:Ljava/lang/String;

    return-void
.end method

.method public setLevel2EN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->s:Ljava/lang/String;

    return-void
.end method

.method public setLevel2TW(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->u:Ljava/lang/String;

    return-void
.end method

.method public setLevel3CN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->w:Ljava/lang/String;

    return-void
.end method

.method public setLevel3EN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->v:Ljava/lang/String;

    return-void
.end method

.method public setLevel3TW(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->x:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->c:D

    return-void
.end method

.method public setNationNameCN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->n:Ljava/lang/String;

    return-void
.end method

.method public setNationNameEN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->m:Ljava/lang/String;

    return-void
.end method

.method public setNationNameTW(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->o:Ljava/lang/String;

    return-void
.end method

.method public setParentCityCN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->q:Ljava/lang/String;

    return-void
.end method

.method public setParentCityEN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->p:Ljava/lang/String;

    return-void
.end method

.method public setParentCityTW(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->r:Ljava/lang/String;

    return-void
.end method

.method public setProvinceNameCN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->k:Ljava/lang/String;

    return-void
.end method

.method public setProvinceNameEN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->j:Ljava/lang/String;

    return-void
.end method

.method public setProvinceNameTW(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->l:Ljava/lang/String;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->a:Ljava/lang/String;

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->B:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->x:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->y:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->z:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->A:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/CityDetail;->B:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
