.class public final Lcom/amap/api/col/l3s/oj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/oj$b;,
        Lcom/amap/api/col/l3s/oj$a;
    }
.end annotation


# static fields
.field private static r:I = 0x0

.field private static v:Z = false


# instance fields
.field a:I

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3s/oi;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3s/ni;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/telephony/TelephonyManager;

.field e:J

.field f:Landroid/telephony/CellLocation;

.field g:Z

.field h:Landroid/telephony/PhoneStateListener;

.field i:Ljava/lang/String;

.field j:Z

.field k:Ljava/lang/StringBuilder;

.field private l:Landroid/content/Context;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3s/oi;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:Lcom/amap/api/col/l3s/oh;

.field private q:Ljava/lang/Object;

.field private s:J

.field private t:Landroid/telephony/TelephonyManager$CellInfoCallback;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field

.field private u:Z

.field private w:Lcom/amap/api/col/l3s/ob;

.field private x:Z

.field private y:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/oj;->a:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/oj;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3s/oj;->m:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/oj;->n:Ljava/util/ArrayList;

    const/16 v2, -0x71

    iput v2, p0, Lcom/amap/api/col/l3s/oj;->o:I

    iput-object v1, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/amap/api/col/l3s/oj;->p:Lcom/amap/api/col/l3s/oh;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/amap/api/col/l3s/oj;->e:J

    iput-wide v2, p0, Lcom/amap/api/col/l3s/oj;->s:J

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/oj;->g:Z

    iput-object v1, p0, Lcom/amap/api/col/l3s/oj;->h:Landroid/telephony/PhoneStateListener;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/oj;->u:Z

    iput-object v1, p0, Lcom/amap/api/col/l3s/oj;->i:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/oj;->j:Z

    iput-object v1, p0, Lcom/amap/api/col/l3s/oj;->k:Ljava/lang/StringBuilder;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/oj;->x:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/oj;->y:Ljava/lang/Object;

    iput-object p1, p0, Lcom/amap/api/col/l3s/oj;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    const-string v2, "phone"

    invoke-static {p1, v2}, Lcom/amap/api/col/l3s/pc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/oj;->c(Landroid/telephony/CellLocation;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/oj;->a:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v1, p0, Lcom/amap/api/col/l3s/oj;->i:Ljava/lang/String;

    const-string v1, "CgiManager"

    invoke-static {p1, v1, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/amap/api/col/l3s/oj;->a:I

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/oj;->i:Ljava/lang/String;

    :goto_0
    :try_start_1
    sget p1, Lcom/amap/api/col/l3s/oj;->r:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const-string v1, "phone2"

    if-eq p1, v0, :cond_1

    :try_start_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/oj;->l:Landroid/content/Context;

    :goto_1
    invoke-static {p1, v1}, Lcom/amap/api/col/l3s/pc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/amap/api/col/l3s/oj;->q:Ljava/lang/Object;

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/oj;->l:Landroid/content/Context;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/oj;->l:Landroid/content/Context;

    const-string v0, "phone_msim"

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/pc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    :goto_3
    invoke-static {}, Lcom/amap/api/col/l3s/ka;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/amap/api/col/l3s/oj$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/oj$1;-><init>(Lcom/amap/api/col/l3s/oj;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_3
    new-instance p1, Lcom/amap/api/col/l3s/oh;

    invoke-direct {p1}, Lcom/amap/api/col/l3s/oh;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/oj;->p:Lcom/amap/api/col/l3s/oh;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/oj;J)J
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/col/l3s/oj;->s:J

    return-wide p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/oj;Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/oj;->a(Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object p0

    return-object p0
.end method

.method private varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3s/oz;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/telephony/CellLocation;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/oj;->b(Landroid/telephony/CellLocation;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    return-object p1

    :catchall_0
    :cond_2
    return-object v0
.end method

.method private declared-synchronized a(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v3, :cond_1

    :try_start_1
    invoke-direct {p0, v3}, Lcom/amap/api/col/l3s/oj;->a(Landroid/telephony/CellInfo;)Lcom/amap/api/col/l3s/oi;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    :catchall_0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    :try_start_2
    iget p1, v2, Lcom/amap/api/col/l3s/oi;->k:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    new-instance p1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {p1}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget v4, v2, Lcom/amap/api/col/l3s/oi;->i:I

    iget v5, v2, Lcom/amap/api/col/l3s/oi;->e:I

    iget v6, v2, Lcom/amap/api/col/l3s/oi;->f:I

    iget v7, v2, Lcom/amap/api/col/l3s/oi;->g:I

    iget v8, v2, Lcom/amap/api/col/l3s/oi;->h:I

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :cond_3
    :try_start_4
    new-instance p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {p1}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget v1, v2, Lcom/amap/api/col/l3s/oi;->c:I

    iget v2, v2, Lcom/amap/api/col/l3s/oi;->d:I

    invoke-virtual {p1, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_1

    :catchall_2
    move-object p1, v0

    :catchall_3
    :goto_1
    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_2

    :cond_4
    move-object p1, v0

    :goto_2
    monitor-exit p0

    if-nez v0, :cond_5

    return-object p1

    :cond_5
    return-object v0

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_6
    :goto_3
    monitor-exit p0

    return-object v0
.end method

.method private static a(IZIIIII)Lcom/amap/api/col/l3s/oi;
    .locals 1

    new-instance v0, Lcom/amap/api/col/l3s/oi;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/oi;-><init>(IZ)V

    iput p2, v0, Lcom/amap/api/col/l3s/oi;->a:I

    iput p3, v0, Lcom/amap/api/col/l3s/oi;->b:I

    iput p4, v0, Lcom/amap/api/col/l3s/oi;->c:I

    iput p5, v0, Lcom/amap/api/col/l3s/oi;->d:I

    iput p6, v0, Lcom/amap/api/col/l3s/oi;->j:I

    return-object v0
.end method

.method private a(Landroid/telephony/CellInfo;)Lcom/amap/api/col/l3s/oi;
    .locals 2

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v0

    instance-of v1, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/telephony/CellInfoCdma;

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3s/oj;->a(Landroid/telephony/CellInfoCdma;Z)Lcom/amap/api/col/l3s/oi;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Landroid/telephony/CellInfoGsm;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/telephony/CellInfoGsm;

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/oj;->a(Landroid/telephony/CellInfoGsm;Z)Lcom/amap/api/col/l3s/oi;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of p0, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz p0, :cond_2

    check-cast p1, Landroid/telephony/CellInfoWcdma;

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/oj;->a(Landroid/telephony/CellInfoWcdma;Z)Lcom/amap/api/col/l3s/oi;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of p0, p1, Landroid/telephony/CellInfoLte;

    if-eqz p0, :cond_3

    check-cast p1, Landroid/telephony/CellInfoLte;

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/oj;->a(Landroid/telephony/CellInfoLte;Z)Lcom/amap/api/col/l3s/oi;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private a(Landroid/telephony/CellInfoCdma;Z)Lcom/amap/api/col/l3s/oi;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    iget-object p0, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Lcom/amap/api/col/l3s/pc;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_0
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    :try_start_1
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move v2, v1

    :catchall_1
    :goto_0
    move v6, v1

    move v5, v2

    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v9

    move v4, p2

    invoke-static/range {v3 .. v9}, Lcom/amap/api/col/l3s/oj;->a(IZIIIII)Lcom/amap/api/col/l3s/oi;

    move-result-object p0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/oi;->g:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/oi;->h:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/oi;->i:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/oi;->e:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/oi;->f:I

    return-object p0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static a(Landroid/telephony/CellInfoGsm;Z)Lcom/amap/api/col/l3s/oi;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v2

    invoke-static {v2}, Lcom/amap/api/col/l3s/oj;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    invoke-static {v2}, Lcom/amap/api/col/l3s/oj;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v5

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v6

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v7

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v8

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v9

    move v4, p1

    invoke-static/range {v3 .. v9}, Lcom/amap/api/col/l3s/oj;->a(IZIIIII)Lcom/amap/api/col/l3s/oi;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static a(Landroid/telephony/CellInfoLte;Z)Lcom/amap/api/col/l3s/oi;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v2

    invoke-static {v2}, Lcom/amap/api/col/l3s/oj;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    invoke-static {v2}, Lcom/amap/api/col/l3s/oj;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v5

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v6

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v7

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v8

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v9

    move v4, p1

    invoke-static/range {v3 .. v9}, Lcom/amap/api/col/l3s/oj;->a(IZIIIII)Lcom/amap/api/col/l3s/oi;

    move-result-object p0

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/oi;->o:I

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static a(Landroid/telephony/CellInfoWcdma;Z)Lcom/amap/api/col/l3s/oi;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v2

    invoke-static {v2}, Lcom/amap/api/col/l3s/oj;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    invoke-static {v2}, Lcom/amap/api/col/l3s/oj;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x4

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v5

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v6

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v7

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v8

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v9

    move v4, p1

    invoke-static/range {v3 .. v9}, Lcom/amap/api/col/l3s/oj;->a(IZIIIII)Lcom/amap/api/col/l3s/oi;

    move-result-object p0

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/oi;->o:I

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lcom/amap/api/col/l3s/oi;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/oi;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3s/oi;-><init>(IZ)V

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/amap/api/col/l3s/oi;->a:I

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/amap/api/col/l3s/oi;->b:I

    const-string p1, "getLac"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3s/oz;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    iput p1, v0, Lcom/amap/api/col/l3s/oi;->c:I

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result p1

    iput p1, v0, Lcom/amap/api/col/l3s/oi;->d:I

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/pc;->a(I)I

    move-result p0

    iput p0, v0, Lcom/amap/api/col/l3s/oi;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    const-string p1, "CgiManager"

    const-string v0, "getGsm"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/oj;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/oj;->y:Ljava/lang/Object;

    return-object p0
.end method

.method private declared-synchronized a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_7

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/oj;->b(Landroid/telephony/CellLocation;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/amap/api/col/l3s/oj;->a:I

    iget-object v1, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v2, Lcom/amap/api/col/l3s/oi;

    invoke-direct {v2, v0, v0}, Lcom/amap/api/col/l3s/oi;-><init>(IZ)V

    const/4 v3, 0x0

    aget-object v4, p2, v3

    invoke-static {v4}, Lcom/amap/api/col/l3s/pc;->g(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/amap/api/col/l3s/oi;->a:I

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/pc;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/amap/api/col/l3s/oi;->b:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, v2, Lcom/amap/api/col/l3s/oi;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    iput p1, v2, Lcom/amap/api/col/l3s/oi;->d:I

    iget p1, p0, Lcom/amap/api/col/l3s/oj;->o:I

    iput p1, v2, Lcom/amap/api/col/l3s/oi;->j:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1c

    if-gt p1, p3, :cond_6

    iget-object p1, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    const-string p3, "getNeighboringCellInfo"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, p3, v0}, Lcom/amap/api/col/l3s/oz;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/NeighboringCellInfo;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v0

    invoke-virtual {p3}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/oj;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p3, p2}, Lcom/amap/api/col/l3s/oj;->a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lcom/amap/api/col/l3s/oi;

    move-result-object p3

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_7
    :goto_2
    monitor-exit p0

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/oj;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/oj;->b(I)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/amap/api/col/l3s/pc;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/oj;->f:Landroid/telephony/CellLocation;

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/oj;->c(Landroid/telephony/CellLocation;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/oj;->f:Landroid/telephony/CellLocation;

    if-eqz v1, :cond_9

    iget-object v4, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v4, p0, Lcom/amap/api/col/l3s/oj;->q:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "mGsmCellLoc"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_2

    invoke-direct {p0, v4}, Lcom/amap/api/col/l3s/oj;->b(Landroid/telephony/CellLocation;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v4, v0, p1}, Lcom/amap/api/col/l3s/oj;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move p1, v2

    goto :goto_0

    :catchall_0
    :cond_2
    move p1, v5

    :goto_0
    if-eqz p1, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/oj;->b(Landroid/telephony/CellLocation;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    iput v3, p0, Lcom/amap/api/col/l3s/oj;->a:I

    new-instance p1, Lcom/amap/api/col/l3s/oi;

    invoke-direct {p1, v3, v2}, Lcom/amap/api/col/l3s/oi;-><init>(IZ)V

    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/amap/api/col/l3s/oi;->a:I

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/amap/api/col/l3s/oi;->b:I

    const-string v0, "getSystemId"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/amap/api/col/l3s/oz;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lcom/amap/api/col/l3s/oi;->g:I

    const-string v0, "getNetworkId"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/amap/api/col/l3s/oz;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lcom/amap/api/col/l3s/oi;->h:I

    const-string v0, "getBaseStationId"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/amap/api/col/l3s/oz;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lcom/amap/api/col/l3s/oi;->i:I

    iget v0, p0, Lcom/amap/api/col/l3s/oj;->o:I

    iput v0, p1, Lcom/amap/api/col/l3s/oi;->j:I

    const-string v0, "getBaseStationLatitude"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/amap/api/col/l3s/oz;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lcom/amap/api/col/l3s/oi;->e:I

    const-string v0, "getBaseStationLongitude"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/amap/api/col/l3s/oz;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lcom/amap/api/col/l3s/oi;->f:I

    iget v1, p1, Lcom/amap/api/col/l3s/oi;->e:I

    if-ne v1, v0, :cond_5

    iget v0, p1, Lcom/amap/api/col/l3s/oi;->e:I

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    move v2, v5

    :goto_1
    iget v0, p1, Lcom/amap/api/col/l3s/oi;->e:I

    if-ltz v0, :cond_6

    iget v0, p1, Lcom/amap/api/col/l3s/oi;->f:I

    if-ltz v0, :cond_6

    iget v0, p1, Lcom/amap/api/col/l3s/oi;->e:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_6

    iget v0, p1, Lcom/amap/api/col/l3s/oi;->f:I

    if-eq v0, v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    iput v5, p1, Lcom/amap/api/col/l3s/oi;->e:I

    iput v5, p1, Lcom/amap/api/col/l3s/oi;->f:I

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_8
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_5
    const-string v0, "CgiManager"

    const-string v1, "hdlCdmaLocChange"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_9
    :goto_2
    monitor-exit p0

    return-void

    :cond_a
    :try_start_6
    iget-object v1, p0, Lcom/amap/api/col/l3s/oj;->f:Landroid/telephony/CellLocation;

    invoke-direct {p0, v1, v0, p1}, Lcom/amap/api/col/l3s/oj;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static a(I)Z
    .locals 1

    if-lez p0, :cond_1

    const/16 v0, 0xf

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(II)Z
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const v1, 0xffff

    if-gt p0, v1, :cond_1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    const p0, 0xfffffff

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private declared-synchronized b(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, -0x71

    if-ne p1, v0, :cond_0

    :try_start_0
    iput v0, p0, Lcom/amap/api/col/l3s/oj;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput p1, p0, Lcom/amap/api/col/l3s/oj;->o:I

    iget p1, p0, Lcom/amap/api/col/l3s/oj;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_2

    :try_start_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/col/l3s/oi;

    iget v0, p0, Lcom/amap/api/col/l3s/oj;->o:I

    iput v0, p1, Lcom/amap/api/col/l3s/oi;->j:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(ZZ)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/oj;->j:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->t:Landroid/telephony/TelephonyManager$CellInfoCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/oj$a;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/oj$a;-><init>(Lcom/amap/api/col/l3s/oj;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/oj;->t:Landroid/telephony/TelephonyManager$CellInfoCallback;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/amap/api/col/l3s/ka;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/l3s/oj;->t:Landroid/telephony/TelephonyManager$CellInfoCallback;

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->requestCellInfoUpdate(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    if-nez p2, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/amap/api/col/l3s/oj;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v3, :cond_2

    const/16 v3, 0x14

    if-ge v0, v3, :cond_2

    const-wide/16 v3, 0x5

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/amap/api/col/l3s/oj;->q()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/oj;->b(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/amap/api/col/l3s/oj;->r()Landroid/telephony/CellLocation;

    move-result-object v0

    :cond_3
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/oj;->b(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v0, p0, Lcom/amap/api/col/l3s/oj;->f:Landroid/telephony/CellLocation;

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/amap/api/col/l3s/oj;->s:J

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/amap/api/col/l3s/oj;->s:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xea60

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    iput-object v1, p0, Lcom/amap/api/col/l3s/oj;->f:Landroid/telephony/CellLocation;

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/oj;->g:Z

    const/4 v3, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->f:Landroid/telephony/CellLocation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    move p2, v2

    :cond_6
    const-wide/16 v4, 0xa

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    add-int/2addr p2, v3

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->f:Landroid/telephony/CellLocation;

    if-nez v0, :cond_7

    const/16 v0, 0x32

    if-lt p2, v0, :cond_6

    :cond_7
    iput-boolean v3, p0, Lcom/amap/api/col/l3s/oj;->g:Z

    iget-object p2, p0, Lcom/amap/api/col/l3s/oj;->f:Landroid/telephony/CellLocation;

    invoke-direct {p0, p2}, Lcom/amap/api/col/l3s/oj;->b(Landroid/telephony/CellLocation;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/oj;->a(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_8
    :try_start_5
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->c()I

    move-result p1

    const/16 p2, 0x12

    if-lt p1, p2, :cond_d

    iget-object p1, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/amap/api/col/l3s/oj;->n:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/amap/api/col/l3s/oj;->p:Lcom/amap/api/col/l3s/oh;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iput-object v1, p0, Lcom/amap/api/col/l3s/oj;->i:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/oj;->i:Ljava/lang/String;

    :goto_4
    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_9
    :goto_5
    if-ge v2, v1, :cond_c

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_b

    :try_start_9
    invoke-direct {p0, v3}, Lcom/amap/api/col/l3s/oj;->a(Landroid/telephony/CellInfo;)Lcom/amap/api/col/l3s/oi;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    const-wide/32 v4, 0xffff

    invoke-virtual {p2, v3}, Lcom/amap/api/col/l3s/oh;->a(Lcom/amap/api/col/l3s/oi;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v3, Lcom/amap/api/col/l3s/oi;->l:S

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    :cond_b
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    if-eqz p1, :cond_d

    :try_start_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget v0, p0, Lcom/amap/api/col/l3s/oj;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amap/api/col/l3s/oj;->a:I

    invoke-virtual {p2, p1}, Lcom/amap/api/col/l3s/oh;->a(Ljava/util/ArrayList;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    :cond_d
    :try_start_b
    iget-object p1, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/oj;->m:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    iget p1, p0, Lcom/amap/api/col/l3s/oj;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/amap/api/col/l3s/oj;->a:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_e
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Landroid/telephony/CellLocation;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/oj;->a(Landroid/telephony/CellLocation;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/oj;->a:I

    :cond_0
    return p1
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/oj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/oj;->x:Z

    return p0
.end method

.method private c(Landroid/telephony/CellLocation;)I
    .locals 2

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/oj;->j:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    instance-of p0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    const-string p0, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Utils"

    const-string v1, "getCellLocT"

    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/oj;)V
    .locals 3

    new-instance v0, Lcom/amap/api/col/l3s/oj$b;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/oj$b;-><init>(Lcom/amap/api/col/l3s/oj;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/oj;->h:Landroid/telephony/PhoneStateListener;

    const-string v0, "android.telephony.PhoneStateListener"

    const-string v1, "LISTEN_SIGNAL_STRENGTHS"

    :try_start_0
    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/oz;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/amap/api/col/l3s/oj;->h:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/amap/api/col/l3s/oj;->h:Landroid/telephony/PhoneStateListener;

    or-int/2addr v0, v1

    invoke-virtual {v2, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    return-void
.end method

.method private static c(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const v0, 0xffff

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static d(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const v0, 0xffff

    if-eq p0, v0, :cond_1

    const v0, 0xfffffff

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/oj;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/oj;->u:Z

    return v0
.end method

.method static synthetic e(Lcom/amap/api/col/l3s/oj;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/oj;->a(Z)V

    return-void
.end method

.method static synthetic f(Lcom/amap/api/col/l3s/oj;)Lcom/amap/api/col/l3s/ob;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/oj;->w:Lcom/amap/api/col/l3s/ob;

    return-object p0
.end method

.method public static j()I
    .locals 1

    :try_start_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    sput v0, Lcom/amap/api/col/l3s/oj;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    sget v0, Lcom/amap/api/col/l3s/oj;->r:I

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "android.telephony.TelephonyManager2"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x2

    sput v0, Lcom/amap/api/col/l3s/oj;->r:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_0
    sget v0, Lcom/amap/api/col/l3s/oj;->r:I

    return v0
.end method

.method private o()Landroid/telephony/CellLocation;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    iput-object v1, p0, Lcom/amap/api/col/l3s/oj;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/oj;->b(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/amap/api/col/l3s/oj;->f:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/amap/api/col/l3s/oj;->i:Ljava/lang/String;

    const-string p0, "CgiManager"

    const-string v2, "getCellLocation"

    invoke-static {v0, p0, v2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/oj;->i:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1
.end method

.method private declared-synchronized p()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/l3s/oj;->a:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/amap/api/col/l3s/oj;->a:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/amap/api/col/l3s/oj;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private q()Landroid/telephony/CellLocation;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->c()I

    move-result v2

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3s/oj;->a(Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3s/oj;->i:Ljava/lang/String;

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/col/l3s/oj;->o()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/oj;->b(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getCellLocationExt"

    invoke-direct {p0, v0, v3, v2}, Lcom/amap/api/col/l3s/oj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "getCellLocationGemini"

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/col/l3s/oj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object p0

    return-object p0
.end method

.method private r()Landroid/telephony/CellLocation;
    .locals 7

    sget-boolean v0, Lcom/amap/api/col/l3s/oj;->v:Z

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    sput-boolean v1, Lcom/amap/api/col/l3s/oj;->v:Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->q:Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/oj;->s()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "getCellLocation"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v4, v6}, Lcom/amap/api/col/l3s/oj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    new-array v6, v1, [Ljava/lang/Object;

    aput-object v2, v6, v5

    invoke-direct {p0, v0, v4, v6}, Lcom/amap/api/col/l3s/oj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    const-string v4, "getCellLocationGemini"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v2, v6, v5

    invoke-direct {p0, v0, v4, v6}, Lcom/amap/api/col/l3s/oj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    const-string v4, "getAllCellInfo"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v4, v1}, Lcom/amap/api/col/l3s/oj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    return-object v3

    :catchall_0
    move-exception p0

    const-string v0, "CgiManager"

    const-string v1, "getSim2Cgi"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v3
.end method

.method private static s()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget v1, Lcom/amap/api/col/l3s/oj;->r:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "android.telephony.TelephonyManager2"

    goto :goto_0

    :cond_1
    const-string v1, "android.telephony.MSimTelephonyManager"

    goto :goto_0

    :cond_2
    const-string v1, "android.telephony.TelephonyManager"

    :goto_0
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v3, "getSim2TmClass"

    invoke-static {v0, v1, v3}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v2
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/ni;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_6

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    instance-of v2, v1, Landroid/telephony/CellInfoCdma;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v4

    new-instance v5, Lcom/amap/api/col/l3s/nj;

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    invoke-direct {v5, v1, v3}, Lcom/amap/api/col/l3s/nj;-><init>(ZZ)V

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/nj;->m:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/nj;->n:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/nj;->j:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/nj;->k:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/nj;->l:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getAsuLevel()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/ni;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/ni;->c:I

    :cond_1
    :goto_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v2, v1, Landroid/telephony/CellInfoGsm;

    const/16 v4, 0x18

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v5

    new-instance v6, Lcom/amap/api/col/l3s/nk;

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    invoke-direct {v6, v1, v3}, Lcom/amap/api/col/l3s/nk;-><init>(ZZ)V

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/amap/api/col/l3s/ni;->a:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/amap/api/col/l3s/ni;->b:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/nk;->j:I

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/nk;->k:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/ni;->c:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/ni;->d:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getArfcn()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/nk;->m:I

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getBsic()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/nk;->n:I

    :cond_3
    :goto_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    instance-of v2, v1, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    new-instance v5, Lcom/amap/api/col/l3s/nl;

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    invoke-direct {v5, v1}, Lcom/amap/api/col/l3s/nl;-><init>(Z)V

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/amap/api/col/l3s/ni;->a:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/amap/api/col/l3s/ni;->b:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/nl;->l:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/ni;->d:I

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/nl;->k:I

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/nl;->j:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/nl;->n:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/ni;->c:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_1

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/nl;->m:I

    goto/16 :goto_1

    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v2, v5, :cond_0

    instance-of v2, v1, Landroid/telephony/CellInfoWcdma;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    new-instance v6, Lcom/amap/api/col/l3s/nm;

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    invoke-direct {v6, v1, v3}, Lcom/amap/api/col/l3s/nm;-><init>(ZZ)V

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/amap/api/col/l3s/ni;->a:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/amap/api/col/l3s/ni;->b:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/nm;->j:I

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/nm;->k:I

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/nm;->l:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/ni;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/ni;->c:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getUarfcn()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/nm;->m:I

    goto/16 :goto_2

    :cond_6
    return-object v0
.end method

.method public final a(Lcom/amap/api/col/l3s/ob;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/oj;->w:Lcom/amap/api/col/l3s/ob;

    return-void
.end method

.method public final declared-synchronized a(ZZ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/pc;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/oj;->j:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/amap/api/col/l3s/oj;->e:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/oj;->b(ZZ)V

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/col/l3s/oj;->e:J

    :cond_3
    iget-boolean p1, p0, Lcom/amap/api/col/l3s/oj;->j:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/oj;->i()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/col/l3s/oj;->p()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    const-string p2, "CgiManager"

    const-string v0, "refresh"

    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/oj;->i:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final a(Landroid/telephony/CellLocation;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/oj;->c(Landroid/telephony/CellLocation;)I

    move-result p0

    const-string v1, "CgiManager"

    const/4 v2, 0x1

    if-eq p0, v2, :cond_4

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    const-string p0, "getSystemId"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v3}, Lcom/amap/api/col/l3s/oz;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_3

    const-string p0, "getNetworkId"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v3}, Lcom/amap/api/col/l3s/oz;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_3

    const-string p0, "getBaseStationId"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v3}, Lcom/amap/api/col/l3s/oz;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    move v2, v0

    goto :goto_2

    :catchall_0
    move-exception p0

    const-string p1, "cgiUseful Cgi.I_CDMA_T"

    goto :goto_1

    :cond_4
    :try_start_1
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p0

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/oj;->a(II)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    const-string p1, "cgiUseful Cgi.I_GSM_T"

    :goto_1
    invoke-static {p0, v1, p1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v2
.end method

.method public final declared-synchronized b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3s/oi;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3s/oi;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/col/l3s/oj;->n:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final declared-synchronized d()Lcom/amap/api/col/l3s/oi;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/oj;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/oi;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/oj;->a:I

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/oj;->a:I

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public final g()Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->p:Lcom/amap/api/col/l3s/oh;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/oh;->a()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/oj;->s:J

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->y:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/oj;->x:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/oj;->h:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/oj;->h:Landroid/telephony/PhoneStateListener;

    const/16 v1, -0x71

    iput v1, p0, Lcom/amap/api/col/l3s/oj;->o:I

    iput-object v0, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/amap/api/col/l3s/oj;->q:Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method final declared-synchronized i()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/col/l3s/oj;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/l3s/oj;->f:Landroid/telephony/CellLocation;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/oj;->a:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/oj;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/oj;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final declared-synchronized m()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/oj;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/oj;->i()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->k:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/oj;->k:Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->k:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/col/l3s/oj;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_0
    iget v0, p0, Lcom/amap/api/col/l3s/oj;->a:I

    and-int/lit8 v0, v0, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->k:Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3s/oi;

    iget v3, v3, Lcom/amap/api/col/l3s/oi;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->k:Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3s/oi;

    iget v3, v3, Lcom/amap/api/col/l3s/oi;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->k:Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/col/l3s/oj;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3s/oi;

    iget v3, v3, Lcom/amap/api/col/l3s/oi;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/oj;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/oj;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return v0

    :catchall_0
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/oj;->l:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/pc;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/pc;->a(Landroid/net/NetworkInfo;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    :cond_2
    return v0

    :catchall_1
    :cond_3
    const/4 p0, 0x0

    return p0
.end method
