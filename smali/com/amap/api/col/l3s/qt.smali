.class public final Lcom/amap/api/col/l3s/qt;
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
        Lcom/amap/api/col/l3s/qt$b;,
        Lcom/amap/api/col/l3s/qt$a;
    }
.end annotation


# static fields
.field private static v:Z = false


# instance fields
.field a:I

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3s/qs;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3s/qk;",
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
            "Lcom/amap/api/col/l3s/qs;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:Lcom/amap/api/col/l3s/qr;

.field private q:Ljava/lang/Object;

.field private r:I

.field private s:J

.field private t:Landroid/telephony/TelephonyManager$CellInfoCallback;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field

.field private u:Z

.field private w:Lcom/amap/api/col/l3s/qq;

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

    iput v0, p0, Lcom/amap/api/col/l3s/qt;->a:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/qt;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3s/qt;->m:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/qt;->n:Ljava/util/ArrayList;

    const/16 v2, -0x71

    iput v2, p0, Lcom/amap/api/col/l3s/qt;->o:I

    iput-object v1, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/amap/api/col/l3s/qt;->p:Lcom/amap/api/col/l3s/qr;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/amap/api/col/l3s/qt;->e:J

    iput v0, p0, Lcom/amap/api/col/l3s/qt;->r:I

    iput-wide v2, p0, Lcom/amap/api/col/l3s/qt;->s:J

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/qt;->g:Z

    iput-object v1, p0, Lcom/amap/api/col/l3s/qt;->h:Landroid/telephony/PhoneStateListener;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/qt;->u:Z

    iput-object v1, p0, Lcom/amap/api/col/l3s/qt;->i:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/qt;->j:Z

    iput-object v1, p0, Lcom/amap/api/col/l3s/qt;->k:Ljava/lang/StringBuilder;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/qt;->x:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/qt;->y:Ljava/lang/Object;

    iput-object p1, p0, Lcom/amap/api/col/l3s/qt;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    const-string v2, "phone"

    invoke-static {p1, v2}, Lcom/amap/api/col/l3s/pu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/qt;->c(Landroid/telephony/CellLocation;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/qt;->a:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v1, p0, Lcom/amap/api/col/l3s/qt;->i:Ljava/lang/String;

    const-string v1, "CgiManager"

    invoke-static {p1, v1, v1}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/amap/api/col/l3s/qt;->a:I

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/qt;->i:Ljava/lang/String;

    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/col/l3s/qt;->n()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/qt;->r:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const-string v1, "phone2"

    if-eq p1, v0, :cond_1

    :try_start_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/qt;->l:Landroid/content/Context;

    :goto_1
    invoke-static {p1, v1}, Lcom/amap/api/col/l3s/pu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/amap/api/col/l3s/qt;->q:Ljava/lang/Object;

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/qt;->l:Landroid/content/Context;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/qt;->l:Landroid/content/Context;

    const-string v0, "phone_msim"

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/pu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    :goto_3
    invoke-static {}, Lcom/amap/api/col/l3s/ka;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/amap/api/col/l3s/qt$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/qt$1;-><init>(Lcom/amap/api/col/l3s/qt;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_3
    new-instance p1, Lcom/amap/api/col/l3s/qr;

    invoke-direct {p1}, Lcom/amap/api/col/l3s/qr;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/qt;->p:Lcom/amap/api/col/l3s/qr;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/qt;J)J
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/col/l3s/qt;->s:J

    return-wide p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/qt;Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/qt;->a(Ljava/util/List;)Landroid/telephony/CellLocation;

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
    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3s/ps;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/telephony/CellLocation;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/qt;->b(Landroid/telephony/CellLocation;)Z

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
    invoke-direct {p0, v3}, Lcom/amap/api/col/l3s/qt;->a(Landroid/telephony/CellInfo;)Lcom/amap/api/col/l3s/qs;

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
    iget p1, v2, Lcom/amap/api/col/l3s/qs;->k:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    new-instance p1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {p1}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget v4, v2, Lcom/amap/api/col/l3s/qs;->i:I

    iget v5, v2, Lcom/amap/api/col/l3s/qs;->e:I

    iget v6, v2, Lcom/amap/api/col/l3s/qs;->f:I

    iget v7, v2, Lcom/amap/api/col/l3s/qs;->g:I

    iget v8, v2, Lcom/amap/api/col/l3s/qs;->h:I

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
    iget v1, v2, Lcom/amap/api/col/l3s/qs;->c:I

    iget v2, v2, Lcom/amap/api/col/l3s/qs;->d:I

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

.method private static a(IZIIIII)Lcom/amap/api/col/l3s/qs;
    .locals 1

    new-instance v0, Lcom/amap/api/col/l3s/qs;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/qs;-><init>(IZ)V

    iput p2, v0, Lcom/amap/api/col/l3s/qs;->a:I

    iput p3, v0, Lcom/amap/api/col/l3s/qs;->b:I

    iput p4, v0, Lcom/amap/api/col/l3s/qs;->c:I

    iput p5, v0, Lcom/amap/api/col/l3s/qs;->d:I

    iput p6, v0, Lcom/amap/api/col/l3s/qs;->j:I

    return-object v0
.end method

.method private a(Landroid/telephony/CellInfo;)Lcom/amap/api/col/l3s/qs;
    .locals 2

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v0

    instance-of v1, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/telephony/CellInfoCdma;

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3s/qt;->a(Landroid/telephony/CellInfoCdma;Z)Lcom/amap/api/col/l3s/qs;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Landroid/telephony/CellInfoGsm;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/telephony/CellInfoGsm;

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/qt;->a(Landroid/telephony/CellInfoGsm;Z)Lcom/amap/api/col/l3s/qs;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of p0, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz p0, :cond_2

    check-cast p1, Landroid/telephony/CellInfoWcdma;

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/qt;->a(Landroid/telephony/CellInfoWcdma;Z)Lcom/amap/api/col/l3s/qs;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of p0, p1, Landroid/telephony/CellInfoLte;

    if-eqz p0, :cond_3

    check-cast p1, Landroid/telephony/CellInfoLte;

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/qt;->a(Landroid/telephony/CellInfoLte;Z)Lcom/amap/api/col/l3s/qs;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private a(Landroid/telephony/CellInfoCdma;Z)Lcom/amap/api/col/l3s/qs;
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

    iget-object p0, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Lcom/amap/api/col/l3s/pu;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

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

    invoke-static/range {v3 .. v9}, Lcom/amap/api/col/l3s/qt;->a(IZIIIII)Lcom/amap/api/col/l3s/qs;

    move-result-object p0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/qs;->g:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/qs;->h:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/qs;->i:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/qs;->e:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/qs;->f:I

    return-object p0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static a(Landroid/telephony/CellInfoGsm;Z)Lcom/amap/api/col/l3s/qs;
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

    invoke-static {v2}, Lcom/amap/api/col/l3s/qt;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    invoke-static {v2}, Lcom/amap/api/col/l3s/qt;->d(I)Z

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

    invoke-static/range {v3 .. v9}, Lcom/amap/api/col/l3s/qt;->a(IZIIIII)Lcom/amap/api/col/l3s/qs;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static a(Landroid/telephony/CellInfoLte;Z)Lcom/amap/api/col/l3s/qs;
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

    invoke-static {v2}, Lcom/amap/api/col/l3s/qt;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    invoke-static {v2}, Lcom/amap/api/col/l3s/qt;->d(I)Z

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

    invoke-static/range {v3 .. v9}, Lcom/amap/api/col/l3s/qt;->a(IZIIIII)Lcom/amap/api/col/l3s/qs;

    move-result-object p0

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/qs;->o:I

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static a(Landroid/telephony/CellInfoWcdma;Z)Lcom/amap/api/col/l3s/qs;
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

    invoke-static {v2}, Lcom/amap/api/col/l3s/qt;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    invoke-static {v2}, Lcom/amap/api/col/l3s/qt;->d(I)Z

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

    invoke-static/range {v3 .. v9}, Lcom/amap/api/col/l3s/qt;->a(IZIIIII)Lcom/amap/api/col/l3s/qs;

    move-result-object p0

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/qs;->o:I

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lcom/amap/api/col/l3s/qs;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/qs;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3s/qs;-><init>(IZ)V

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/amap/api/col/l3s/qs;->a:I

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/amap/api/col/l3s/qs;->b:I

    const-string p1, "getLac"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3s/ps;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    iput p1, v0, Lcom/amap/api/col/l3s/qs;->c:I

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result p1

    iput p1, v0, Lcom/amap/api/col/l3s/qs;->d:I

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/pu;->a(I)I

    move-result p0

    iput p0, v0, Lcom/amap/api/col/l3s/qs;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    const-string p1, "CgiManager"

    const-string v0, "getGsm"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/qt;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/qt;->y:Ljava/lang/Object;

    return-object p0
.end method

.method private declared-synchronized a(Landroid/telephony/CellLocation;[Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/qt;->b(Landroid/telephony/CellLocation;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/amap/api/col/l3s/qt;->a:I

    iget-object v1, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v2, Lcom/amap/api/col/l3s/qs;

    invoke-direct {v2, v0, v0}, Lcom/amap/api/col/l3s/qs;-><init>(IZ)V

    const/4 v3, 0x0

    aget-object v4, p2, v3

    invoke-static {v4}, Lcom/amap/api/col/l3s/pu;->d(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/amap/api/col/l3s/qs;->a:I

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/pu;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/amap/api/col/l3s/qs;->b:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, v2, Lcom/amap/api/col/l3s/qs;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    iput p1, v2, Lcom/amap/api/col/l3s/qs;->d:I

    iget p1, p0, Lcom/amap/api/col/l3s/qt;->o:I

    iput p1, v2, Lcom/amap/api/col/l3s/qs;->j:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-gt p1, v0, :cond_5

    iget-object p1, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    const-string v0, "getNeighboringCellInfo"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3s/ps;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/qt;->a(II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0, p2}, Lcom/amap/api/col/l3s/qt;->a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lcom/amap/api/col/l3s/qs;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_6
    :goto_2
    monitor-exit p0

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/qt;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/qt;->b(I)V

    return-void
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
    iput v0, p0, Lcom/amap/api/col/l3s/qt;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput p1, p0, Lcom/amap/api/col/l3s/qt;->o:I

    iget p1, p0, Lcom/amap/api/col/l3s/qt;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_2

    :try_start_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/col/l3s/qs;

    iget v0, p0, Lcom/amap/api/col/l3s/qt;->o:I

    iput v0, p1, Lcom/amap/api/col/l3s/qs;->j:I
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

.method private b(Landroid/telephony/CellLocation;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/qt;->a(Landroid/telephony/CellLocation;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/qt;->a:I

    :cond_0
    return p1
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/qt;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/qt;->x:Z

    return p0
.end method

.method private c(Landroid/telephony/CellLocation;)I
    .locals 2

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/qt;->j:Z

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

    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/qt;)V
    .locals 3

    new-instance v0, Lcom/amap/api/col/l3s/qt$b;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/qt$b;-><init>(Lcom/amap/api/col/l3s/qt;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/qt;->h:Landroid/telephony/PhoneStateListener;

    const-string v0, "android.telephony.PhoneStateListener"

    const-string v1, "LISTEN_SIGNAL_STRENGTHS"

    :try_start_0
    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/ps;->b(Ljava/lang/String;Ljava/lang/String;)I

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
    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/amap/api/col/l3s/qt;->h:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/amap/api/col/l3s/qt;->h:Landroid/telephony/PhoneStateListener;

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

.method static synthetic d(Lcom/amap/api/col/l3s/qt;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/qt;->u:Z

    return v0
.end method

.method static synthetic e(Lcom/amap/api/col/l3s/qt;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/qt;->j()V

    return-void
.end method

.method static synthetic f(Lcom/amap/api/col/l3s/qt;)Lcom/amap/api/col/l3s/qq;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/qt;->w:Lcom/amap/api/col/l3s/qq;

    return-object p0
.end method

.method private g()Landroid/telephony/CellLocation;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    iput-object v1, p0, Lcom/amap/api/col/l3s/qt;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/qt;->b(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/amap/api/col/l3s/qt;->f:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/amap/api/col/l3s/qt;->i:Ljava/lang/String;

    const-string p0, "CgiManager"

    const-string v2, "getCellLocation"

    invoke-static {v0, p0, v2}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/qt;->i:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1
.end method

.method private declared-synchronized h()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/l3s/qt;->a:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/amap/api/col/l3s/qt;->a:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/amap/api/col/l3s/qt;->a:I
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

.method private declared-synchronized i()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/qt;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->t:Landroid/telephony/TelephonyManager$CellInfoCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/qt$a;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/qt$a;-><init>(Lcom/amap/api/col/l3s/qt;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/qt;->t:Landroid/telephony/TelephonyManager$CellInfoCallback;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/amap/api/col/l3s/ka;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/qt;->t:Landroid/telephony/TelephonyManager$CellInfoCallback;

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->requestCellInfoUpdate(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3s/qt;->k()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/qt;->b(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/amap/api/col/l3s/qt;->l()Landroid/telephony/CellLocation;

    move-result-object v0

    :cond_2
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/qt;->b(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v0, p0, Lcom/amap/api/col/l3s/qt;->f:Landroid/telephony/CellLocation;

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/col/l3s/qt;->s:J

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/api/col/l3s/qt;->s:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    iput-object v1, p0, Lcom/amap/api/col/l3s/qt;->f:Landroid/telephony/CellLocation;

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/qt;->g:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->f:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/qt;->b(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/amap/api/col/l3s/qt;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_5
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/l3s/pu;->c()I

    move-result v0

    const/16 v2, 0x12

    if-lt v0, v2, :cond_a

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->n:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amap/api/col/l3s/qt;->p:Lcom/amap/api/col/l3s/qr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-object v1, p0, Lcom/amap/api/col/l3s/qt;->i:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/qt;->i:Ljava/lang/String;

    :goto_2
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_6
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_9

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_8

    :try_start_5
    invoke-direct {p0, v5}, Lcom/amap/api/col/l3s/qt;->a(Landroid/telephony/CellInfo;)Lcom/amap/api/col/l3s/qs;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    const-wide/32 v6, 0xffff

    invoke-virtual {v2, v5}, Lcom/amap/api/col/l3s/qr;->a(Lcom/amap/api/col/l3s/qs;)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-short v6, v6

    iput-short v6, v5, Lcom/amap/api/col/l3s/qs;->l:S

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    :try_start_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    iget v1, p0, Lcom/amap/api/col/l3s/qt;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/amap/api/col/l3s/qt;->a:I

    invoke-virtual {v2, v0}, Lcom/amap/api/col/l3s/qr;->a(Ljava/util/ArrayList;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    :cond_a
    :try_start_7
    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/qt;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/amap/api/col/l3s/qt;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amap/api/col/l3s/qt;->a:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_b
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/amap/api/col/l3s/pu;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/qt;->f:Landroid/telephony/CellLocation;

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/qt;->c(Landroid/telephony/CellLocation;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/qt;->f:Landroid/telephony/CellLocation;

    if-eqz v1, :cond_9

    iget-object v4, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v4, p0, Lcom/amap/api/col/l3s/qt;->q:Ljava/lang/Object;
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

    invoke-direct {p0, v4}, Lcom/amap/api/col/l3s/qt;->b(Landroid/telephony/CellLocation;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v4, v0}, Lcom/amap/api/col/l3s/qt;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v2

    goto :goto_0

    :catchall_0
    :cond_2
    move v4, v5

    :goto_0
    if-eqz v4, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/qt;->b(Landroid/telephony/CellLocation;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v4, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    iput v3, p0, Lcom/amap/api/col/l3s/qt;->a:I

    new-instance v4, Lcom/amap/api/col/l3s/qs;

    invoke-direct {v4, v3, v2}, Lcom/amap/api/col/l3s/qs;-><init>(IZ)V

    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/amap/api/col/l3s/qs;->a:I

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/amap/api/col/l3s/qs;->b:I

    const-string v0, "getSystemId"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/amap/api/col/l3s/ps;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v4, Lcom/amap/api/col/l3s/qs;->g:I

    const-string v0, "getNetworkId"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/amap/api/col/l3s/ps;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v4, Lcom/amap/api/col/l3s/qs;->h:I

    const-string v0, "getBaseStationId"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/amap/api/col/l3s/ps;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v4, Lcom/amap/api/col/l3s/qs;->i:I

    iget v0, p0, Lcom/amap/api/col/l3s/qt;->o:I

    iput v0, v4, Lcom/amap/api/col/l3s/qs;->j:I

    const-string v0, "getBaseStationLatitude"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/amap/api/col/l3s/ps;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v4, Lcom/amap/api/col/l3s/qs;->e:I

    const-string v0, "getBaseStationLongitude"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/amap/api/col/l3s/ps;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v4, Lcom/amap/api/col/l3s/qs;->f:I

    iget v1, v4, Lcom/amap/api/col/l3s/qs;->e:I

    if-ne v1, v0, :cond_5

    iget v0, v4, Lcom/amap/api/col/l3s/qs;->e:I

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    move v2, v5

    :goto_1
    iget v0, v4, Lcom/amap/api/col/l3s/qs;->e:I

    if-ltz v0, :cond_6

    iget v0, v4, Lcom/amap/api/col/l3s/qs;->f:I

    if-ltz v0, :cond_6

    iget v0, v4, Lcom/amap/api/col/l3s/qs;->e:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_6

    iget v0, v4, Lcom/amap/api/col/l3s/qs;->f:I

    if-eq v0, v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    iput v5, v4, Lcom/amap/api/col/l3s/qs;->e:I

    iput v5, v4, Lcom/amap/api/col/l3s/qs;->f:I

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_8
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    const-string v1, "CgiManager"

    const-string v2, "hdlCdmaLocChange"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_9
    :goto_2
    monitor-exit p0

    return-void

    :cond_a
    :try_start_6
    iget-object v1, p0, Lcom/amap/api/col/l3s/qt;->f:Landroid/telephony/CellLocation;

    invoke-direct {p0, v1, v0}, Lcom/amap/api/col/l3s/qt;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()Landroid/telephony/CellLocation;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/pu;->c()I

    move-result v2

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3s/qt;->a(Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3s/qt;->i:Ljava/lang/String;

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/col/l3s/qt;->g()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/qt;->b(Landroid/telephony/CellLocation;)Z

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

    invoke-direct {p0, v0, v3, v2}, Lcom/amap/api/col/l3s/qt;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "getCellLocationGemini"

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/col/l3s/qt;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object p0

    return-object p0
.end method

.method private l()Landroid/telephony/CellLocation;
    .locals 7

    sget-boolean v0, Lcom/amap/api/col/l3s/qt;->v:Z

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    sput-boolean v1, Lcom/amap/api/col/l3s/qt;->v:Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->q:Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/qt;->m()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "getCellLocation"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v4, v6}, Lcom/amap/api/col/l3s/qt;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    new-array v6, v1, [Ljava/lang/Object;

    aput-object v2, v6, v5

    invoke-direct {p0, v0, v4, v6}, Lcom/amap/api/col/l3s/qt;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    const-string v4, "getCellLocationGemini"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v2, v6, v5

    invoke-direct {p0, v0, v4, v6}, Lcom/amap/api/col/l3s/qt;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    const-string v4, "getAllCellInfo"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v4, v1}, Lcom/amap/api/col/l3s/qt;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    return-object v3

    :catchall_0
    move-exception p0

    const-string v0, "CgiManager"

    const-string v1, "getSim2Cgi"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v3
.end method

.method private m()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget p0, p0, Lcom/amap/api/col/l3s/qt;->r:I

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    const-string p0, "android.telephony.TelephonyManager2"

    goto :goto_0

    :cond_1
    const-string p0, "android.telephony.MSimTelephonyManager"

    goto :goto_0

    :cond_2
    const-string p0, "android.telephony.TelephonyManager"

    :goto_0
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string v0, "CgiManager"

    const-string v2, "getSim2TmClass"

    invoke-static {p0, v0, v2}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method private n()I
    .locals 1

    :try_start_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/l3s/qt;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget v0, p0, Lcom/amap/api/col/l3s/qt;->r:I

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "android.telephony.TelephonyManager2"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/col/l3s/qt;->r:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_0
    iget p0, p0, Lcom/amap/api/col/l3s/qt;->r:I

    return p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/pu;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/qt;->j:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/amap/api/col/l3s/qt;->e:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/col/l3s/qt;->i()V

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/qt;->e:J

    :cond_3
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/qt;->j:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/qt;->e()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/col/l3s/qt;->h()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "CgiManager"

    const-string v2, "refresh"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/qt;->i:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Landroid/telephony/CellLocation;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/qt;->c(Landroid/telephony/CellLocation;)I

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

    invoke-static {p1, p0, v3}, Lcom/amap/api/col/l3s/ps;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_3

    const-string p0, "getNetworkId"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v3}, Lcom/amap/api/col/l3s/ps;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_3

    const-string p0, "getBaseStationId"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v3}, Lcom/amap/api/col/l3s/ps;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

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

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/qt;->a(II)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    const-string p1, "cgiUseful Cgi.I_GSM_T"

    :goto_1
    invoke-static {p0, v1, p1}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v2
.end method

.method public final declared-synchronized b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3s/qs;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;
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
            "Lcom/amap/api/col/l3s/qs;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/col/l3s/qt;->n:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->p:Lcom/amap/api/col/l3s/qr;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/qr;->a()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/qt;->s:J

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->y:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/qt;->x:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/qt;->h:Landroid/telephony/PhoneStateListener;

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

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/qt;->h:Landroid/telephony/PhoneStateListener;

    const/16 v1, -0x71

    iput v1, p0, Lcom/amap/api/col/l3s/qt;->o:I

    iput-object v0, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/amap/api/col/l3s/qt;->q:Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/col/l3s/qt;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/l3s/qt;->f:Landroid/telephony/CellLocation;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/qt;->a:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/qt;->n:Ljava/util/ArrayList;

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

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/qt;->m:Ljava/lang/String;

    return-object p0
.end method
