.class public Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/ky$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$AMapGridDownloadRequest;,
        Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;
    }
.end annotation


# static fields
.field private static final GET_METHOD:I = 0x0

.field private static final NETWORK_RESPONSE_CODE_STRING:Ljava/lang/String; = "\u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

.field private static mDiu:Ljava/lang/String;


# instance fields
.field private downloadManager:Lcom/amap/api/col/l3s/ky;

.field private volatile isCanceled:Z

.field mDataRequestParam:Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;

.field private mEngineID:I

.field mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

.field private mRequestCancel:Z

.field private requestMapDataPackageSize:J

.field private requestMapDataTimestamp:J


# direct methods
.method public constructor <init>(ILcom/autonavi/base/ae/gmap/GLMapEngine;Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mEngineID:I

    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->isCanceled:Z

    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mRequestCancel:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->requestMapDataTimestamp:J

    iput-wide v1, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->requestMapDataPackageSize:J

    iput-object p3, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mDataRequestParam:Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;

    iput p1, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mEngineID:I

    iput-object p2, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mRequestCancel:Z

    return-void
.end method

.method private generateQueryString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const-string v1, "&key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->sortReEncoderParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/amap/api/col/l3s/ix;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&ts="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&scode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lcom/amap/api/col/l3s/ix;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "&dip=16300"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getEncodeRequestParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    const-string p0, "UTF-8"

    invoke-static {p1, p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getNetworkFailedReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->isNetworkConnected()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "\u65e0\u7f51\u7edc"

    return-object p0

    :cond_0
    return-object p1
.end method

.method private sortReEncoderParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v1, v5

    invoke-direct {p0, v6}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->strReEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    return-object p1
.end method

.method private staticNetworkPerformance()V
    .locals 7

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->requestMapDataTimestamp:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->requestMapDataPackageSize:J

    invoke-static/range {v1 .. v6}, Lcom/amap/api/col/l3s/ev;->a(Landroid/content/Context;IJJ)V

    :cond_0
    return-void
.end method

.method private strReEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "AbstractProtocalHandler"

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string v0, "strReEncoderException"

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "strReEncoder"

    :goto_0
    invoke-static {p1, p0, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public doCancel()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mRequestCancel:Z

    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->downloadManager:Lcom/amap/api/col/l3s/ky;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->isCanceled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->downloadManager:Lcom/amap/api/col/l3s/ky;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->isCanceled:Z

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->downloadManager:Lcom/amap/api/col/l3s/ky;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ky;->a()V

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v2, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mEngineID:I

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mDataRequestParam:Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;

    iget-wide v3, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;->handler:J

    const/4 p0, 0x0

    invoke-virtual {v0, v2, v3, v4, p0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setMapLoaderToTask(IJLcom/autonavi/base/amap/mapcore/maploader/AMapLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    const-string v0, "AMapLoader"

    const-string v2, "doCancel"

    invoke-static {p0, v0, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_0
    return-void
.end method

.method public doRequest()V
    .locals 11

    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mRequestCancel:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mDataRequestParam:Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;

    iget-object v1, v0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;->requestBaseUrl:Ljava/lang/String;

    iget-object v0, v0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;->requestUrl:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, ";"

    invoke-direct {p0, v2}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->getEncodeRequestParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string v4, "http://m5.amap.com/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mDataRequestParam:Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;

    iget v5, v5, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;->nRequestType:I

    invoke-virtual {p0, v0, v4, v5}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->getRequestParams(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mDataRequestParam:Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;

    iget v5, v5, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;->nRequestType:I

    if-nez v5, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&csid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "csid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->generateQueryString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$AMapGridDownloadRequest;

    iget-object v4, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v4}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v6}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getUserAgent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v1, v6}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$AMapGridDownloadRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x7530

    invoke-virtual {v5, v1}, Lcom/amap/api/col/l3s/ld;->setConnectionTimeout(I)V

    invoke-virtual {v5, v1}, Lcom/amap/api/col/l3s/ld;->setSoTimeout(I)V

    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mDataRequestParam:Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;

    iget v1, v1, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;->nRequestType:I

    if-eqz v1, :cond_4

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$AMapGridDownloadRequest;->setPostEntityBytes([B)V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->requestMapDataTimestamp:J

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$AMapGridDownloadRequest;->getEntityBytes()[B

    move-result-object v0

    if-nez v0, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$AMapGridDownloadRequest;->getEntityBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    :goto_2
    iput-wide v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->requestMapDataPackageSize:J

    new-instance v0, Lcom/amap/api/col/l3s/ky;

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getProtocol()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    move v10, v2

    goto :goto_3

    :cond_6
    move v10, v3

    :goto_3
    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/amap/api/col/l3s/ky;-><init>(Lcom/amap/api/col/l3s/ld;JJZ)V

    iput-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->downloadManager:Lcom/amap/api/col/l3s/ky;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/ky;->a(Lcom/amap/api/col/l3s/ky$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->doCancel()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->onException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->doCancel()V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->doCancel()V

    throw v0
.end method

.method public getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/amap/api/col/l3s/iy;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getRequestParams(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 0

    sget-object p3, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mDiu:Ljava/lang/String;

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p3}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mDiu:Ljava/lang/String;

    :cond_0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, "&diu="

    if-eqz p2, :cond_1

    const-string p2, "&channel=amap7&div=GNaviMap"

    goto :goto_0

    :cond_1
    const-string p2, "&channel=amapapi"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&div=GNaviMap"

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p1, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mDiu:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onDownload([BJ)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mDataRequestParam:Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mEngineID:I

    iget-wide v2, p2, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;->handler:J

    array-length v5, p1

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->receiveNetData(IJ[BI)V

    :cond_0
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 7

    const-string v0, "UTF-8"

    const/4 v6, -0x1

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move v5, v6

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mDataRequestParam:Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mEngineID:I

    iget-wide v3, v1, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;->handler:J

    const/4 v6, -0x1

    move v1, v2

    move-wide v2, v3

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->netError(IJII)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->isNetworkConnected()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->getNetworkFailedReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lcom/amap/api/col/l3s/ev;->a(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_1

    :catchall_0
    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mDataRequestParam:Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mEngineID:I

    iget-wide v3, v0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;->handler:J

    const/4 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->netError(IJII)V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    const-string p0, "AMapLoader"

    const-string v0, "download onException"

    invoke-static {p1, p0, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/amap/api/col/l3s/fc;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "map loader exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish()V
    .locals 5

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mDataRequestParam:Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mEngineID:I

    iget-wide v3, v1, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;->handler:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->finishDownLoad(IJ)V

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->staticNetworkPerformance()V

    return-void
.end method

.method public onStop()V
    .locals 5

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mGLMapEngine:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mDataRequestParam:Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->mEngineID:I

    iget-wide v3, v1, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader$ADataRequestParam;->handler:J

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->netStop(IJI)V

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->staticNetworkPerformance()V

    return-void
.end method
