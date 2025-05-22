.class public final Lcom/amap/api/col/l3s/bb;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amap/api/col/l3s/bb;->a(IIII)V

    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/bb;->a:I

    iput p3, p0, Lcom/amap/api/col/l3s/bb;->b:I

    iput p2, p0, Lcom/amap/api/col/l3s/bb;->c:I

    iput p4, p0, Lcom/amap/api/col/l3s/bb;->d:I

    add-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/amap/api/col/l3s/bb;->e:I

    add-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/amap/api/col/l3s/bb;->f:I

    return-void
.end method

.method public final a(II)Z
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3s/bb;->a:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/amap/api/col/l3s/bb;->c:I

    if-gt p1, v0, :cond_0

    iget p1, p0, Lcom/amap/api/col/l3s/bb;->b:I

    if-gt p1, p2, :cond_0

    iget p0, p0, Lcom/amap/api/col/l3s/bb;->d:I

    if-gt p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a(Lcom/amap/api/col/l3s/bb;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lcom/amap/api/col/l3s/bb;->a:I

    iget v2, p1, Lcom/amap/api/col/l3s/bb;->c:I

    iget v3, p1, Lcom/amap/api/col/l3s/bb;->b:I

    iget p1, p1, Lcom/amap/api/col/l3s/bb;->d:I

    iget v4, p0, Lcom/amap/api/col/l3s/bb;->c:I

    if-ge v1, v4, :cond_1

    iget v1, p0, Lcom/amap/api/col/l3s/bb;->a:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/amap/api/col/l3s/bb;->d:I

    if-ge v3, v1, :cond_1

    iget p0, p0, Lcom/amap/api/col/l3s/bb;->b:I

    if-ge p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final a(Lcom/autonavi/amap/mapcore/IPoint;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/bb;->a(II)Z

    move-result p0

    return p0
.end method
