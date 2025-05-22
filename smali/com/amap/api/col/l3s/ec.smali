.class public final Lcom/amap/api/col/l3s/ec;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/amap/api/col/l3s/et;

.field private b:[S

.field private c:[D

.field private d:I

.field private final e:Lcom/amap/api/col/l3s/ei;

.field private final f:Lcom/amap/api/col/l3s/et;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/col/l3s/et;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/et;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ec;->a:Lcom/amap/api/col/l3s/et;

    new-instance v0, Lcom/amap/api/col/l3s/ei;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/ei;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ec;->e:Lcom/amap/api/col/l3s/ei;

    new-instance v0, Lcom/amap/api/col/l3s/et;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/et;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ec;->f:Lcom/amap/api/col/l3s/et;

    return-void
.end method

.method private static a(DDDDDD)I
    .locals 2

    sub-double v0, p10, p6

    mul-double/2addr p0, v0

    sub-double p10, p2, p10

    mul-double/2addr p4, p10

    add-double/2addr p0, p4

    sub-double/2addr p6, p2

    mul-double/2addr p8, p6

    add-double/2addr p0, p8

    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private a(I)I
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/col/l3s/ec;->b:[S

    invoke-direct/range {p0 .. p1}, Lcom/amap/api/col/l3s/ec;->b(I)I

    move-result v2

    aget-short v2, v1, v2

    mul-int/lit8 v2, v2, 0x2

    aget-short v3, v1, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct/range {p0 .. p1}, Lcom/amap/api/col/l3s/ec;->c(I)I

    move-result v4

    aget-short v1, v1, v4

    mul-int/lit8 v1, v1, 0x2

    iget-object v0, v0, Lcom/amap/api/col/l3s/ec;->c:[D

    aget-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v6, v0, v2

    aget-wide v8, v0, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v10, v0, v3

    aget-wide v12, v0, v1

    add-int/lit8 v1, v1, 0x1

    aget-wide v14, v0, v1

    invoke-static/range {v4 .. v15}, Lcom/amap/api/col/l3s/ec;->a(DDDDDD)I

    move-result v0

    return v0
.end method

.method private b(I)I
    .locals 0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/amap/api/col/l3s/ec;->d:I

    :cond_0
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private c(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget p0, p0, Lcom/amap/api/col/l3s/ec;->d:I

    rem-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final a([D)Lcom/amap/api/col/l3s/et;
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    iput-object v1, v0, Lcom/amap/api/col/l3s/ec;->c:[D

    const/4 v1, 0x2

    div-int/2addr v2, v1

    iput v2, v0, Lcom/amap/api/col/l3s/ec;->d:I

    iget-object v3, v0, Lcom/amap/api/col/l3s/ec;->a:Lcom/amap/api/col/l3s/et;

    const/4 v4, 0x0

    iput v4, v3, Lcom/amap/api/col/l3s/et;->b:I

    invoke-virtual {v3, v2}, Lcom/amap/api/col/l3s/et;->b(I)[S

    iput v2, v3, Lcom/amap/api/col/l3s/et;->b:I

    iget-object v3, v3, Lcom/amap/api/col/l3s/et;->a:[S

    iput-object v3, v0, Lcom/amap/api/col/l3s/ec;->b:[S

    add-int/lit8 v5, v2, -0x1

    move v6, v4

    :goto_0
    if-ge v6, v2, :cond_0

    add-int/lit8 v7, v5, 0x0

    sub-int/2addr v7, v6

    int-to-short v7, v7

    aput-short v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/amap/api/col/l3s/ec;->e:Lcom/amap/api/col/l3s/ei;

    iput v4, v3, Lcom/amap/api/col/l3s/ei;->b:I

    invoke-virtual {v3, v2}, Lcom/amap/api/col/l3s/ei;->b(I)[I

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_1

    invoke-direct {v0, v5}, Lcom/amap/api/col/l3s/ec;->a(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/amap/api/col/l3s/ei;->a(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/amap/api/col/l3s/ec;->f:Lcom/amap/api/col/l3s/et;

    iput v4, v3, Lcom/amap/api/col/l3s/et;->b:I

    sub-int/2addr v2, v1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v5, 0x3

    mul-int/2addr v2, v5

    invoke-virtual {v3, v2}, Lcom/amap/api/col/l3s/et;->b(I)[S

    iget-object v2, v0, Lcom/amap/api/col/l3s/ec;->e:Lcom/amap/api/col/l3s/ei;

    iget-object v2, v2, Lcom/amap/api/col/l3s/ei;->a:[I

    :goto_2
    iget v6, v0, Lcom/amap/api/col/l3s/ec;->d:I

    const/4 v7, 0x1

    if-le v6, v5, :cond_e

    move v8, v4

    :goto_3
    const/4 v9, -0x1

    if-ge v8, v6, :cond_6

    iget-object v10, v0, Lcom/amap/api/col/l3s/ec;->e:Lcom/amap/api/col/l3s/ei;

    iget-object v10, v10, Lcom/amap/api/col/l3s/ei;->a:[I

    aget v11, v10, v8

    if-ne v11, v9, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-direct {v0, v8}, Lcom/amap/api/col/l3s/ec;->b(I)I

    move-result v9

    invoke-direct {v0, v8}, Lcom/amap/api/col/l3s/ec;->c(I)I

    move-result v11

    iget-object v12, v0, Lcom/amap/api/col/l3s/ec;->b:[S

    aget-short v13, v12, v9

    mul-int/2addr v13, v1

    aget-short v14, v12, v8

    mul-int/2addr v14, v1

    aget-short v15, v12, v11

    mul-int/2addr v15, v1

    iget-object v4, v0, Lcom/amap/api/col/l3s/ec;->c:[D

    aget-wide v28, v4, v13

    add-int/2addr v13, v7

    aget-wide v30, v4, v13

    aget-wide v32, v4, v14

    add-int/2addr v14, v7

    aget-wide v13, v4, v14

    aget-wide v34, v4, v15

    add-int/2addr v15, v7

    aget-wide v36, v4, v15

    :cond_3
    invoke-direct {v0, v11}, Lcom/amap/api/col/l3s/ec;->c(I)I

    move-result v11

    if-eq v11, v9, :cond_4

    aget v15, v10, v11

    if-eq v15, v7, :cond_3

    aget-short v15, v12, v11

    mul-int/2addr v15, v1

    aget-wide v38, v4, v15

    add-int/2addr v15, v7

    aget-wide v40, v4, v15

    move-wide/from16 v16, v34

    move-wide/from16 v18, v36

    move-wide/from16 v20, v28

    move-wide/from16 v22, v30

    move-wide/from16 v24, v38

    move-wide/from16 v26, v40

    invoke-static/range {v16 .. v27}, Lcom/amap/api/col/l3s/ec;->a(DDDDDD)I

    move-result v15

    if-ltz v15, :cond_3

    move-wide/from16 v16, v28

    move-wide/from16 v18, v30

    move-wide/from16 v20, v32

    move-wide/from16 v22, v13

    move-wide/from16 v24, v38

    move-wide/from16 v26, v40

    invoke-static/range {v16 .. v27}, Lcom/amap/api/col/l3s/ec;->a(DDDDDD)I

    move-result v15

    if-ltz v15, :cond_3

    move-wide/from16 v16, v32

    move-wide/from16 v18, v13

    move-wide/from16 v20, v34

    move-wide/from16 v22, v36

    move-wide/from16 v24, v38

    move-wide/from16 v26, v40

    invoke-static/range {v16 .. v27}, Lcom/amap/api/col/l3s/ec;->a(DDDDDD)I

    move-result v15

    if-ltz v15, :cond_3

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    move v4, v7

    :goto_4
    if-eqz v4, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_6
    iget-object v4, v0, Lcom/amap/api/col/l3s/ec;->e:Lcom/amap/api/col/l3s/ei;

    iget-object v4, v4, Lcom/amap/api/col/l3s/ei;->a:[I

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v6, :cond_8

    aget v10, v4, v8

    if-eq v10, v9, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_6
    iget-object v4, v0, Lcom/amap/api/col/l3s/ec;->b:[S

    iget-object v6, v0, Lcom/amap/api/col/l3s/ec;->f:Lcom/amap/api/col/l3s/et;

    invoke-direct {v0, v8}, Lcom/amap/api/col/l3s/ec;->b(I)I

    move-result v9

    aget-short v9, v4, v9

    invoke-virtual {v6, v9}, Lcom/amap/api/col/l3s/et;->a(S)V

    aget-short v9, v4, v8

    invoke-virtual {v6, v9}, Lcom/amap/api/col/l3s/et;->a(S)V

    invoke-direct {v0, v8}, Lcom/amap/api/col/l3s/ec;->c(I)I

    move-result v9

    aget-short v4, v4, v9

    invoke-virtual {v6, v4}, Lcom/amap/api/col/l3s/et;->a(S)V

    iget-object v4, v0, Lcom/amap/api/col/l3s/ec;->a:Lcom/amap/api/col/l3s/et;

    iget v6, v4, Lcom/amap/api/col/l3s/et;->b:I

    const-string v9, " >= "

    const-string v10, "index can\'t be >= size: "

    if-ge v8, v6, :cond_d

    iget-object v11, v4, Lcom/amap/api/col/l3s/et;->a:[S

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/amap/api/col/l3s/et;->b:I

    iget-boolean v4, v4, Lcom/amap/api/col/l3s/et;->c:Z

    if-eqz v4, :cond_9

    add-int/lit8 v4, v8, 0x1

    sub-int/2addr v6, v8

    invoke-static {v11, v4, v11, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_9
    aget-short v4, v11, v6

    aput-short v4, v11, v8

    :goto_7
    iget-object v4, v0, Lcom/amap/api/col/l3s/ec;->e:Lcom/amap/api/col/l3s/ei;

    iget v6, v4, Lcom/amap/api/col/l3s/ei;->b:I

    if-ge v8, v6, :cond_c

    iget-object v9, v4, Lcom/amap/api/col/l3s/ei;->a:[I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/amap/api/col/l3s/ei;->b:I

    iget-boolean v4, v4, Lcom/amap/api/col/l3s/ei;->c:Z

    if-eqz v4, :cond_a

    add-int/lit8 v4, v8, 0x1

    sub-int/2addr v6, v8

    invoke-static {v9, v4, v9, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    :cond_a
    aget v4, v9, v6

    aput v4, v9, v8

    :goto_8
    iget v4, v0, Lcom/amap/api/col/l3s/ec;->d:I

    sub-int/2addr v4, v7

    iput v4, v0, Lcom/amap/api/col/l3s/ec;->d:I

    invoke-direct {v0, v8}, Lcom/amap/api/col/l3s/ec;->b(I)I

    move-result v4

    iget v6, v0, Lcom/amap/api/col/l3s/ec;->d:I

    if-ne v8, v6, :cond_b

    const/4 v8, 0x0

    :cond_b
    invoke-direct {v0, v4}, Lcom/amap/api/col/l3s/ec;->a(I)I

    move-result v6

    aput v6, v2, v4

    invoke-direct {v0, v8}, Lcom/amap/api/col/l3s/ec;->a(I)I

    move-result v4

    aput v4, v2, v8

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/amap/api/col/l3s/ei;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/amap/api/col/l3s/et;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-ne v6, v5, :cond_f

    iget-object v2, v0, Lcom/amap/api/col/l3s/ec;->f:Lcom/amap/api/col/l3s/et;

    iget-object v0, v0, Lcom/amap/api/col/l3s/ec;->b:[S

    const/4 v4, 0x0

    aget-short v4, v0, v4

    invoke-virtual {v2, v4}, Lcom/amap/api/col/l3s/et;->a(S)V

    aget-short v4, v0, v7

    invoke-virtual {v2, v4}, Lcom/amap/api/col/l3s/et;->a(S)V

    aget-short v0, v0, v1

    invoke-virtual {v2, v0}, Lcom/amap/api/col/l3s/et;->a(S)V

    :cond_f
    return-object v3
.end method
