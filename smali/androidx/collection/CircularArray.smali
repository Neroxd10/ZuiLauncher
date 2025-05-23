.class public final Landroidx/collection/CircularArray;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroidx/collection/CircularArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-gt p1, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/2addr p1, v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "capacity must be <= 2^30"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "capacity must be >= 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private doubleCapacity()V
    .locals 7

    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Landroidx/collection/CircularArray;->mHead:I

    sub-int v3, v1, v2

    shl-int/lit8 v4, v1, 0x1

    if-ltz v4, :cond_0

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/CircularArray;->mHead:I

    invoke-static {v0, v6, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iput v6, p0, Landroidx/collection/CircularArray;->mHead:I

    iput v1, p0, Landroidx/collection/CircularArray;->mTail:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Max array capacity exceeded"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget p1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Landroidx/collection/CircularArray;->doubleCapacity()V

    :cond_0
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr p1, v1

    iput p1, p0, Landroidx/collection/CircularArray;->mTail:I

    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroidx/collection/CircularArray;->doubleCapacity()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    add-int/2addr v1, p1

    iget p0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr p0, v1

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    iget p0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr p0, v1

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget p0, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public popFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularArray;->mHead:I

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public popLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iget v0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    iput v0, p0, Landroidx/collection/CircularArray;->mTail:I

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public removeFromEnd(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_5

    const/4 v0, 0x0

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ge p1, v1, :cond_1

    sub-int v0, v1, p1

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/collection/CircularArray;->mTail:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sub-int v0, v2, v0

    sub-int/2addr p1, v0

    sub-int/2addr v2, v0

    iput v2, p0, Landroidx/collection/CircularArray;->mTail:I

    if-lez p1, :cond_4

    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Landroidx/collection/CircularArray;->mTail:I

    sub-int/2addr v0, p1

    move p1, v0

    :goto_1
    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iput v0, p0, Landroidx/collection/CircularArray;->mTail:I

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public removeFromStart(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_5

    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    sub-int v2, v0, v1

    if-ge p1, v2, :cond_1

    add-int v0, v1, p1

    :cond_1
    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    iget-object v3, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    add-int/2addr v1, v0

    iget v0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularArray;->mHead:I

    if-lez p1, :cond_4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput p1, p0, Landroidx/collection/CircularArray;->mHead:I

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public size()I
    .locals 2

    iget v0, p0, Landroidx/collection/CircularArray;->mTail:I

    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr p0, v0

    return p0
.end method
