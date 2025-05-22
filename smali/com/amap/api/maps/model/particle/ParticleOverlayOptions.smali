.class public Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;
.super Lcom/amap/api/maps/model/BaseOptions;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cClass;
    value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->INCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private bitmapSymbol:Ljava/lang/String;

.field private duration:J

.field private isParticleEmissionModuleUpdate:Z

.field private isParticleOverLifeModuleUpdate:Z

.field private isParticleShapeModuleUpdate:Z

.field private isStartColorUpdate:Z

.field private isStartSpeedUpdate:Z

.field private loop:Z

.field private maxParticles:I

.field private particleEmissionModule:Lcom/amap/api/maps/model/particle/ParticleEmissionModule;

.field private particleLifeTime:J

.field private particleOverLifeModule:Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;

.field private particleShapeModule:Lcom/amap/api/maps/model/particle/ParticleShapeModule;

.field private particleShapeModuleObject:Ljava/lang/Object;

.field private startColor:Lcom/amap/api/maps/model/particle/ColorGenerate;

.field private startColorObject:Ljava/lang/Object;

.field private startParticleH:I

.field private startParticleW:I

.field private startSpeed:Lcom/amap/api/maps/model/particle/VelocityGenerate;

.field private startSpeedObject:Ljava/lang/Object;

.field private visibile:Z

.field private zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions$1;

    invoke-direct {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions$1;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOptions;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->zIndex:F

    const/16 v0, 0x64

    iput v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->maxParticles:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->loop:Z

    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->duration:J

    iput-wide v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->particleLifeTime:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startSpeed:Lcom/amap/api/maps/model/particle/VelocityGenerate;

    const/16 v1, 0x20

    iput v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startParticleW:I

    iput v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startParticleH:I

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->visibile:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isParticleEmissionModuleUpdate:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isParticleShapeModuleUpdate:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isStartSpeedUpdate:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isStartColorUpdate:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isParticleOverLifeModuleUpdate:Z

    const-string v0, "ParticleOptions"

    iput-object v0, p0, Lcom/amap/api/maps/model/BaseOptions;->type:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOptions;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->zIndex:F

    const/16 v0, 0x64

    iput v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->maxParticles:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->loop:Z

    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->duration:J

    iput-wide v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->particleLifeTime:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startSpeed:Lcom/amap/api/maps/model/particle/VelocityGenerate;

    const/16 v1, 0x20

    iput v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startParticleW:I

    iput v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startParticleH:I

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->visibile:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isParticleEmissionModuleUpdate:Z

    iput-boolean v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isParticleShapeModuleUpdate:Z

    iput-boolean v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isStartSpeedUpdate:Z

    iput-boolean v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isStartColorUpdate:Z

    iput-boolean v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isParticleOverLifeModuleUpdate:Z

    const-class v2, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->bitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->bitmapSymbol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->zIndex:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->maxParticles:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->loop:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->duration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->particleLifeTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startParticleW:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startParticleH:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->visibile:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->duration:J

    return-wide v0
.end method

.method public getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->bitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public getMaxParticles()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->maxParticles:I

    return p0
.end method

.method public getParticleEmissionModule()Lcom/amap/api/maps/model/particle/ParticleEmissionModule;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->particleEmissionModule:Lcom/amap/api/maps/model/particle/ParticleEmissionModule;

    return-object p0
.end method

.method public getParticleLifeTime()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->particleLifeTime:J

    return-wide v0
.end method

.method public getParticleOverLifeModule()Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->particleOverLifeModule:Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;

    return-object p0
.end method

.method public getParticleShapeModule()Lcom/amap/api/maps/model/particle/ParticleShapeModule;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->particleShapeModule:Lcom/amap/api/maps/model/particle/ParticleShapeModule;

    return-object p0
.end method

.method public getParticleStartColor()Lcom/amap/api/maps/model/particle/ColorGenerate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startColor:Lcom/amap/api/maps/model/particle/ColorGenerate;

    return-object p0
.end method

.method public getParticleStartSpeed()Lcom/amap/api/maps/model/particle/VelocityGenerate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startSpeed:Lcom/amap/api/maps/model/particle/VelocityGenerate;

    return-object p0
.end method

.method public getStartParticleW()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startParticleW:I

    return p0
.end method

.method public getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->zIndex:F

    return p0
.end method

.method public getstartParticleH()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startParticleH:I

    return p0
.end method

.method public icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->bitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->bitmapSymbol:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public isLoop()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->loop:Z

    return p0
.end method

.method public isVisibile()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->visibile:Z

    return p0
.end method

.method public setDuration(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->duration:J

    return-object p0
.end method

.method public setLoop(Z)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->loop:Z

    return-object p0
.end method

.method public setMaxParticles(I)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->maxParticles:I

    return-object p0
.end method

.method public setParticleEmissionModule(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->particleEmissionModule:Lcom/amap/api/maps/model/particle/ParticleEmissionModule;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isParticleEmissionModuleUpdate:Z

    return-object p0
.end method

.method public setParticleLifeTime(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->particleLifeTime:J

    return-object p0
.end method

.method public setParticleOverLifeModule(Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->particleOverLifeModule:Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isParticleOverLifeModuleUpdate:Z

    return-object p0
.end method

.method public setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->particleShapeModule:Lcom/amap/api/maps/model/particle/ParticleShapeModule;

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->particleShapeModuleObject:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isParticleShapeModuleUpdate:Z

    return-object p0
.end method

.method public setParticleStartColor(Lcom/amap/api/maps/model/particle/ColorGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startColor:Lcom/amap/api/maps/model/particle/ColorGenerate;

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startColorObject:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isStartColorUpdate:Z

    return-object p0
.end method

.method public setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startSpeed:Lcom/amap/api/maps/model/particle/VelocityGenerate;

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startSpeedObject:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isStartSpeedUpdate:Z

    return-object p0
.end method

.method public setStartParticleSize(II)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startParticleW:I

    iput p2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startParticleH:I

    return-object p0
.end method

.method public setVisible(Z)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->visibile:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->bitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->zIndex:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->maxParticles:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->loop:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->particleLifeTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startParticleW:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->startParticleH:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->visibile:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

.method public zIndex(F)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->zIndex:F

    return-object p0
.end method
