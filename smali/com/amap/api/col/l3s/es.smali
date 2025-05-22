.class public final Lcom/amap/api/col/l3s/es;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D
    .locals 10

    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v2, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double v2, v0, v2

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double v8, v4, v6

    iget-wide p0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v0, p0

    sub-double/2addr v4, v6

    mul-double/2addr v8, v0

    mul-double/2addr v4, v2

    sub-double/2addr v8, v4

    return-wide v8
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v2, v3, v0}, Lcom/amap/api/col/l3s/es;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v4

    invoke-static {v2, v3, v1}, Lcom/amap/api/col/l3s/es;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v6

    invoke-static/range {p0 .. p2}, Lcom/amap/api/col/l3s/es;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v8

    invoke-static {v0, v1, v3}, Lcom/amap/api/col/l3s/es;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v14, v4, v12

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-lez v14, :cond_0

    cmpg-double v17, v6, v12

    if-ltz v17, :cond_1

    :cond_0
    cmpg-double v4, v4, v12

    if-gez v4, :cond_4

    cmpl-double v4, v6, v12

    if-lez v4, :cond_4

    :cond_1
    cmpl-double v4, v8, v12

    if-lez v4, :cond_2

    cmpg-double v4, v10, v12

    if-ltz v4, :cond_3

    :cond_2
    cmpg-double v4, v8, v12

    if-gez v4, :cond_4

    cmpl-double v4, v10, v12

    if-lez v4, :cond_4

    :cond_3
    move/from16 v4, v16

    goto :goto_0

    :cond_4
    move v4, v15

    :goto_0
    if-eqz v4, :cond_5

    return v16

    :cond_5
    if-nez v14, :cond_6

    invoke-static {v2, v3, v0}, Lcom/amap/api/col/l3s/es;->b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v16

    :cond_6
    cmpl-double v4, v6, v12

    if-nez v4, :cond_7

    invoke-static {v2, v3, v1}, Lcom/amap/api/col/l3s/es;->b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v4

    if-eqz v4, :cond_7

    return v16

    :cond_7
    cmpl-double v4, v8, v12

    if-nez v4, :cond_8

    invoke-static/range {p0 .. p2}, Lcom/amap/api/col/l3s/es;->b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v16

    :cond_8
    cmpl-double v2, v10, v12

    if-nez v2, :cond_9

    invoke-static {v0, v1, v3}, Lcom/amap/api/col/l3s/es;->b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v16

    :cond_9
    return v15
.end method

.method private static b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z
    .locals 12

    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double v4, v0, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double v8, v2, v4

    cmpg-double v8, v8, v6

    if-gez v8, :cond_1

    goto :goto_1

    :cond_1
    move-wide v2, v4

    :goto_1
    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double v10, v4, v8

    cmpl-double v10, v10, v6

    if-lez v10, :cond_2

    goto :goto_2

    :cond_2
    move-wide v4, v8

    :goto_2
    iget-wide v8, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide p0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double v10, v8, p0

    cmpg-double v6, v10, v6

    if-gez v6, :cond_3

    goto :goto_3

    :cond_3
    move-wide v8, p0

    :goto_3
    iget-wide p0, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpg-double v2, v2, p0

    if-gtz v2, :cond_4

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_4

    iget-wide p0, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    cmpg-double p2, v8, p0

    if-gtz p2, :cond_4

    cmpg-double p0, p0, v4

    if-gtz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
