.class public final Lcom/amap/api/col/l3s/qq;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:J


# instance fields
.field a:Lcom/amap/api/col/l3s/qt;

.field b:Lcom/amap/api/col/l3s/qj;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/qq;->b:Lcom/amap/api/col/l3s/qj;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3s/qq;->a:Lcom/amap/api/col/l3s/qt;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/amap/api/col/l3s/qq;->a:Lcom/amap/api/col/l3s/qt;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_6

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

    new-instance v5, Lcom/amap/api/col/l3s/ql;

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    invoke-direct {v5, v1, v3}, Lcom/amap/api/col/l3s/ql;-><init>(ZZ)V

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/ql;->m:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/ql;->n:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/ql;->j:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/ql;->k:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/ql;->l:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getAsuLevel()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/qk;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/qk;->c:I

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

    new-instance v6, Lcom/amap/api/col/l3s/qm;

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    invoke-direct {v6, v1, v3}, Lcom/amap/api/col/l3s/qm;-><init>(ZZ)V

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/amap/api/col/l3s/qk;->a:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/amap/api/col/l3s/qk;->b:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/qm;->j:I

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/qm;->k:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/qk;->c:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/qk;->d:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getArfcn()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/qm;->m:I

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getBsic()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/qm;->n:I

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

    new-instance v5, Lcom/amap/api/col/l3s/qn;

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    invoke-direct {v5, v1}, Lcom/amap/api/col/l3s/qn;-><init>(Z)V

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/amap/api/col/l3s/qk;->a:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/amap/api/col/l3s/qk;->b:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/qn;->l:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/qk;->d:I

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/qn;->k:I

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/qn;->m:I

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/qn;->j:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/qn;->n:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/qk;->c:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_1

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v1

    iput v1, v5, Lcom/amap/api/col/l3s/qn;->m:I

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

    new-instance v6, Lcom/amap/api/col/l3s/qo;

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    invoke-direct {v6, v1, v3}, Lcom/amap/api/col/l3s/qo;-><init>(ZZ)V

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/amap/api/col/l3s/qk;->a:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/amap/api/col/l3s/qk;->b:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/qo;->j:I

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/qo;->k:I

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/qo;->l:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/qk;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/qk;->c:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getUarfcn()I

    move-result v1

    iput v1, v6, Lcom/amap/api/col/l3s/qo;->m:I

    goto/16 :goto_2

    :cond_6
    invoke-static {v0}, Lcom/amap/api/col/l3s/qj;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "cl"

    const-string v1, "upc"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
