.class public Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;
.super Lcom/autonavi/amap/mapcore/AbstractNativeInstance;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


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
            "Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_COLOR:I = 0x3
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private static final TYPE_ROTATE:I = 0x1
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private static final TYPE_SCALE:I = 0x2
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private static final TYPE_VEL:I
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field


# instance fields
.field private colorGenerate:Lcom/amap/api/maps/model/particle/ColorGenerate;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private colorGenerateObject:Ljava/lang/Object;

.field private isNeedReloadColorGenerate:Z
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private isNeedReloadRotationOverLife:Z
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private isNeedReloadSizeOverLife:Z
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private isNeedReloadVelocityGenerate:Z
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private overLife:Lcom/amap/api/maps/model/particle/VelocityGenerate;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private rotateOverLife:Lcom/amap/api/maps/model/particle/RotationOverLife;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private rotateOverLifeObject:Ljava/lang/Object;

.field private sizeOverLife:Lcom/amap/api/maps/model/particle/SizeOverLife;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private sizeOverLifeObject:Ljava/lang/Object;

.field private velocityOverLife:Lcom/amap/api/maps/model/particle/VelocityGenerate;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private velocityOverLifeObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule$1;

    invoke-direct {v0}, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule$1;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->overLife:Lcom/amap/api/maps/model/particle/VelocityGenerate;

    iput-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->velocityOverLife:Lcom/amap/api/maps/model/particle/VelocityGenerate;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadVelocityGenerate:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadRotationOverLife:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadSizeOverLife:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadColorGenerate:Z

    invoke-virtual {p0}, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->createNativeInstace()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->overLife:Lcom/amap/api/maps/model/particle/VelocityGenerate;

    iput-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->velocityOverLife:Lcom/amap/api/maps/model/particle/VelocityGenerate;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadVelocityGenerate:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadRotationOverLife:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadSizeOverLife:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadColorGenerate:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    return-void
.end method


# virtual methods
.method public createNativeInstace()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeCreateParticleOverLifeModule()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    iget-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadVelocityGenerate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->overLife:Lcom/amap/api/maps/model/particle/VelocityGenerate;

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->setVelocityOverLife(Lcom/amap/api/maps/model/particle/VelocityGenerate;)V

    iput-boolean v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadVelocityGenerate:Z

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadRotationOverLife:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->rotateOverLife:Lcom/amap/api/maps/model/particle/RotationOverLife;

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->setRotateOverLife(Lcom/amap/api/maps/model/particle/RotationOverLife;)V

    iput-boolean v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadRotationOverLife:Z

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadSizeOverLife:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->sizeOverLife:Lcom/amap/api/maps/model/particle/SizeOverLife;

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->setSizeOverLife(Lcom/amap/api/maps/model/particle/SizeOverLife;)V

    iput-boolean v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadSizeOverLife:Z

    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadColorGenerate:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->colorGenerate:Lcom/amap/api/maps/model/particle/ColorGenerate;

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->setColorGenerate(Lcom/amap/api/maps/model/particle/ColorGenerate;)V

    iput-boolean v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadColorGenerate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method public describeContents()I
    .locals 0
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method protected finalize()V
    .locals 5

    invoke-super {p0}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->finalize()V

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeReleaseParticleOverLifeModule(J)V

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    :cond_0
    return-void
.end method

.method public setColorGenerate(Lcom/amap/api/maps/model/particle/ColorGenerate;)V
    .locals 5

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->colorGenerate:Lcom/amap/api/maps/model/particle/ColorGenerate;

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->colorGenerateObject:Ljava/lang/Object;

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->colorGenerate:Lcom/amap/api/maps/model/particle/ColorGenerate;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->createNativeInstace()V

    :cond_0
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    iget-object p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->colorGenerate:Lcom/amap/api/maps/model/particle/ColorGenerate;

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1, v4}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeSetOverLifeItem(JJI)V

    return-void

    :cond_1
    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeSetOverLifeItem(JJI)V

    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadColorGenerate:Z

    return-void
.end method

.method public setRotateOverLife(Lcom/amap/api/maps/model/particle/RotationOverLife;)V
    .locals 6

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->rotateOverLife:Lcom/amap/api/maps/model/particle/RotationOverLife;

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->rotateOverLifeObject:Ljava/lang/Object;

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->rotateOverLife:Lcom/amap/api/maps/model/particle/RotationOverLife;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->createNativeInstace()V

    :cond_0
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    iget-object p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->rotateOverLife:Lcom/amap/api/maps/model/particle/RotationOverLife;

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1, v5}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeSetOverLifeItem(JJI)V

    return-void

    :cond_1
    invoke-static {v0, v1, v2, v3, v5}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeSetOverLifeItem(JJI)V

    return-void

    :cond_2
    iput-boolean v5, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadRotationOverLife:Z

    return-void
.end method

.method public setSizeOverLife(Lcom/amap/api/maps/model/particle/SizeOverLife;)V
    .locals 5

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->sizeOverLife:Lcom/amap/api/maps/model/particle/SizeOverLife;

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->sizeOverLifeObject:Ljava/lang/Object;

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->sizeOverLife:Lcom/amap/api/maps/model/particle/SizeOverLife;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->createNativeInstace()V

    :cond_0
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    iget-object p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->sizeOverLife:Lcom/amap/api/maps/model/particle/SizeOverLife;

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1, v4}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeSetOverLifeItem(JJI)V

    return-void

    :cond_1
    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeSetOverLifeItem(JJI)V

    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadSizeOverLife:Z

    return-void
.end method

.method public setVelocityOverLife(Lcom/amap/api/maps/model/particle/VelocityGenerate;)V
    .locals 5

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->overLife:Lcom/amap/api/maps/model/particle/VelocityGenerate;

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->velocityOverLife:Lcom/amap/api/maps/model/particle/VelocityGenerate;

    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->velocityOverLifeObject:Ljava/lang/Object;

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->overLife:Lcom/amap/api/maps/model/particle/VelocityGenerate;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->createNativeInstace()V

    :cond_0
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    iget-object p0, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->overLife:Lcom/amap/api/maps/model/particle/VelocityGenerate;

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1, v4}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeSetOverLifeItem(JJI)V

    return-void

    :cond_1
    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeSetOverLifeItem(JJI)V

    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->isNeedReloadVelocityGenerate:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
