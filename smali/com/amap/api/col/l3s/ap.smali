.class public final Lcom/amap/api/col/l3s/ap;
.super Ljava/lang/Object;
.source ""


# static fields
.field static a:D = 3.141592653589793

.field public static b:D = 0.0

.field public static c:D = 0.0

.field private static d:Z = false

.field private static final e:[D

.field private static final f:[D

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lcom/amap/api/col/l3s/ap;->e:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_1

    sput-object v1, Lcom/amap/api/col/l3s/ap;->f:[D

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/amap/api/maps/model/LatLng;

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    const-wide v4, 0x4037614434e3369cL    # 23.379947

    const-wide v6, 0x405df072b4528284L    # 119.757001

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    const-wide v4, 0x4038fbb9496249a1L    # 24.983296

    const-wide v6, 0x405e1e5e2478854dL    # 120.474496

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    const-wide v4, 0x403984caf709b739L    # 25.518722

    const-wide v6, 0x405e57080b673c4fL    # 121.359866

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    aput-object v3, v2, v0

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    const-wide v3, 0x403969cd5f99c38bL    # 25.41329

    const-wide v5, 0x405e9c63a5c1c609L    # 122.443582

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x3

    aput-object v0, v2, v3

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    const-wide v3, 0x4038dcda6e75ff61L    # 24.862708

    const-wide v5, 0x405e92746455eaeeL    # 122.288354

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x4

    aput-object v0, v2, v3

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    const-wide v3, 0x403876173b85e80cL    # 24.461292

    const-wide v5, 0x405e8c0d6b228dcaL    # 122.188319

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x5

    aput-object v0, v2, v3

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    const-wide v3, 0x403595b2e59af9ecL    # 21.584761

    const-wide v5, 0x405e3e02d59d55e7L    # 120.968923

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x6

    aput-object v0, v2, v3

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    const-wide v3, 0x4035d4b1bbcf4e87L    # 21.830837

    const-wide v5, 0x405e29e26d4801f7L    # 120.654445

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x7

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/amap/api/col/l3s/ap;->g:Ljava/util/List;

    const-wide v0, 0x415854c140000000L    # 6378245.0

    sput-wide v0, Lcom/amap/api/col/l3s/ap;->b:D

    const-wide v0, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    sput-wide v0, Lcom/amap/api/col/l3s/ap;->c:D

    return-void

    :array_0
    .array-data 8
        0x4039934bb5e0f7fdL    # 25.575374
        0x405e1907f66e86c6L    # 120.391111
    .end array-data

    :array_1
    .array-data 8
        0x403567bd7b2031cfL    # 21.405235
        0x405e6989f83be660L    # 121.649046
    .end array-data
.end method

.method private static a(D)D
    .locals 4

    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double/2addr p0, v0

    sget-wide v0, Lcom/amap/api/col/l3s/ap;->a:D

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide v0, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method private static a(DD)D
    .locals 6

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    div-double v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x40d1940000000000L    # 18000.0

    div-double v4, p0, v4

    mul-double/2addr v2, v4

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide v0, 0x40c1940000000000L    # 9000.0

    div-double/2addr p2, v0

    mul-double/2addr p0, p2

    add-double/2addr v2, p0

    return-wide v2
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/l3s/eq;->a(DD)Z

    move-result p0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide p0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, p0, p1}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p0

    sget-boolean p1, Lcom/amap/api/col/l3s/ap;->d:Z

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/ap;->a(Lcom/autonavi/amap/mapcore/DPoint;Z)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p0

    new-instance p1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v3, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object p1
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 40

    move-object/from16 v1, p0

    if-eqz v1, :cond_2

    :try_start_0
    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/l3s/eq;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/l3s/ap;->d(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    new-instance v8, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v5, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object v8

    :cond_0
    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    sget-object v2, Lcom/amap/api/col/l3s/ap;->g:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/amap/api/col/l3s/ex;->a(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/l3s/ap;->d(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const-wide v6, 0x405a400000000000L    # 105.0

    sub-double v6, v4, v6

    const-wide v8, 0x4041800000000000L    # 35.0

    sub-double v8, v2, v8

    const-wide/high16 v10, -0x3fa7000000000000L    # -100.0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v14, v6, v12

    add-double/2addr v10, v14

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    mul-double v18, v8, v16

    add-double v10, v10, v18

    const-wide v18, 0x3fc999999999999aL    # 0.2

    mul-double v20, v8, v18

    mul-double v20, v20, v8

    add-double v10, v10, v20

    const-wide v20, 0x3fb999999999999aL    # 0.1

    mul-double v22, v6, v20

    mul-double v24, v22, v8

    add-double v10, v10, v24

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    mul-double v26, v26, v18

    add-double v10, v10, v26

    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    mul-double v18, v18, v6

    sget-wide v26, Lcom/amap/api/col/l3s/ap;->a:D

    mul-double v26, v26, v18

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    const-wide/high16 v28, 0x4034000000000000L    # 20.0

    mul-double v26, v26, v28

    sget-wide v30, Lcom/amap/api/col/l3s/ap;->a:D

    mul-double v30, v30, v14

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v30, v30, v28

    add-double v26, v26, v30

    mul-double v26, v26, v12

    div-double v26, v26, v16

    add-double v10, v10, v26

    sget-wide v26, Lcom/amap/api/col/l3s/ap;->a:D

    mul-double v26, v26, v8

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v26, v26, v28

    div-double v30, v8, v16

    sget-wide v32, Lcom/amap/api/col/l3s/ap;->a:D

    mul-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    const-wide/high16 v32, 0x4044000000000000L    # 40.0

    mul-double v30, v30, v32

    add-double v26, v26, v30

    mul-double v26, v26, v12

    div-double v26, v26, v16

    add-double v10, v10, v26

    const-wide/high16 v26, 0x4064000000000000L    # 160.0

    const-wide/high16 v30, 0x4028000000000000L    # 12.0

    div-double v34, v8, v30

    sget-wide v36, Lcom/amap/api/col/l3s/ap;->a:D

    mul-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    mul-double v34, v34, v26

    const-wide/high16 v26, 0x4074000000000000L    # 320.0

    sget-wide v36, Lcom/amap/api/col/l3s/ap;->a:D

    mul-double v36, v36, v8

    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    div-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v36, v36, v26

    add-double v34, v34, v36

    mul-double v34, v34, v12

    div-double v34, v34, v16

    add-double v10, v10, v34

    const-wide v26, 0x4072c00000000000L    # 300.0

    add-double v34, v6, v26

    mul-double/2addr v8, v12

    add-double v34, v34, v8

    mul-double v22, v22, v6

    add-double v34, v34, v22

    add-double v34, v34, v24

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double v8, v8, v20

    add-double v34, v34, v8

    sget-wide v8, Lcom/amap/api/col/l3s/ap;->a:D

    mul-double v18, v18, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v28

    sget-wide v18, Lcom/amap/api/col/l3s/ap;->a:D

    mul-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v14, v14, v28

    add-double/2addr v8, v14

    mul-double/2addr v8, v12

    div-double v8, v8, v16

    add-double v34, v34, v8

    sget-wide v8, Lcom/amap/api/col/l3s/ap;->a:D

    mul-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v28

    div-double v14, v6, v16

    sget-wide v18, Lcom/amap/api/col/l3s/ap;->a:D

    mul-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v14, v14, v32

    add-double/2addr v8, v14

    mul-double/2addr v8, v12

    div-double v8, v8, v16

    add-double v34, v34, v8

    const-wide v8, 0x4062c00000000000L    # 150.0

    div-double v14, v6, v30

    sget-wide v18, Lcom/amap/api/col/l3s/ap;->a:D

    mul-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v8

    div-double v6, v6, v38

    sget-wide v8, Lcom/amap/api/col/l3s/ap;->a:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v26

    add-double/2addr v14, v6

    mul-double/2addr v14, v12

    div-double v14, v14, v16

    add-double v34, v34, v14

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v8, v2, v6

    sget-wide v14, Lcom/amap/api/col/l3s/ap;->a:D

    mul-double/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    sget-wide v16, Lcom/amap/api/col/l3s/ap;->c:D

    mul-double v16, v16, v14

    mul-double v16, v16, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v16, v14, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    mul-double/2addr v10, v6

    sget-wide v20, Lcom/amap/api/col/l3s/ap;->b:D

    sget-wide v22, Lcom/amap/api/col/l3s/ap;->c:D

    sub-double v14, v14, v22

    mul-double v20, v20, v14

    mul-double v16, v16, v18

    div-double v20, v20, v16

    sget-wide v14, Lcom/amap/api/col/l3s/ap;->a:D

    mul-double v20, v20, v14

    div-double v10, v10, v20

    mul-double v34, v34, v6

    sget-wide v6, Lcom/amap/api/col/l3s/ap;->b:D

    div-double v6, v6, v18

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sget-wide v8, Lcom/amap/api/col/l3s/ap;->a:D

    mul-double/2addr v6, v8

    div-double v34, v34, v6

    add-double/2addr v10, v2

    add-double v6, v4, v34

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v0, v10, v11, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    mul-double/2addr v4, v12

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v12

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v2, v6

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_1
    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method private static a(DDDD)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 2

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    sub-double p4, p0, p4

    sub-double p6, p2, p6

    invoke-static {p4, p5, p6, p7}, Lcom/amap/api/col/l3s/ap;->c(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    add-double/2addr p0, p4

    iget-wide p4, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    sub-double/2addr p0, p4

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/ap;->c(D)D

    move-result-wide p0

    iput-wide p0, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr p2, p6

    iget-wide p0, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    sub-double/2addr p2, p0

    invoke-static {p2, p3}, Lcom/amap/api/col/l3s/ap;->c(D)D

    move-result-wide p0

    iput-wide p0, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    return-object v0
.end method

.method private static a(Lcom/autonavi/amap/mapcore/DPoint;Z)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 5

    :try_start_0
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/l3s/eq;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [D

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/l3s/pg;->a(DD)[D

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    const/4 p1, 0x0

    aget-wide v1, v0, p1

    const/4 p1, 0x1

    aget-wide v3, v0, p1

    invoke-static {v1, v2, v3, v4}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-object p0
.end method

.method private static b(D)D
    .locals 4

    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double/2addr p0, v0

    sget-wide v0, Lcom/amap/api/col/l3s/ap;->a:D

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v0, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method private static b(DD)D
    .locals 6

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    div-double v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x40d1940000000000L    # 18000.0

    div-double v4, p0, v4

    mul-double/2addr v2, v4

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v0, 0x40c1940000000000L    # 9000.0

    div-double/2addr p2, v0

    mul-double/2addr p0, p2

    add-double/2addr v2, p0

    return-wide v2
.end method

.method public static b(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 16

    move-object/from16 v1, p1

    :try_start_0
    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/l3s/eq;->a(DD)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v6, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v2, v6

    double-to-long v2, v2

    const-wide/32 v8, 0x2255100

    rem-long/2addr v2, v8

    long-to-double v2, v2

    mul-double/2addr v4, v6

    double-to-long v4, v4

    rem-long/2addr v4, v8

    long-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/l3s/ap;->a(DD)D

    move-result-wide v8

    neg-double v8, v8

    add-double/2addr v8, v2

    double-to-int v0, v8

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/l3s/ap;->b(DD)D

    move-result-wide v8

    neg-double v8, v8

    add-double/2addr v8, v4

    double-to-int v8, v8

    int-to-double v9, v0

    int-to-double v11, v8

    invoke-static {v9, v10, v11, v12}, Lcom/amap/api/col/l3s/ap;->a(DD)D

    move-result-wide v8

    neg-double v8, v8

    add-double/2addr v8, v2

    const-wide/16 v13, 0x0

    cmpl-double v0, v2, v13

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    int-to-double v2, v0

    add-double/2addr v8, v2

    double-to-int v0, v8

    int-to-double v2, v0

    invoke-static {v2, v3, v11, v12}, Lcom/amap/api/col/l3s/ap;->b(DD)D

    move-result-wide v8

    neg-double v8, v8

    add-double/2addr v8, v4

    cmpl-double v0, v4, v13

    if-lez v0, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, -0x1

    :goto_1
    int-to-double v4, v15

    add-double/2addr v8, v4

    double-to-int v0, v8

    div-double/2addr v2, v6

    int-to-double v4, v0

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    new-instance v8, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v5, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    move-object/from16 v2, p0

    invoke-static {v2, v8}, Lcom/amap/api/col/l3s/ap;->a(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method private static c(D)D
    .locals 1

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/16 p0, 0x8

    const/4 p1, 0x4

    invoke-virtual {v0, p0, p1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static c(DD)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 9

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/ap;->b(D)D

    move-result-wide v1

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static {p2, p3}, Lcom/amap/api/col/l3s/ap;->a(D)D

    move-result-wide v3

    mul-double v5, p0, p0

    mul-double v7, p2, p2

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v3, v7

    mul-double/2addr v1, v3

    const-wide v3, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr v1, v3

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/ap;->b(D)D

    move-result-wide v3

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    add-double/2addr v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Lcom/amap/api/col/l3s/ap;->a(D)D

    move-result-wide p2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double/2addr p2, v3

    mul-double/2addr p0, p2

    const-wide p2, 0x3f789374bc6a7efaL    # 0.006

    add-double/2addr p0, p2

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/ap;->c(D)D

    move-result-wide p2

    iput-wide p2, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/ap;->c(D)D

    move-result-wide p0

    iput-wide p0, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    return-object v0
.end method

.method private static d(DD)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 14

    const-wide v0, 0x3f7a37ffff31d771L    # 0.006401062

    const-wide v2, 0x3f78c0000225c17dL    # 0.0060424805

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v10, v0

    move-wide v12, v2

    :goto_0
    const/4 v0, 0x2

    if-ge v5, v0, :cond_0

    move-wide v6, p0

    move-wide/from16 v8, p2

    invoke-static/range {v6 .. v13}, Lcom/amap/api/col/l3s/ap;->a(DDDD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v4

    iget-wide v0, v4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    sub-double v10, p0, v0

    iget-wide v0, v4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    sub-double v12, p2, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method
