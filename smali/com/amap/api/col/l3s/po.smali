.class public final Lcom/amap/api/col/l3s/po;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field protected static J:Ljava/lang/String;

.field protected static L:Ljava/lang/String;


# instance fields
.field protected A:Ljava/lang/String;

.field protected B:Ljava/lang/String;

.field protected C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3s/qs;",
            ">;"
        }
    .end annotation
.end field

.field protected D:Ljava/lang/String;

.field protected E:Ljava/lang/String;

.field protected F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field protected G:Ljava/lang/String;

.field protected H:Ljava/lang/String;

.field protected I:[B

.field protected K:Ljava/lang/String;

.field protected M:Ljava/lang/String;

.field protected N:Ljava/lang/String;

.field private O:[B

.field private P:I

.field public a:Ljava/lang/String;

.field protected b:S

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/String;

.field protected t:Ljava/lang/String;

.field protected u:Ljava/lang/String;

.field protected v:Ljava/lang/String;

.field protected w:Ljava/lang/String;

.field protected x:Ljava/lang/String;

.field protected y:Ljava/lang/String;

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/amap/api/col/l3s/po;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/amap/api/col/l3s/po;->b:S

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->y:Ljava/lang/String;

    iput v0, p0, Lcom/amap/api/col/l3s/po;->z:I

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->A:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->B:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/po;->C:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->E:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/po;->F:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->G:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->H:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->I:[B

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->O:[B

    iput v0, p0, Lcom/amap/api/col/l3s/po;->P:I

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->M:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/po;->N:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;[BI)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    aput-byte v0, p1, p2

    goto :goto_0

    :cond_0
    const-string v1, "GBK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length v1, p0

    const/16 v2, 0x7f

    if-le v1, v2, :cond_1

    move v1, v2

    :cond_1
    int-to-byte v2, v1

    aput-byte v2, p1, p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p2, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string v1, "Req"

    const-string v2, "copyContentWithByteLen"

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v0, p1, p2

    :goto_0
    add-int/lit8 p2, p2, 0x1

    :goto_1
    return p2
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/po;->B:Ljava/lang/String;

    const-string v0, "\\*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p2

    const-string p2, ","

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string p2, "lac"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const-string p2, "cellid"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    const-string p2, "signal"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    aget-object p0, p0, p1

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/lang/String;)[B
    .locals 6

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v2, v1, [B

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    array-length v4, v0

    if-eq v4, v1, :cond_1

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    const-string v5, "0"

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    aget-object v4, v0, v1

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    :cond_2
    aget-object v4, v0, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getMacBa "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Req"

    invoke-static {v0, v1, p1}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "00:00:00:00:00:00"

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;)[B

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/po;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/po;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/po;->A:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "</"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object p0, p0, Lcom/amap/api/col/l3s/po;->A:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZZLcom/amap/api/col/l3s/qt;Lcom/amap/api/col/l3s/pk;Landroid/net/ConnectivityManager;Ljava/lang/String;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->d()I

    move-result v5

    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->K:Ljava/lang/String;

    if-nez p3, :cond_0

    const-string v0, "UC_nlp_20131029"

    const-string v6, "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U"

    goto :goto_0

    :cond_0
    const-string v0, "api_serverSDK_130905"

    const-string v6, "S128DF1572465B890OE3F7A13167KLEI"

    :goto_0
    move-object v7, v6

    move-object v6, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v2, Lcom/amap/api/col/l3s/qt;->a:I

    and-int/lit8 v10, v9, 0x3

    iget-object v11, v2, Lcom/amap/api/col/l3s/qt;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual/range {p4 .. p4}, Lcom/amap/api/col/l3s/qt;->b()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lcom/amap/api/col/l3s/qt;->c()Ljava/util/ArrayList;

    move-result-object v13

    iget-object v0, v3, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const/4 v15, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v3, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    iget-object v15, v3, Lcom/amap/api/col/l3s/pk;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    move-object v15, v0

    :goto_1
    const-string v16, "1"

    const/4 v14, 0x2

    const-string v2, "0"

    if-ne v10, v14, :cond_3

    move-object/from16 v17, v16

    goto :goto_2

    :cond_3
    move-object/from16 v17, v2

    :goto_2
    const-string v14, "Aps"

    if-eqz v11, :cond_7

    sget-object v0, Lcom/amap/api/col/l3s/pq;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3s/iy;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3s/pq;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move/from16 v18, v5

    const-string v5, "getApsReq part4"

    invoke-static {v0, v14, v5}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    :goto_3
    move/from16 v18, v5

    :goto_4
    sget-object v0, Lcom/amap/api/col/l3s/pq;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v5, "888888888888888"

    move-object/from16 v19, v4

    const/16 v4, 0x1d

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v4, :cond_5

    sput-object v5, Lcom/amap/api/col/l3s/pq;->e:Ljava/lang/String;

    :cond_5
    sget-object v0, Lcom/amap/api/col/l3s/pq;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3s/iy;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3s/pq;->f:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    const-string v4, "getApsReq part2"

    invoke-static {v0, v14, v4}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :cond_6
    :goto_5
    sget-object v0, Lcom/amap/api/col/l3s/pq;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ge v0, v4, :cond_8

    sput-object v5, Lcom/amap/api/col/l3s/pq;->f:Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object/from16 v19, v4

    move/from16 v18, v5

    :cond_8
    :goto_6
    :try_start_2
    invoke-virtual/range {p6 .. p6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v0

    const-string v0, "getApsReq part"

    invoke-static {v4, v14, v0}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_7
    invoke-virtual/range {p5 .. p6}, Lcom/amap/api/col/l3s/pk;->a(Landroid/net/ConnectivityManager;)Z

    move-result v4

    invoke-static {v0}, Lcom/amap/api/col/l3s/pu;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v5, -0x1

    const-string v14, ""

    if-eq v0, v5, :cond_a

    invoke-static {v11}, Lcom/amap/api/col/l3s/pu;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_9

    const-string v16, "2"

    :cond_9
    move-object/from16 v5, v16

    goto :goto_8

    :cond_a
    move-object v0, v14

    move-object v5, v0

    :goto_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    move-object/from16 v16, v5

    const-string v5, "*"

    move-object/from16 v20, v0

    const-string v0, ","

    move-object/from16 p6, v14

    if-nez v11, :cond_10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "</signal>"

    move-object/from16 v21, v2

    const-string v2, "<signal>"

    move-object/from16 v22, v7

    const-string v7, "</mcc>"

    move-object/from16 v23, v6

    const-string v6, "<mcc>"

    move-object/from16 v24, v15

    const/4 v15, 0x1

    if-eq v10, v15, :cond_d

    const/4 v15, 0x2

    if-eq v10, v15, :cond_b

    move-object/from16 v2, p6

    :goto_9
    move/from16 v25, v4

    goto/16 :goto_b

    :cond_b
    const/4 v10, 0x0

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amap/api/col/l3s/qs;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    invoke-virtual {v11, v10, v15}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/amap/api/col/l3s/qs;->a:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<sid>"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/amap/api/col/l3s/qs;->g:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "</sid>"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<nid>"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/amap/api/col/l3s/qs;->h:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "</nid>"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<bid>"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/amap/api/col/l3s/qs;->i:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "</bid>"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/amap/api/col/l3s/qs;->f:I

    if-lez v6, :cond_c

    iget v6, v12, Lcom/amap/api/col/l3s/qs;->e:I

    if-lez v6, :cond_c

    const-string v6, "<lon>"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/amap/api/col/l3s/qs;->f:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "</lon>"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<lat>"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/amap/api/col/l3s/qs;->e:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "</lat>"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/amap/api/col/l3s/qs;->j:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/amap/api/col/l3s/qs;

    move/from16 v25, v4

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v11, v10, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v15, Lcom/amap/api/col/l3s/qs;->a:I

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<mnc>"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v15, Lcom/amap/api/col/l3s/qs;->b:I

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</mnc>"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<lac>"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v15, Lcom/amap/api/col/l3s/qs;->c:I

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</lac>"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<cellid>"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v15, Lcom/amap/api/col/l3s/qs;->d:I

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</cellid>"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lcom/amap/api/col/l3s/qs;->j:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    :goto_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_f

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/col/l3s/qs;

    iget v7, v6, Lcom/amap/api/col/l3s/qs;->c:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v6, Lcom/amap/api/col/l3s/qs;->d:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/amap/api/col/l3s/qs;->j:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v4, v6, :cond_e

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_f
    :goto_b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v11, v6, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_10
    move-object/from16 v21, v2

    move/from16 v25, v4

    move-object/from16 v23, v6

    move-object/from16 v22, v7

    move-object/from16 v24, v15

    move-object/from16 v2, p6

    :goto_c
    and-int/lit8 v4, v9, 0x4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_11

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->C:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->C:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_d

    :cond_11
    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->C:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, v3, Lcom/amap/api/col/l3s/pk;->q:Z

    if-eqz v6, :cond_16

    if-eqz v25, :cond_15

    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/col/l3s/pk;->b()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/col/l3s/pk;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    const/16 v7, -0x80

    if-ge v6, v7, :cond_12

    :goto_e
    const/4 v6, 0x0

    goto :goto_f

    :cond_12
    const/16 v7, 0x7f

    if-le v6, v7, :cond_13

    goto :goto_e

    :cond_13
    :goto_f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x20

    :try_start_3
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    const-string v7, "UTF-8"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_10

    :catch_1
    move v3, v6

    :goto_10
    if-lt v3, v6, :cond_14

    const-string v0, "unkwn"

    :cond_14
    const-string v3, "."

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    if-eqz v24, :cond_17

    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->F:Ljava/util/ArrayList;

    move-object/from16 v14, v24

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    :cond_16
    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/col/l3s/pk;->a()V

    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_17
    :goto_11
    const/4 v0, 0x0

    iput-short v0, v1, Lcom/amap/api/col/l3s/po;->b:S

    if-nez p2, :cond_18

    const/4 v3, 0x2

    or-int/2addr v3, v0

    int-to-short v0, v3

    iput-short v0, v1, Lcom/amap/api/col/l3s/po;->b:S

    :cond_18
    move-object/from16 v3, v23

    iput-object v3, v1, Lcom/amap/api/col/l3s/po;->c:Ljava/lang/String;

    move-object/from16 v6, v22

    iput-object v6, v1, Lcom/amap/api/col/l3s/po;->d:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "android"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->g:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3s/pu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->h:Ljava/lang/String;

    move-object/from16 v3, v17

    iput-object v3, v1, Lcom/amap/api/col/l3s/po;->i:Ljava/lang/String;

    move-object/from16 v3, v21

    iput-object v3, v1, Lcom/amap/api/col/l3s/po;->j:Ljava/lang/String;

    iput-object v3, v1, Lcom/amap/api/col/l3s/po;->k:Ljava/lang/String;

    iput-object v3, v1, Lcom/amap/api/col/l3s/po;->l:Ljava/lang/String;

    iput-object v3, v1, Lcom/amap/api/col/l3s/po;->m:Ljava/lang/String;

    iput-object v3, v1, Lcom/amap/api/col/l3s/po;->n:Ljava/lang/String;

    move-object/from16 v3, v19

    iput-object v3, v1, Lcom/amap/api/col/l3s/po;->o:Ljava/lang/String;

    sget-object v0, Lcom/amap/api/col/l3s/pq;->e:Ljava/lang/String;

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->p:Ljava/lang/String;

    sget-object v0, Lcom/amap/api/col/l3s/pq;->f:Ljava/lang/String;

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->q:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->s:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3s/pu;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->t:Ljava/lang/String;

    const-string v0, "4.9.0"

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->v:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/amap/api/col/l3s/po;->w:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->u:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->x:Ljava/lang/String;

    move-object/from16 v14, v16

    iput-object v14, v1, Lcom/amap/api/col/l3s/po;->y:Ljava/lang/String;

    iput v9, v1, Lcom/amap/api/col/l3s/po;->z:I

    iput-object v2, v1, Lcom/amap/api/col/l3s/po;->A:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->B:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lcom/amap/api/col/l3s/qt;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->D:Ljava/lang/String;

    invoke-static {}, Lcom/amap/api/col/l3s/pk;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->G:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->E:Ljava/lang/String;

    :try_start_4
    sget-object v0, Lcom/amap/api/col/l3s/po;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3s/iy;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3s/po;->J:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_19
    :try_start_5
    sget-object v0, Lcom/amap/api/col/l3s/po;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3s/iy;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3s/po;->L:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_1a
    :try_start_6
    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3s/iy;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->N:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    :cond_1b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a()[B
    .locals 22

    move-object/from16 v1, p0

    const-string v2, "Req"

    const/16 v0, 0x1c

    new-array v3, v0, [Ljava/lang/String;

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->a:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->c:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->d:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->e:Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->f:Ljava/lang/String;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->g:Ljava/lang/String;

    const/4 v10, 0x5

    aput-object v4, v3, v10

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->h:Ljava/lang/String;

    const/4 v10, 0x6

    aput-object v4, v3, v10

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->i:Ljava/lang/String;

    const/4 v10, 0x7

    aput-object v4, v3, v10

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->l:Ljava/lang/String;

    const/16 v10, 0x8

    aput-object v4, v3, v10

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->m:Ljava/lang/String;

    const/16 v11, 0x9

    aput-object v4, v3, v11

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->n:Ljava/lang/String;

    const/16 v11, 0xa

    aput-object v4, v3, v11

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->o:Ljava/lang/String;

    const/16 v11, 0xb

    aput-object v4, v3, v11

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->p:Ljava/lang/String;

    const/16 v11, 0xc

    aput-object v4, v3, v11

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->q:Ljava/lang/String;

    const/16 v11, 0xd

    aput-object v4, v3, v11

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->r:Ljava/lang/String;

    const/16 v11, 0xe

    aput-object v4, v3, v11

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->s:Ljava/lang/String;

    const/16 v11, 0xf

    aput-object v4, v3, v11

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->t:Ljava/lang/String;

    const/16 v11, 0x10

    aput-object v4, v3, v11

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->u:Ljava/lang/String;

    const/16 v11, 0x11

    aput-object v4, v3, v11

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->v:Ljava/lang/String;

    const/16 v12, 0x12

    aput-object v4, v3, v12

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->w:Ljava/lang/String;

    const/16 v12, 0x13

    aput-object v4, v3, v12

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->x:Ljava/lang/String;

    const/16 v12, 0x14

    aput-object v4, v3, v12

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->A:Ljava/lang/String;

    const/16 v12, 0x15

    aput-object v4, v3, v12

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->B:Ljava/lang/String;

    const/16 v12, 0x16

    aput-object v4, v3, v12

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->E:Ljava/lang/String;

    const/16 v12, 0x17

    aput-object v4, v3, v12

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->G:Ljava/lang/String;

    const/16 v12, 0x18

    aput-object v4, v3, v12

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->H:Ljava/lang/String;

    const/16 v12, 0x19

    aput-object v4, v3, v12

    sget-object v4, Lcom/amap/api/col/l3s/po;->J:Ljava/lang/String;

    const/16 v13, 0x1a

    aput-object v4, v3, v13

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->N:Ljava/lang/String;

    const/16 v13, 0x1b

    aput-object v4, v3, v13

    move v4, v5

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v13, v3, v4

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, ""

    aput-object v13, v3, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "2"

    const-string v4, "0"

    if-eqz v0, :cond_2

    :goto_1
    iput-object v4, v1, Lcom/amap/api/col/l3s/po;->j:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->j:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->j:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v13, "1"

    if-eqz v0, :cond_4

    :goto_3
    iput-object v4, v1, Lcom/amap/api/col/l3s/po;->k:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->k:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->k:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_5
    iput-object v4, v1, Lcom/amap/api/col/l3s/po;->y:Ljava/lang/String;

    goto :goto_6

    :cond_6
    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->y:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->y:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    :goto_6
    iget v0, v1, Lcom/amap/api/col/l3s/po;->z:I

    invoke-static {v0}, Lcom/amap/api/col/l3s/qt;->a(I)Z

    move-result v0

    if-nez v0, :cond_8

    iput v5, v1, Lcom/amap/api/col/l3s/po;->z:I

    :cond_8
    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->I:[B

    if-nez v0, :cond_9

    new-array v0, v5, [B

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->I:[B

    :cond_9
    new-array v3, v7, [B

    new-array v13, v9, [B

    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->I:[B

    const/16 v14, 0x1000

    if-eqz v0, :cond_a

    array-length v0, v0

    add-int/2addr v0, v6

    add-int/2addr v14, v0

    :cond_a
    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->O:[B

    if-eqz v0, :cond_b

    iget v15, v1, Lcom/amap/api/col/l3s/po;->P:I

    if-le v14, v15, :cond_c

    :cond_b
    new-array v0, v14, [B

    iput-object v0, v1, Lcom/amap/api/col/l3s/po;->O:[B

    iput v14, v1, Lcom/amap/api/col/l3s/po;->P:I

    :cond_c
    move-object v14, v0

    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/col/l3s/pu;->e(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v14, v5

    iget-short v0, v1, Lcom/amap/api/col/l3s/po;->b:S

    const/4 v15, 0x0

    invoke-static {v0, v15}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v0

    array-length v15, v0

    invoke-static {v0, v5, v14, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v6

    iget-object v15, v1, Lcom/amap/api/col/l3s/po;->c:Ljava/lang/String;

    invoke-static {v15, v14, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v15, v1, Lcom/amap/api/col/l3s/po;->d:Ljava/lang/String;

    invoke-static {v15, v14, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v15, v1, Lcom/amap/api/col/l3s/po;->o:Ljava/lang/String;

    invoke-static {v15, v14, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v15, v1, Lcom/amap/api/col/l3s/po;->e:Ljava/lang/String;

    invoke-static {v15, v14, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v15, v1, Lcom/amap/api/col/l3s/po;->f:Ljava/lang/String;

    invoke-static {v15, v14, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v15, v1, Lcom/amap/api/col/l3s/po;->g:Ljava/lang/String;

    invoke-static {v15, v14, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v15, v1, Lcom/amap/api/col/l3s/po;->u:Ljava/lang/String;

    invoke-static {v15, v14, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v15, v1, Lcom/amap/api/col/l3s/po;->h:Ljava/lang/String;

    invoke-static {v15, v14, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v15, v1, Lcom/amap/api/col/l3s/po;->p:Ljava/lang/String;

    invoke-static {v15, v14, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v15, v1, Lcom/amap/api/col/l3s/po;->q:Ljava/lang/String;

    invoke-static {v15, v14, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;[BI)I

    move-result v15

    :try_start_0
    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    aput-byte v5, v14, v15

    goto :goto_7

    :cond_d
    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->t:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v14, v15

    add-int/lit8 v15, v15, 0x1

    array-length v11, v0

    invoke-static {v0, v5, v14, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v15, v0

    goto :goto_8

    :catchall_0
    move-exception v0

    const-string v11, "buildV4Dot219"

    invoke-static {v0, v2, v11}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v5, v14, v15

    :goto_7
    add-int/2addr v15, v6

    :goto_8
    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->v:Ljava/lang/String;

    invoke-static {v0, v14, v15}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/amap/api/col/l3s/po;->w:Ljava/lang/String;

    invoke-static {v11, v14, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;[BI)I

    move-result v0

    sget-object v11, Lcom/amap/api/col/l3s/po;->J:Ljava/lang/String;

    invoke-static {v11, v14, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;[BI)I

    move-result v0

    sget-object v11, Lcom/amap/api/col/l3s/po;->L:Ljava/lang/String;

    invoke-static {v11, v14, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/amap/api/col/l3s/po;->x:Ljava/lang/String;

    invoke-static {v11, v14, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;[BI)I

    move-result v0

    iget-object v11, v1, Lcom/amap/api/col/l3s/po;->y:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v11

    aput-byte v11, v14, v0

    add-int/2addr v0, v6

    iget-object v11, v1, Lcom/amap/api/col/l3s/po;->j:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v11

    aput-byte v11, v14, v0

    add-int/2addr v0, v6

    iget v11, v1, Lcom/amap/api/col/l3s/po;->z:I

    and-int/lit8 v15, v11, 0x3

    int-to-byte v11, v11

    aput-byte v11, v14, v0

    add-int/2addr v0, v6

    const/16 v11, -0x80

    const/16 v12, 0x7f

    if-eq v15, v6, :cond_e

    if-ne v15, v7, :cond_17

    :cond_e
    const-string v8, "mcc"

    invoke-direct {v1, v8}, Lcom/amap/api/col/l3s/po;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amap/api/col/l3s/pu;->b(Ljava/lang/String;)[B

    move-result-object v8

    array-length v9, v8

    invoke-static {v8, v5, v14, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v8

    add-int/2addr v0, v8

    const-string v8, "cellid"

    const-string v9, "lac"

    if-ne v15, v6, :cond_f

    const-string v10, "mnc"

    invoke-direct {v1, v10}, Lcom/amap/api/col/l3s/po;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/amap/api/col/l3s/pu;->b(Ljava/lang/String;)[B

    move-result-object v10

    array-length v6, v10

    invoke-static {v10, v5, v14, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v10

    add-int/2addr v0, v6

    invoke-direct {v1, v9}, Lcom/amap/api/col/l3s/po;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/col/l3s/pu;->b(Ljava/lang/String;)[B

    move-result-object v6

    array-length v10, v6

    invoke-static {v6, v5, v14, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v0, v6

    invoke-direct {v1, v8}, Lcom/amap/api/col/l3s/po;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/col/l3s/pu;->c(Ljava/lang/String;)[B

    move-result-object v6

    array-length v10, v6

    invoke-static {v6, v5, v14, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    :goto_9
    add-int/2addr v0, v6

    goto :goto_a

    :cond_f
    if-ne v15, v7, :cond_10

    const-string v6, "sid"

    invoke-direct {v1, v6}, Lcom/amap/api/col/l3s/po;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/col/l3s/pu;->b(Ljava/lang/String;)[B

    move-result-object v6

    array-length v10, v6

    invoke-static {v6, v5, v14, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v0, v6

    const-string v6, "nid"

    invoke-direct {v1, v6}, Lcom/amap/api/col/l3s/po;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/col/l3s/pu;->b(Ljava/lang/String;)[B

    move-result-object v6

    array-length v10, v6

    invoke-static {v6, v5, v14, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v0, v6

    const-string v6, "bid"

    invoke-direct {v1, v6}, Lcom/amap/api/col/l3s/po;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/col/l3s/pu;->b(Ljava/lang/String;)[B

    move-result-object v6

    array-length v10, v6

    invoke-static {v6, v5, v14, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v0, v6

    const-string v6, "lon"

    invoke-direct {v1, v6}, Lcom/amap/api/col/l3s/po;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/col/l3s/pu;->c(Ljava/lang/String;)[B

    move-result-object v6

    array-length v10, v6

    invoke-static {v6, v5, v14, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v0, v6

    const-string v6, "lat"

    invoke-direct {v1, v6}, Lcom/amap/api/col/l3s/po;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/col/l3s/pu;->c(Ljava/lang/String;)[B

    move-result-object v6

    array-length v10, v6

    invoke-static {v6, v5, v14, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    goto :goto_9

    :cond_10
    :goto_a
    const-string v6, "signal"

    invoke-direct {v1, v6}, Lcom/amap/api/col/l3s/po;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-le v10, v12, :cond_11

    :goto_b
    move v10, v5

    goto :goto_c

    :cond_11
    if-ge v10, v11, :cond_12

    goto :goto_b

    :cond_12
    :goto_c
    int-to-byte v10, v10

    aput-byte v10, v14, v0

    const/4 v10, 0x1

    add-int/2addr v0, v10

    invoke-static {v5, v3}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v11

    array-length v12, v11

    invoke-static {v11, v5, v14, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v7

    if-ne v15, v10, :cond_16

    iget-object v10, v1, Lcom/amap/api/col/l3s/po;->B:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_13

    aput-byte v5, v14, v0

    goto :goto_10

    :cond_13
    iget-object v10, v1, Lcom/amap/api/col/l3s/po;->B:Ljava/lang/String;

    const-string v11, "\\*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    int-to-byte v11, v10

    aput-byte v11, v14, v0

    add-int/lit8 v0, v0, 0x1

    move v11, v5

    :goto_d
    if-ge v11, v10, :cond_17

    invoke-direct {v1, v9, v11}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amap/api/col/l3s/pu;->b(Ljava/lang/String;)[B

    move-result-object v12

    array-length v15, v12

    invoke-static {v12, v5, v14, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v12, v12

    add-int/2addr v0, v12

    invoke-direct {v1, v8, v11}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amap/api/col/l3s/pu;->c(Ljava/lang/String;)[B

    move-result-object v12

    array-length v15, v12

    invoke-static {v12, v5, v14, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v12, v12

    add-int/2addr v0, v12

    invoke-direct {v1, v6, v11}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/16 v15, 0x7f

    if-le v12, v15, :cond_14

    :goto_e
    move v12, v5

    goto :goto_f

    :cond_14
    const/16 v15, -0x80

    if-ge v12, v15, :cond_15

    goto :goto_e

    :cond_15
    :goto_f
    int-to-byte v12, v12

    aput-byte v12, v14, v0

    const/4 v12, 0x1

    add-int/2addr v0, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_16
    if-ne v15, v7, :cond_17

    aput-byte v5, v14, v0

    :goto_10
    add-int/lit8 v0, v0, 0x1

    :cond_17
    iget-object v6, v1, Lcom/amap/api/col/l3s/po;->D:Ljava/lang/String;

    const-string v8, "GBK"

    if-eqz v6, :cond_18

    iget v9, v1, Lcom/amap/api/col/l3s/po;->z:I

    const/16 v10, 0x8

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_18

    :try_start_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v9, v6

    const/16 v10, 0x3c

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-byte v10, v9

    aput-byte v10, v14, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v6, v5, v14, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v0, v9

    goto :goto_11

    :catch_0
    :cond_18
    aput-byte v5, v14, v0

    const/4 v6, 0x1

    add-int/2addr v0, v6

    :goto_11
    iget-object v6, v1, Lcom/amap/api/col/l3s/po;->C:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, v1, Lcom/amap/api/col/l3s/po;->z:I

    const/4 v11, 0x4

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_27

    if-lez v9, :cond_27

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/api/col/l3s/qs;

    iget-boolean v10, v10, Lcom/amap/api/col/l3s/qs;->p:Z

    if-nez v10, :cond_19

    add-int/lit8 v9, v9, -0x1

    :cond_19
    int-to-byte v10, v9

    aput-byte v10, v14, v0

    const/4 v10, 0x1

    add-int/2addr v0, v10

    move v11, v5

    :goto_12
    if-ge v11, v9, :cond_26

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amap/api/col/l3s/qs;

    iget-boolean v15, v12, Lcom/amap/api/col/l3s/qs;->p:Z

    if-eqz v15, :cond_24

    iget v15, v12, Lcom/amap/api/col/l3s/qs;->k:I

    if-eq v15, v10, :cond_1c

    const/4 v10, 0x3

    if-eq v15, v10, :cond_1c

    const/4 v10, 0x4

    if-ne v15, v10, :cond_1a

    goto :goto_13

    :cond_1a
    if-ne v15, v7, :cond_1e

    int-to-byte v10, v15

    iget-boolean v15, v12, Lcom/amap/api/col/l3s/qs;->n:Z

    if-eqz v15, :cond_1b

    or-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    :cond_1b
    aput-byte v10, v14, v0

    add-int/lit8 v0, v0, 0x1

    iget v10, v12, Lcom/amap/api/col/l3s/qs;->a:I

    invoke-static {v10, v3}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v10

    array-length v15, v10

    invoke-static {v10, v5, v14, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v12, Lcom/amap/api/col/l3s/qs;->g:I

    invoke-static {v10, v3}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v10

    array-length v15, v10

    invoke-static {v10, v5, v14, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v12, Lcom/amap/api/col/l3s/qs;->h:I

    invoke-static {v10, v3}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v10

    array-length v15, v10

    invoke-static {v10, v5, v14, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v12, Lcom/amap/api/col/l3s/qs;->i:I

    invoke-static {v10, v3}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v10

    array-length v15, v10

    invoke-static {v10, v5, v14, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v12, Lcom/amap/api/col/l3s/qs;->f:I

    invoke-static {v10, v13}, Lcom/amap/api/col/l3s/pu;->b(I[B)[B

    move-result-object v10

    array-length v15, v10

    invoke-static {v10, v5, v14, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v12, Lcom/amap/api/col/l3s/qs;->e:I

    invoke-static {v10, v13}, Lcom/amap/api/col/l3s/pu;->b(I[B)[B

    move-result-object v10

    array-length v15, v10

    invoke-static {v10, v5, v14, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    goto :goto_14

    :cond_1c
    :goto_13
    iget v10, v12, Lcom/amap/api/col/l3s/qs;->k:I

    int-to-byte v10, v10

    iget-boolean v15, v12, Lcom/amap/api/col/l3s/qs;->n:Z

    if-eqz v15, :cond_1d

    or-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    :cond_1d
    aput-byte v10, v14, v0

    add-int/lit8 v0, v0, 0x1

    iget v10, v12, Lcom/amap/api/col/l3s/qs;->a:I

    invoke-static {v10, v3}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v10

    array-length v15, v10

    invoke-static {v10, v5, v14, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v12, Lcom/amap/api/col/l3s/qs;->b:I

    invoke-static {v10, v3}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v10

    array-length v15, v10

    invoke-static {v10, v5, v14, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v12, Lcom/amap/api/col/l3s/qs;->c:I

    invoke-static {v10, v3}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v10

    array-length v15, v10

    invoke-static {v10, v5, v14, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    iget v10, v12, Lcom/amap/api/col/l3s/qs;->d:I

    invoke-static {v10, v13}, Lcom/amap/api/col/l3s/pu;->b(I[B)[B

    move-result-object v10

    array-length v15, v10

    invoke-static {v10, v5, v14, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    :goto_14
    add-int/2addr v0, v10

    :cond_1e
    iget v10, v12, Lcom/amap/api/col/l3s/qs;->j:I

    const/16 v15, 0x7f

    if-le v10, v15, :cond_1f

    :goto_15
    const/16 v10, 0x63

    goto :goto_16

    :cond_1f
    const/16 v15, -0x80

    if-ge v10, v15, :cond_20

    goto :goto_15

    :cond_20
    :goto_16
    int-to-byte v10, v10

    aput-byte v10, v14, v0

    const/4 v10, 0x1

    add-int/2addr v0, v10

    iget-short v10, v12, Lcom/amap/api/col/l3s/qs;->l:S

    invoke-static {v10, v3}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v10

    array-length v15, v10

    invoke-static {v10, v5, v14, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    const-string v10, "5.1"

    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    cmpl-double v10, v18, v20

    if-ltz v10, :cond_24

    iget v10, v12, Lcom/amap/api/col/l3s/qs;->k:I

    const/4 v15, 0x3

    if-eq v10, v15, :cond_21

    const/4 v15, 0x4

    if-ne v10, v15, :cond_25

    goto :goto_17

    :cond_21
    const/4 v15, 0x4

    :goto_17
    iget v10, v12, Lcom/amap/api/col/l3s/qs;->o:I

    const/16 v12, 0x7fff

    if-le v10, v12, :cond_22

    move v10, v12

    :cond_22
    if-gez v10, :cond_23

    goto :goto_18

    :cond_23
    move v12, v10

    :goto_18
    invoke-static {v12, v3}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v10

    array-length v12, v10

    invoke-static {v10, v5, v14, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v0, v10

    goto :goto_19

    :cond_24
    const/4 v15, 0x4

    :cond_25
    :goto_19
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x1

    goto/16 :goto_12

    :cond_26
    move v6, v10

    goto :goto_1a

    :cond_27
    aput-byte v5, v14, v0

    const/4 v6, 0x1

    add-int/2addr v0, v6

    :goto_1a
    iget-object v9, v1, Lcom/amap/api/col/l3s/po;->E:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_28

    aput-byte v5, v14, v0

    add-int/2addr v0, v6

    move v2, v6

    goto/16 :goto_1f

    :cond_28
    aput-byte v6, v14, v0

    add-int/lit8 v9, v0, 0x1

    :try_start_2
    iget-object v0, v1, Lcom/amap/api/col/l3s/po;->E:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v0, v6, v5

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v10, v0

    invoke-static {v0, v5, v14, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/2addr v9, v0

    :try_start_3
    aget-object v0, v6, v7

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v10, v0

    const/16 v11, 0x7f

    if-le v10, v11, :cond_29

    const/16 v10, 0x7f

    :cond_29
    int-to-byte v11, v10

    aput-byte v11, v14, v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v0, v5, v14, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/2addr v9, v10

    goto :goto_1b

    :catchall_1
    move-exception v0

    :try_start_4
    const-string v10, "buildV4Dot214"

    invoke-static {v0, v2, v10}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v5, v14, v9

    add-int/lit8 v9, v9, 0x1

    :goto_1b
    const/4 v10, 0x1

    aget-object v0, v6, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0x7f

    if-le v0, v6, :cond_2a

    :goto_1c
    move v0, v5

    goto :goto_1d

    :cond_2a
    const/16 v6, -0x80

    if-ge v0, v6, :cond_2b

    goto :goto_1c

    :cond_2b
    :goto_1d
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v14, v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v2, 0x1

    goto :goto_1e

    :catchall_2
    move-exception v0

    const-string v6, "buildV4Dot216"

    invoke-static {v0, v2, v6}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "00:00:00:00:00:00"

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v5, v14, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v9, v0

    aput-byte v5, v14, v9

    const/4 v2, 0x1

    add-int/2addr v9, v2

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v14, v9

    :goto_1e
    add-int/lit8 v0, v9, 0x1

    :goto_1f
    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->F:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v9, 0x19

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-nez v6, :cond_2c

    aput-byte v5, v14, v0

    add-int/2addr v0, v2

    move-object v13, v8

    goto/16 :goto_24

    :cond_2c
    int-to-byte v9, v6

    aput-byte v9, v14, v0

    add-int/2addr v0, v2

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->c()I

    move-result v2

    const/16 v9, 0x11

    if-lt v2, v9, :cond_2d

    const/4 v2, 0x1

    goto :goto_20

    :cond_2d
    move v2, v5

    :goto_20
    const-wide/16 v9, 0x0

    if-eqz v2, :cond_2e

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    :cond_2e
    move v11, v5

    :goto_21
    if-ge v11, v6, :cond_34

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/ScanResult;

    iget-object v13, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    invoke-static {v13, v5, v14, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13

    add-int/2addr v0, v13

    :try_start_5
    iget-object v13, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    int-to-byte v15, v15

    aput-byte v15, v14, v0

    add-int/lit8 v0, v0, 0x1

    array-length v15, v13

    invoke-static {v13, v5, v14, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    add-int/2addr v0, v13

    const/4 v13, 0x1

    goto :goto_22

    :catch_1
    aput-byte v5, v14, v0

    const/4 v13, 0x1

    add-int/2addr v0, v13

    :goto_22
    iget v15, v12, Landroid/net/wifi/ScanResult;->level:I

    const/16 v7, 0x7f

    if-le v15, v7, :cond_2f

    move v15, v5

    const/16 v7, -0x80

    goto :goto_23

    :cond_2f
    const/16 v7, -0x80

    if-ge v15, v7, :cond_30

    move v15, v5

    :cond_30
    :goto_23
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v15

    aput-byte v15, v14, v0

    add-int/2addr v0, v13

    move-object v13, v8

    if-eqz v2, :cond_31

    iget-wide v7, v12, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/32 v16, 0xf4240

    div-long v7, v7, v16

    const-wide/16 v16, 0x1

    add-long v7, v7, v16

    sub-long v7, v9, v7

    long-to-int v7, v7

    if-gez v7, :cond_32

    :cond_31
    move v7, v5

    :cond_32
    const v8, 0xffff

    if-le v7, v8, :cond_33

    const v7, 0xffff

    :cond_33
    invoke-static {v7, v3}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v7

    array-length v8, v7

    invoke-static {v7, v5, v14, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7

    add-int/2addr v0, v7

    iget v7, v12, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v7, v3}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v7

    array-length v8, v7

    invoke-static {v7, v5, v14, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7

    add-int/2addr v0, v7

    add-int/lit8 v11, v11, 0x1

    move-object v8, v13

    const/4 v7, 0x2

    goto :goto_21

    :cond_34
    move-object v13, v8

    iget-object v2, v1, Lcom/amap/api/col/l3s/po;->G:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v3}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v2

    array-length v4, v2

    invoke-static {v2, v5, v14, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    :goto_24
    aput-byte v5, v14, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    :try_start_6
    iget-object v2, v1, Lcom/amap/api/col/l3s/po;->H:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v4, v2

    const/16 v6, 0x7f

    if-le v4, v6, :cond_35

    const/4 v2, 0x0

    :cond_35
    if-nez v2, :cond_36

    aput-byte v5, v14, v0

    const/4 v2, 0x1

    goto :goto_25

    :cond_36
    array-length v4, v2

    int-to-byte v4, v4

    aput-byte v4, v14, v0

    add-int/lit8 v0, v0, 0x1

    array-length v4, v2

    invoke-static {v2, v5, v14, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    add-int/2addr v0, v2

    goto :goto_26

    :catchall_3
    aput-byte v5, v14, v0

    const/4 v2, 0x1

    :goto_25
    add-int/2addr v0, v2

    :goto_26
    const/4 v2, 0x2

    new-array v4, v2, [B

    fill-array-data v4, :array_0

    :try_start_7
    iget-object v2, v1, Lcom/amap/api/col/l3s/po;->K:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v4, v1, Lcom/amap/api/col/l3s/po;->K:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4, v3}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :cond_37
    const/4 v6, 0x2

    :try_start_8
    invoke-static {v4, v5, v14, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    add-int/2addr v0, v6

    if-nez v2, :cond_38

    :try_start_9
    iget-object v2, v1, Lcom/amap/api/col/l3s/po;->K:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v4, v2

    invoke-static {v2, v5, v14, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    add-int/2addr v0, v2

    :catchall_4
    :cond_38
    const/4 v2, 0x2

    goto :goto_28

    :catchall_5
    move v2, v6

    goto :goto_27

    :catchall_6
    const/4 v2, 0x2

    :goto_27
    add-int/2addr v0, v2

    :goto_28
    :try_start_a
    invoke-static {v5, v3}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v3

    invoke-static {v3, v5, v14, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    add-int/2addr v0, v2

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    :try_start_b
    invoke-static {v3, v5, v14, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :catchall_8
    add-int/2addr v0, v2

    iget-object v2, v1, Lcom/amap/api/col/l3s/po;->I:[B

    if-eqz v2, :cond_39

    array-length v2, v2

    goto :goto_29

    :cond_39
    move v2, v5

    :goto_29
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/amap/api/col/l3s/pu;->a(I[B)[B

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v5, v14, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v0, v3

    if-lez v2, :cond_3a

    iget-object v2, v1, Lcom/amap/api/col/l3s/po;->I:[B

    array-length v3, v2

    invoke-static {v2, v5, v14, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v1, Lcom/amap/api/col/l3s/po;->I:[B

    array-length v2, v2

    add-int/2addr v0, v2

    :cond_3a
    const-string v2, "5.1"

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_3b

    aput-byte v5, v14, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lcom/amap/api/col/l3s/po;->N:Ljava/lang/String;

    invoke-static {v1, v14, v0}, Lcom/amap/api/col/l3s/po;->a(Ljava/lang/String;[BI)I

    move-result v0

    :cond_3b
    new-array v1, v0, [B

    invoke-static {v14, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amap/api/col/l3s/pu;->a(J)[B

    move-result-object v2

    add-int/lit8 v3, v0, 0x8

    new-array v3, v3, [B

    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x8

    invoke-static {v2, v5, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method
