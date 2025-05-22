.class public Lcom/lenovo/weathercenter/entity/Index;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lenovo/weathercenter/entity/Index;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:D

.field private B:D

.field private C:D

.field private D:D

.field private E:D

.field private F:D

.field private G:D

.field private H:D

.field private I:D

.field private J:D

.field private K:D

.field private L:D

.field private M:D

.field private N:D

.field private O:D

.field private P:D

.field private Q:D

.field private R:D

.field private S:D

.field private T:J

.field private a:Ljava/lang/String;

.field private b:D

.field private c:D

.field private d:D

.field private e:D

.field private f:D

.field private g:D

.field private h:D

.field private i:D

.field private j:D

.field private k:D

.field private l:D

.field private m:D

.field private n:D

.field private o:D

.field private p:D

.field private q:D

.field private r:D

.field private s:D

.field private t:D

.field private u:D

.field private v:D

.field private w:D

.field private x:D

.field private y:D

.field private z:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/weathercenter/entity/Index$a;

    invoke-direct {v0}, Lcom/lenovo/weathercenter/entity/Index$a;-><init>()V

    sput-object v0, Lcom/lenovo/weathercenter/entity/Index;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/lenovo/weathercenter/entity/Index;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->b:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->c:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->d:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->e:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->f:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->g:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->h:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->i:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->j:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->k:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->l:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->m:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->n:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->o:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->p:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->q:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->r:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->s:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->t:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->u:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->v:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->w:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->x:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->y:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->z:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->A:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->B:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->C:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->D:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->E:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->F:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->G:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->H:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->I:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->J:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->K:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->L:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->M:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->N:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->O:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->P:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->Q:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->R:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->S:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->T:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getArthritisPain()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->x:D

    return-wide v0
.end method

.method public getAsthma()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->y:D

    return-wide v0
.end method

.method public getBeachPool()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->m:D

    return-wide v0
.end method

.method public getBicycling()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->g:D

    return-wide v0
.end method

.method public getCOPD()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->S:D

    return-wide v0
.end method

.method public getCommonCold()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->A:D

    return-wide v0
.end method

.method public getComposting()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->M:D

    return-wide v0
.end method

.method public getConstruction()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->q:D

    return-wide v0
.end method

.method public getDogWalkingComfort()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->R:D

    return-wide v0
.end method

.method public getDriving()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->O:D

    return-wide v0
.end method

.method public getDustDander()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->u:D

    return-wide v0
.end method

.method public getFieldReadiness()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->G:D

    return-wide v0
.end method

.method public getFishing()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->p:D

    return-wide v0
.end method

.method public getFlightDelays()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->b:D

    return-wide v0
.end method

.method public getFlu()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->B:D

    return-wide v0
.end method

.method public getFuelEconomy()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->L:D

    return-wide v0
.end method

.method public getGolfWeather()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->h:D

    return-wide v0
.end method

.method public getGrassGrowing()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->H:D

    return-wide v0
.end method

.method public getHairFrizz()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->Q:D

    return-wide v0
.end method

.method public getHealthyHeartFitness()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->s:D

    return-wide v0
.end method

.method public getHiking()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->f:D

    return-wide v0
.end method

.method public getHomeEnergyEfficiency()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->K:D

    return-wide v0
.end method

.method public getHunting()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->w:D

    return-wide v0
.end method

.method public getIndoorActivity()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->c:D

    return-wide v0
.end method

.method public getJogging()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->e:D

    return-wide v0
.end method

.method public getKiteFlying()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->l:D

    return-wide v0
.end method

.method public getLastUptime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->T:J

    return-wide v0
.end method

.method public getLawnMowing()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->D:D

    return-wide v0
.end method

.method public getMigraineHeadache()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->C:D

    return-wide v0
.end method

.method public getMorningSchoolBus()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->J:D

    return-wide v0
.end method

.method public getMosquitoActivity()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->t:D

    return-wide v0
.end method

.method public getOutdoorActivity()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->E:D

    return-wide v0
.end method

.method public getOutdoorBarbecue()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->z:D

    return-wide v0
.end method

.method public getOutdoorConcert()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->k:D

    return-wide v0
.end method

.method public getRunning()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->d:D

    return-wide v0
.end method

.method public getSailing()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->n:D

    return-wide v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenter/entity/Index;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getShopping()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->N:D

    return-wide v0
.end method

.method public getSinusHeadache()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->F:D

    return-wide v0
.end method

.method public getSkateboarding()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->j:D

    return-wide v0
.end method

.method public getSkiWeather()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->r:D

    return-wide v0
.end method

.method public getSnowDays()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->v:D

    return-wide v0
.end method

.method public getSoilMoisture()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->I:D

    return-wide v0
.end method

.method public getStargazing()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->o:D

    return-wide v0
.end method

.method public getTennis()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->i:D

    return-wide v0
.end method

.method public getThirst()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->P:D

    return-wide v0
.end method

.method public setArthritisPain(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->x:D

    return-void
.end method

.method public setAsthma(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->y:D

    return-void
.end method

.method public setBeachPool(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->m:D

    return-void
.end method

.method public setBicycling(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->g:D

    return-void
.end method

.method public setCOPD(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->S:D

    return-void
.end method

.method public setCommonCold(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->A:D

    return-void
.end method

.method public setComposting(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->M:D

    return-void
.end method

.method public setConstruction(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->q:D

    return-void
.end method

.method public setDogWalkingComfort(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->R:D

    return-void
.end method

.method public setDriving(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->O:D

    return-void
.end method

.method public setDustDander(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->u:D

    return-void
.end method

.method public setFieldReadiness(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->G:D

    return-void
.end method

.method public setFishing(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->p:D

    return-void
.end method

.method public setFlightDelays(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->b:D

    return-void
.end method

.method public setFlu(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->B:D

    return-void
.end method

.method public setFuelEconomy(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->L:D

    return-void
.end method

.method public setGolfWeather(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->h:D

    return-void
.end method

.method public setGrassGrowing(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->H:D

    return-void
.end method

.method public setHairFrizz(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->Q:D

    return-void
.end method

.method public setHealthyHeartFitness(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->s:D

    return-void
.end method

.method public setHiking(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->f:D

    return-void
.end method

.method public setHomeEnergyEfficiency(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->K:D

    return-void
.end method

.method public setHunting(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->w:D

    return-void
.end method

.method public setIndoorActivity(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->c:D

    return-void
.end method

.method public setJogging(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->e:D

    return-void
.end method

.method public setKiteFlying(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->l:D

    return-void
.end method

.method public setLastUptime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->T:J

    return-void
.end method

.method public setLawnMowing(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->D:D

    return-void
.end method

.method public setMigraineHeadache(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->C:D

    return-void
.end method

.method public setMorningSchoolBus(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->J:D

    return-void
.end method

.method public setMosquitoActivity(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->t:D

    return-void
.end method

.method public setOutdoorActivity(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->E:D

    return-void
.end method

.method public setOutdoorBarbecue(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->z:D

    return-void
.end method

.method public setOutdoorConcert(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->k:D

    return-void
.end method

.method public setRunning(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->d:D

    return-void
.end method

.method public setSailing(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->n:D

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenter/entity/Index;->a:Ljava/lang/String;

    return-void
.end method

.method public setShopping(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->N:D

    return-void
.end method

.method public setSinusHeadache(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->F:D

    return-void
.end method

.method public setSkateboarding(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->j:D

    return-void
.end method

.method public setSkiWeather(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->r:D

    return-void
.end method

.method public setSnowDays(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->v:D

    return-void
.end method

.method public setSoilMoisture(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->I:D

    return-void
.end method

.method public setStargazing(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->o:D

    return-void
.end method

.method public setTennis(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->i:D

    return-void
.end method

.method public setThirst(D)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/weathercenter/entity/Index;->P:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/lenovo/weathercenter/entity/Index;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->e:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->f:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->g:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->h:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->i:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->j:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->k:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->l:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->m:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->n:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->o:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->p:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->q:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->r:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->s:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->t:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->u:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->v:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->w:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->x:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->y:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->z:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->A:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->B:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->C:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->D:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->E:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->F:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->G:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->H:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->I:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->J:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->K:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->L:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->M:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->N:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->O:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->P:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->Q:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->R:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->S:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/lenovo/weathercenter/entity/Index;->T:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
