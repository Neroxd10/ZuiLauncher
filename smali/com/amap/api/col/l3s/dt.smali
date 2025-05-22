.class public final Lcom/amap/api/col/l3s/dt;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[[I

.field public static final b:[Ljava/lang/String;

.field public static final c:[[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const/16 v0, 0xc

    new-array v1, v0, [[I

    const/16 v2, 0xb

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x1

    new-array v5, v3, [I

    aput v0, v5, v4

    aput-object v5, v1, v3

    new-array v5, v3, [I

    aput v3, v5, v4

    const/4 v6, 0x2

    aput-object v5, v1, v6

    new-array v5, v3, [I

    const/16 v7, 0xd

    aput v7, v5, v4

    const/4 v7, 0x3

    aput-object v5, v1, v7

    new-array v5, v3, [I

    const/16 v8, 0xe

    aput v8, v5, v4

    const/4 v8, 0x4

    aput-object v5, v1, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_1

    const/4 v9, 0x5

    aput-object v5, v1, v9

    const/16 v5, 0x8

    new-array v10, v5, [I

    fill-array-data v10, :array_2

    const/4 v11, 0x6

    aput-object v10, v1, v11

    new-array v10, v6, [I

    fill-array-data v10, :array_3

    const/4 v12, 0x7

    aput-object v10, v1, v12

    new-array v10, v6, [I

    fill-array-data v10, :array_4

    aput-object v10, v1, v5

    new-array v10, v7, [I

    fill-array-data v10, :array_5

    const/16 v13, 0x9

    aput-object v10, v1, v13

    new-array v10, v7, [I

    fill-array-data v10, :array_6

    const/16 v14, 0xa

    aput-object v10, v1, v14

    new-array v10, v12, [I

    fill-array-data v10, :array_7

    aput-object v10, v1, v2

    sput-object v1, Lcom/amap/api/col/l3s/dt;->a:[[I

    const-string v15, "land"

    const-string v16, "water"

    const-string v17, "green"

    const-string v18, "building"

    const-string v19, "highway"

    const-string v20, "arterial"

    const-string v21, "local"

    const-string v22, "railway"

    const-string v23, "subway"

    const-string v24, "boundary"

    const-string v25, "poilabel"

    const-string v26, "districtlable"

    filled-new-array/range {v15 .. v26}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/api/col/l3s/dt;->b:[Ljava/lang/String;

    new-array v0, v0, [[Ljava/lang/String;

    const-string v15, "land"

    const-string v16, "edu"

    const-string v17, "public"

    const-string v18, "traffic"

    const-string v19, "scenicSpot"

    const-string v20, "culture"

    const-string v21, "health"

    const-string v22, "sports"

    const-string v23, "business"

    const-string v24, "parkingLot"

    const-string v25, "subway"

    filled-new-array/range {v15 .. v25}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "water"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "green"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "buildings"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "highWay"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "ringRoad"

    const-string v3, "nationalRoad"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v15, "provincialRoad"

    const-string v16, "secondaryRoad"

    const-string v17, "levelThreeRoad"

    const-string v18, "levelFourRoad"

    const-string v19, "roadsBeingBuilt"

    const-string v20, "overPass"

    const-string v21, "underPass"

    const-string v22, "other"

    filled-new-array/range {v15 .. v22}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v1, "railway"

    const-string v3, "highSpeedRailway"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, "subwayline"

    const-string v3, "subwayBeingBuilt"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "China"

    const-string v3, "foreign"

    const-string v4, "provincial"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v13

    const-string v1, "guideBoards"

    const-string v3, "pois"

    const-string v4, "aois"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v14

    const-string v3, "continent"

    const-string v4, "country"

    const-string v5, "province"

    const-string v6, "city"

    const-string v7, "district"

    const-string v8, "town"

    const-string v9, "village"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/amap/api/col/l3s/dt;->c:[[Ljava/lang/String;

    const-string v3, "regions"

    const-string v4, "water"

    const-string v5, "regions"

    const-string v6, "buildings"

    const-string v7, "roads"

    const-string v8, "roads"

    const-string v9, "roads"

    const-string v10, "roads"

    const-string v11, "roads"

    const-string v12, "borders"

    const-string v13, "labels"

    const-string v14, "labels"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3s/dt;->d:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0xf
        0x10
    .end array-data

    :array_2
    .array-data 4
        0x11
        0x12
        0x13
        0x14
        0x15
        0x1a
        0x1b
        0x1c
    .end array-data

    :array_3
    .array-data 4
        0x16
        0x17
    .end array-data

    :array_4
    .array-data 4
        0x18
        0x19
    .end array-data

    :array_5
    .array-data 4
        0x27
        0x28
        0x29
    .end array-data

    :array_6
    .array-data 4
        0x1d
        0x1e
        0x1f
    .end array-data

    :array_7
    .array-data 4
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
    .end array-data
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/amap/api/col/l3s/dt;->b:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v0, :cond_3

    sget-object p0, Lcom/amap/api/col/l3s/dt;->c:[[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/amap/api/col/l3s/dt;->b:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v0, :cond_3

    sget-object p0, Lcom/amap/api/col/l3s/dt;->d:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_3
    return-object v1
.end method
