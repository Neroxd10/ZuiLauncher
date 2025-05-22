.class public Lcom/amap/api/col/l3s/nw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/nw$b;,
        Lcom/amap/api/col/l3s/nw$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amap/api/col/l3s/nw;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amap/api/col/l3s/nw;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[B
    .locals 3

    array-length v0, p0

    new-instance v1, Lcom/amap/api/col/l3s/nw$b;

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Lcom/amap/api/col/l3s/nw$b;-><init>([B)V

    invoke-virtual {v1, p0, v0}, Lcom/amap/api/col/l3s/nw$b;->a([BI)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, v1, Lcom/amap/api/col/l3s/nw$a;->b:I

    iget-object v0, v1, Lcom/amap/api/col/l3s/nw$a;->a:[B

    array-length v1, v0

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    new-array v1, p0, [B

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad base-64"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
