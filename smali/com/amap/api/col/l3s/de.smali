.class public final Lcom/amap/api/col/l3s/de;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;


# instance fields
.field a:F

.field b:I

.field c:I

.field private d:J

.field private e:Lcom/amap/api/col/l3s/dl;

.field private f:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

.field private g:Z

.field private h:F

.field private i:Ljava/lang/String;

.field private j:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/af;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

.field private o:Z

.field private p:F

.field private q:F

.field private r:[F

.field private s:[F

.field private t:[F


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/de;->g:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/col/l3s/de;->h:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/de;->k:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/de;->l:Ljava/util/List;

    iput v1, p0, Lcom/amap/api/col/l3s/de;->m:I

    new-instance v2, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-direct {v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/de;->o:Z

    iput v0, p0, Lcom/amap/api/col/l3s/de;->a:F

    iput v1, p0, Lcom/amap/api/col/l3s/de;->b:I

    iput v1, p0, Lcom/amap/api/col/l3s/de;->c:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/amap/api/col/l3s/de;->p:F

    iput v0, p0, Lcom/amap/api/col/l3s/de;->q:F

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/amap/api/col/l3s/de;->r:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/amap/api/col/l3s/de;->s:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/col/l3s/de;->t:[F

    iput-object p1, p0, Lcom/amap/api/col/l3s/de;->f:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/de;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/de;->i:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "ParticleLayerDelegateImp"

    const-string v0, "create"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private a(Lcom/amap/api/col/l3s/af;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/de;->l:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/af;->n()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/de;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getMaxParticles()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setMaxParticles(I)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isLoop()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setLoop(Z)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setDuration(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleLifeTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleLifeTime(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleEmissionModule()Lcom/amap/api/maps/model/particle/ParticleEmissionModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleEmissionModule(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleShapeModule()Lcom/amap/api/maps/model/particle/ParticleShapeModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleStartSpeed()Lcom/amap/api/maps/model/particle/VelocityGenerate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleStartColor()Lcom/amap/api/maps/model/particle/ColorGenerate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartColor(Lcom/amap/api/maps/model/particle/ColorGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleOverLifeModule()Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleOverLifeModule(Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getStartParticleW()I

    move-result v1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getstartParticleH()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setStartParticleSize(II)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->zIndex(F)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/de;->h:F

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isVisibile()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setVisible(Z)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    iget-object p1, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isVisibile()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/de;->g:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/de;->o:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final calMapFPoint()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final checkInBounds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final destroy()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->l:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/de;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/de;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3s/af;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/de;->f:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->addRecycleTextureIds(Lcom/amap/api/col/l3s/af;)V

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/de;->f:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/de;->f:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/af;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeTextureItem(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->j:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/de;->j:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_4
    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_5

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeDestroy(J)V

    :cond_5
    return-void
.end method

.method public final draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 23

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->e:Lcom/amap/api/col/l3s/dl;

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->f:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getGLShaderManager()Lcom/amap/api/col/l3s/dl;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3s/de;->e:Lcom/amap/api/col/l3s/dl;

    :cond_0
    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->e:Lcom/amap/api/col/l3s/dl;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-wide v2, v1, Lcom/amap/api/col/l3s/de;->d:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeCreate()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/col/l3s/de;->d:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->e:Lcom/amap/api/col/l3s/dl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/dl;->a()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeSetGLShaderManager(JJ)V

    :cond_2
    iget-wide v2, v1, Lcom/amap/api/col/l3s/de;->d:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_18

    monitor-enter p0

    :try_start_0
    iget-boolean v0, v1, Lcom/amap/api/col/l3s/de;->o:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    iget-wide v6, v1, Lcom/amap/api/col/l3s/de;->d:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getMaxParticles()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/de;->setMaxParticles(I)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getDuration()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/amap/api/col/l3s/de;->setDuration(J)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isLoop()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/de;->setLoop(Z)V

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/de;->setPreWram(Z)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleLifeTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/amap/api/col/l3s/de;->setParticleLifeTime(J)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleStartSpeed()Lcom/amap/api/maps/model/particle/VelocityGenerate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/de;->setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleEmissionModule()Lcom/amap/api/maps/model/particle/ParticleEmissionModule;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleEmissionModule()Lcom/amap/api/maps/model/particle/ParticleEmissionModule;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/de;->setParticleEmission(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)V

    :cond_3
    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleShapeModule()Lcom/amap/api/maps/model/particle/ParticleShapeModule;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleShapeModule()Lcom/amap/api/maps/model/particle/ParticleShapeModule;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/de;->setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)V

    :cond_4
    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleStartColor()Lcom/amap/api/maps/model/particle/ColorGenerate;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleStartColor()Lcom/amap/api/maps/model/particle/ColorGenerate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/de;->setStartColor(Lcom/amap/api/maps/model/particle/ColorGenerate;)V

    :cond_5
    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleOverLifeModule()Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleOverLifeModule()Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/de;->setParticleOverLifeModule(Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;)V

    :cond_6
    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getStartParticleW()I

    move-result v0

    iget-object v4, v1, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v4}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getstartParticleH()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lcom/amap/api/col/l3s/de;->setStartParticleSize(II)V

    :cond_7
    iput-boolean v3, v1, Lcom/amap/api/col/l3s/de;->o:Z

    :cond_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/de;->k:Z

    if-nez v0, :cond_11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v0, v4, :cond_9

    move v0, v2

    goto :goto_0

    :cond_9
    move v0, v3

    :goto_0
    iget-object v4, v1, Lcom/amap/api/col/l3s/de;->j:Lcom/amap/api/maps/model/BitmapDescriptor;

    iget-object v5, v1, Lcom/amap/api/col/l3s/de;->l:Ljava/util/List;

    if-eqz v5, :cond_c

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/col/l3s/af;

    if-eqz v6, :cond_a

    iget-object v7, v1, Lcom/amap/api/col/l3s/de;->f:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v7, :cond_a

    invoke-interface {v7, v6}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->addRecycleTextureIds(Lcom/amap/api/col/l3s/af;)V

    goto :goto_1

    :cond_b
    iget-object v5, v1, Lcom/amap/api/col/l3s/de;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    :cond_c
    const/4 v5, 0x0

    if-eqz v0, :cond_d

    iget-object v5, v1, Lcom/amap/api/col/l3s/de;->f:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v5, v4}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/col/l3s/af;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/amap/api/col/l3s/af;->l()I

    move-result v0

    invoke-direct {v1, v5}, Lcom/amap/api/col/l3s/de;->a(Lcom/amap/api/col/l3s/af;)V

    goto :goto_2

    :cond_d
    if-nez v5, :cond_e

    new-instance v5, Lcom/amap/api/col/l3s/af;

    invoke-direct {v5, v4, v3}, Lcom/amap/api/col/l3s/af;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    :cond_e
    invoke-virtual {v4}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_10

    new-array v6, v2, [I

    aput v3, v6, v3

    invoke-static {v2, v6, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Lcom/amap/api/col/l3s/af;->a(I)V

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->f:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addTextureItem(Lcom/amap/api/col/l3s/af;)V

    :cond_f
    invoke-direct {v1, v5}, Lcom/amap/api/col/l3s/de;->a(Lcom/amap/api/col/l3s/af;)V

    invoke-static {v6, v4, v2}, Lcom/amap/api/col/l3s/ex;->a(ILandroid/graphics/Bitmap;Z)I

    move v0, v6

    goto :goto_2

    :cond_10
    move v0, v3

    :goto_2
    iput-boolean v2, v1, Lcom/amap/api/col/l3s/de;->k:Z

    goto :goto_3

    :cond_11
    iget v0, v1, Lcom/amap/api/col/l3s/de;->m:I

    :goto_3
    iput v0, v1, Lcom/amap/api/col/l3s/de;->m:I

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-wide v4, v1, Lcom/amap/api/col/l3s/de;->d:J

    invoke-static {v4, v5, v0}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeSetTextureId(JI)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->f:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v0, :cond_13

    invoke-interface {v0, v3}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->setRunLowFrame(Z)V

    :cond_13
    iget v0, v1, Lcom/amap/api/col/l3s/de;->b:I

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapWidth()I

    move-result v2

    if-ne v0, v2, :cond_14

    iget v0, v1, Lcom/amap/api/col/l3s/de;->c:I

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapHeight()I

    move-result v2

    if-eq v0, v2, :cond_17

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapWidth()I

    move-result v0

    iput v0, v1, Lcom/amap/api/col/l3s/de;->b:I

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapHeight()I

    move-result v0

    iput v0, v1, Lcom/amap/api/col/l3s/de;->c:I

    iget v2, v1, Lcom/amap/api/col/l3s/de;->b:I

    if-le v2, v0, :cond_15

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_4

    :cond_15
    int-to-float v0, v0

    int-to-float v2, v2

    div-float v2, v0, v2

    :goto_4
    iput v2, v1, Lcom/amap/api/col/l3s/de;->a:F

    iget v0, v1, Lcom/amap/api/col/l3s/de;->b:I

    iget v4, v1, Lcom/amap/api/col/l3s/de;->c:I

    if-le v0, v4, :cond_16

    neg-float v0, v2

    iput v0, v1, Lcom/amap/api/col/l3s/de;->p:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lcom/amap/api/col/l3s/de;->q:F

    goto :goto_5

    :cond_16
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v1, Lcom/amap/api/col/l3s/de;->p:F

    iput v2, v1, Lcom/amap/api/col/l3s/de;->q:F

    :goto_5
    iget-object v4, v1, Lcom/amap/api/col/l3s/de;->r:[F

    const/4 v5, 0x0

    iget v6, v1, Lcom/amap/api/col/l3s/de;->p:F

    neg-float v7, v6

    iget v9, v1, Lcom/amap/api/col/l3s/de;->q:F

    neg-float v8, v9

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v11, 0x40e00000    # 7.0f

    invoke-static/range {v4 .. v11}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget-object v12, v1, Lcom/amap/api/col/l3s/de;->s:[F

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x40400000    # 3.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    invoke-static/range {v12 .. v22}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    :cond_17
    iget-object v4, v1, Lcom/amap/api/col/l3s/de;->t:[F

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/amap/api/col/l3s/de;->r:[F

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/amap/api/col/l3s/de;->s:[F

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->t:[F

    iget v2, v1, Lcom/amap/api/col/l3s/de;->p:F

    iget v4, v1, Lcom/amap/api/col/l3s/de;->q:F

    const/4 v5, 0x0

    invoke-static {v0, v3, v2, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->t:[F

    iget v2, v1, Lcom/amap/api/col/l3s/de;->p:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v6, v1, Lcom/amap/api/col/l3s/de;->b:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    iget v6, v1, Lcom/amap/api/col/l3s/de;->q:F

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, v1, Lcom/amap/api/col/l3s/de;->c:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v0, v3, v2, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-wide v6, v1, Lcom/amap/api/col/l3s/de;->d:J

    iget-object v0, v1, Lcom/amap/api/col/l3s/de;->t:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [F

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getProjectionMatrix()[F

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v2

    double-to-int v10, v2

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v2

    double-to-int v11, v2

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v12

    iget v0, v1, Lcom/amap/api/col/l3s/de;->b:I

    int-to-float v13, v0

    iget v0, v1, Lcom/amap/api/col/l3s/de;->c:I

    int-to-float v14, v0

    invoke-static/range {v6 .. v14}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeRender(J[F[FIIFFF)V

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_18
    :goto_6
    return-void
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getCurrentParticleNum()I
    .locals 4

    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->getCurrentParticleNum(J)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->f:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    const-string v1, "Particle"

    invoke-interface {v0, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/de;->i:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/de;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/de;->h:F

    return p0
.end method

.method public final hashCodeRemote()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isAboveMaskLayer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isDrawFinish()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/de;->g:Z

    return p0
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method public final remove()V
    .locals 0

    return-void
.end method

.method public final setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public final setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->j:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/de;->k:Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/de;->j:Lcom/amap/api/maps/model/BitmapDescriptor;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setDuration(J)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setDuration(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    :cond_0
    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setDuration(JJ)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_2

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/de;->o:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method public final setLoop(Z)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setLoop(Z)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    :cond_0
    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setLoop(JZ)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_2

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/de;->o:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method public final setMaxParticles(I)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setMaxParticles(I)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    :cond_0
    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setMaxParticles(JI)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_2

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/de;->o:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method public final setParticleEmission(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleEmissionModule(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    :cond_0
    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;->createNativeInstace()V

    :cond_1
    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setParticleEmission(JJ)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_3

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/de;->o:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public final setParticleLifeTime(J)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleLifeTime(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    :cond_0
    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setParticleLifeTime(JJ)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_2

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/de;->o:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method public final setParticleOverLifeModule(Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleOverLifeModule(Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    :cond_0
    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->createNativeInstace()V

    :cond_1
    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setParticleOverLifeModule(JJ)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_3

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/de;->o:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public final setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    :cond_0
    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->createNativeInstace()V

    :cond_1
    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setParticleShapeModule(JJ)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_3

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/de;->o:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public final setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    :cond_0
    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->createNativeInstace()V

    :cond_1
    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setParticleStartSpeed(JJ)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_3

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/de;->o:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public final setPreWram(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setPreWram(JZ)V

    :cond_0
    return-void
.end method

.method public final setStartColor(Lcom/amap/api/maps/model/particle/ColorGenerate;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartColor(Lcom/amap/api/maps/model/particle/ColorGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    :cond_0
    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->createNativeInstace()V

    :cond_1
    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setStartColor(JJ)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_3

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/de;->o:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public final setStartParticleSize(II)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/de;->n:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setStartParticleSize(II)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    :cond_0
    iget-wide v0, p0, Lcom/amap/api/col/l3s/de;->d:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    int-to-float p0, p1

    int-to-float p1, p2

    invoke-static {v0, v1, p0, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setStartParticleSize(JFF)V

    :cond_1
    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/de;->g:Z

    return-void
.end method

.method public final setZIndex(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/de;->h:F

    return-void
.end method

.method public final start()V
    .locals 0

    return-void
.end method

.method public final stop()V
    .locals 0

    return-void
.end method
