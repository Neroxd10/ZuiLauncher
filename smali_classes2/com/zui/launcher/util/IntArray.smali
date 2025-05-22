.class public Lcom/zui/launcher/util/IntArray;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final c:[I


# instance fields
.field a:[I

.field b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/zui/launcher/util/IntArray;->c:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/zui/launcher/util/IntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/zui/launcher/util/IntArray;->c:[I

    iput-object p1, p0, Lcom/zui/launcher/util/IntArray;->a:[I

    goto :goto_0

    :cond_0
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/zui/launcher/util/IntArray;->a:[I

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/util/IntArray;->b:I

    return-void
.end method

.method private constructor <init>([II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/IntArray;->a:[I

    iput p2, p0, Lcom/zui/launcher/util/IntArray;->b:I

    return-void
.end method

.method private static a(II)V
    .locals 3

    if-ltz p1, :cond_0

    if-le p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; index="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(I)V
    .locals 3

    iget v0, p0, Lcom/zui/launcher/util/IntArray;->b:I

    add-int/2addr p1, v0

    iget-object v1, p0, Lcom/zui/launcher/util/IntArray;->a:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    shr-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/2addr v1, v0

    if-le v1, p1, :cond_1

    move p1, v1

    :cond_1
    new-array p1, p1, [I

    iget-object v1, p0, Lcom/zui/launcher/util/IntArray;->a:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/zui/launcher/util/IntArray;->a:[I

    :cond_2
    return-void
.end method

.method public static fromConcatString(Ljava/lang/String;)Lcom/zui/launcher/util/IntArray;
    .locals 4

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array v1, p0, [I

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zui/launcher/util/IntArray;

    invoke-direct {v0, v1, p0}, Lcom/zui/launcher/util/IntArray;-><init>([II)V

    return-object v0
.end method

.method public static varargs wrap([I)Lcom/zui/launcher/util/IntArray;
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/IntArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/util/IntArray;-><init>([II)V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/util/IntArray;->b:I

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/util/IntArray;->add(II)V

    return-void
.end method

.method public add(II)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/util/IntArray;->b(I)V

    iget v1, p0, Lcom/zui/launcher/util/IntArray;->b:I

    sub-int v2, v1, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/zui/launcher/util/IntArray;->b:I

    invoke-static {v1, p1}, Lcom/zui/launcher/util/IntArray;->a(II)V

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/util/IntArray;->a:[I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/util/IntArray;->a:[I

    aput p2, p0, p1

    return-void
.end method

.method public addAll(Lcom/zui/launcher/util/IntArray;)V
    .locals 4

    iget v0, p1, Lcom/zui/launcher/util/IntArray;->b:I

    invoke-direct {p0, v0}, Lcom/zui/launcher/util/IntArray;->b(I)V

    iget-object p1, p1, Lcom/zui/launcher/util/IntArray;->a:[I

    iget-object v1, p0, Lcom/zui/launcher/util/IntArray;->a:[I

    iget v2, p0, Lcom/zui/launcher/util/IntArray;->b:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/zui/launcher/util/IntArray;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/util/IntArray;->b:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/util/IntArray;->b:I

    return-void
.end method

.method public clone()Lcom/zui/launcher/util/IntArray;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/util/IntArray;->toArray()[I

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/IntArray;->wrap([I)Lcom/zui/launcher/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/util/IntArray;->clone()Lcom/zui/launcher/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method public contains(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/IntArray;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public copyFrom(Lcom/zui/launcher/util/IntArray;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/util/IntArray;->clear()V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/IntArray;->addAll(Lcom/zui/launcher/util/IntArray;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/zui/launcher/util/IntArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/zui/launcher/util/IntArray;

    iget v1, p0, Lcom/zui/launcher/util/IntArray;->b:I

    iget v3, p1, Lcom/zui/launcher/util/IntArray;->b:I

    if-ne v1, v3, :cond_3

    move v1, v2

    :goto_0
    iget v3, p0, Lcom/zui/launcher/util/IntArray;->b:I

    if-ge v1, v3, :cond_2

    iget-object v3, p1, Lcom/zui/launcher/util/IntArray;->a:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/zui/launcher/util/IntArray;->a:[I

    aget v4, v4, v1

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public get(I)I
    .locals 1

    iget v0, p0, Lcom/zui/launcher/util/IntArray;->b:I

    invoke-static {v0, p1}, Lcom/zui/launcher/util/IntArray;->a(II)V

    iget-object p0, p0, Lcom/zui/launcher/util/IntArray;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public indexOf(I)I
    .locals 3

    iget v0, p0, Lcom/zui/launcher/util/IntArray;->b:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/util/IntArray;->a:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/util/IntArray;->b:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeAllValues(Lcom/zui/launcher/util/IntArray;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/zui/launcher/util/IntArray;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lcom/zui/launcher/util/IntArray;->a:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/util/IntArray;->removeValue(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeIndex(I)V
    .locals 3

    iget v0, p0, Lcom/zui/launcher/util/IntArray;->b:I

    invoke-static {v0, p1}, Lcom/zui/launcher/util/IntArray;->a(II)V

    iget-object v0, p0, Lcom/zui/launcher/util/IntArray;->a:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/zui/launcher/util/IntArray;->b:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/zui/launcher/util/IntArray;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/zui/launcher/util/IntArray;->b:I

    return-void
.end method

.method public removeValue(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/IntArray;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/IntArray;->removeIndex(I)V

    :cond_0
    return-void
.end method

.method public set(II)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/util/IntArray;->b:I

    invoke-static {v0, p1}, Lcom/zui/launcher/util/IntArray;->a(II)V

    iget-object p0, p0, Lcom/zui/launcher/util/IntArray;->a:[I

    aput p2, p0, p1

    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/util/IntArray;->b:I

    return p0
.end method

.method public toArray()[I
    .locals 1

    iget v0, p0, Lcom/zui/launcher/util/IntArray;->b:I

    if-nez v0, :cond_0

    sget-object p0, Lcom/zui/launcher/util/IntArray;->c:[I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/util/IntArray;->a:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public toConcatString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/zui/launcher/util/IntArray;->b:I

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/zui/launcher/util/IntArray;->a:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
