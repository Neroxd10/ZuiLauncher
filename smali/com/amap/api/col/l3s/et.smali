.class public final Lcom/amap/api/col/l3s/et;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:[S

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/et;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/et;->c:Z

    const/16 p1, 0x10

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/amap/api/col/l3s/et;->a:[S

    return-void
.end method

.method private c(I)[S
    .locals 3

    new-array v0, p1, [S

    iget-object v1, p0, Lcom/amap/api/col/l3s/et;->a:[S

    iget v2, p0, Lcom/amap/api/col/l3s/et;->b:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/et;->a:[S

    return-object v0
.end method


# virtual methods
.method public final a(I)S
    .locals 3

    iget v0, p0, Lcom/amap/api/col/l3s/et;->b:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/et;->a:[S

    aget-short p0, p0, p1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index can\'t be >= size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/amap/api/col/l3s/et;->b:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(S)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/et;->a:[S

    iget v1, p0, Lcom/amap/api/col/l3s/et;->b:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/et;->c(I)[S

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/amap/api/col/l3s/et;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amap/api/col/l3s/et;->b:I

    aput-short p1, v0, v1

    return-void
.end method

.method public final b(I)[S
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3s/et;->b:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/amap/api/col/l3s/et;->a:[S

    array-length p1, p1

    if-le v0, p1, :cond_0

    const/16 p1, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/et;->c(I)[S

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/et;->a:[S

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/amap/api/col/l3s/et;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/amap/api/col/l3s/et;

    iget v1, p0, Lcom/amap/api/col/l3s/et;->b:I

    iget v3, p1, Lcom/amap/api/col/l3s/et;->b:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Lcom/amap/api/col/l3s/et;->a:[S

    aget-short v4, v4, v3

    iget-object v5, p1, Lcom/amap/api/col/l3s/et;->a:[S

    aget-short v5, v5, v3

    if-eq v4, v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/amap/api/col/l3s/et;->b:I

    if-nez v0, :cond_0

    const-string p0, "[]"

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/et;->a:[S

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-short v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lcom/amap/api/col/l3s/et;->b:I

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-short v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
