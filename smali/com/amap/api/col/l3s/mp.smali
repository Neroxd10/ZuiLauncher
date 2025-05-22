.class public final Lcom/amap/api/col/l3s/mp;
.super Lcom/amap/api/col/l3s/pi;
.source ""


# direct methods
.method public static a(Lcom/amap/api/col/l3s/ph;III)I
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/ph;->b(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p3}, Lcom/amap/api/col/l3s/ph;->b(II)V

    const/4 p3, 0x1

    invoke-virtual {p0, p3, p2}, Lcom/amap/api/col/l3s/ph;->b(II)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/amap/api/col/l3s/ph;->b(II)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ph;->b()I

    move-result p0

    return p0
.end method

.method public static a(Lcom/amap/api/col/l3s/ph;[B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/amap/api/col/l3s/ph;->a(III)V

    array-length v0, p1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/ph;->a(B)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ph;->a()I

    move-result p0

    return p0
.end method

.method public static a(Lcom/amap/api/col/l3s/ph;[I)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/amap/api/col/l3s/ph;->a(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/ph;->a(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ph;->a()I

    move-result p0

    return p0
.end method

.method public static b(Lcom/amap/api/col/l3s/ph;[B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/amap/api/col/l3s/ph;->a(III)V

    array-length v0, p1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/ph;->a(B)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ph;->a()I

    move-result p0

    return p0
.end method
