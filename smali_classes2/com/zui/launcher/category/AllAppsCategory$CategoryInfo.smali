.class public Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/category/AllAppsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryInfo"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;->murmur3hash(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;->a:I

    return-void
.end method

.method public static murmur3hash(Ljava/lang/String;)I
    .locals 12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    const v4, 0x989677

    move v5, v3

    :goto_0
    const/4 v6, 0x1

    const v7, 0xffff

    const v8, -0x3361d2af    # -8.293031E7f

    const v9, 0x1b873593

    if-ge v5, v2, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    or-int/2addr v10, v11

    add-int/2addr v5, v6

    and-int v6, v10, v7

    mul-int/2addr v6, v8

    ushr-int/lit8 v10, v10, 0x10

    mul-int/2addr v10, v8

    and-int v8, v10, v7

    shl-int/lit8 v8, v8, 0x10

    add-int/2addr v6, v8

    and-int/lit8 v6, v6, -0x1

    shl-int/lit8 v8, v6, 0xf

    ushr-int/lit8 v6, v6, 0x11

    or-int/2addr v6, v8

    and-int v8, v6, v7

    mul-int/2addr v8, v9

    ushr-int/lit8 v6, v6, 0x10

    mul-int/2addr v6, v9

    and-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v8, v6

    and-int/lit8 v6, v8, -0x1

    xor-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0xd

    ushr-int/lit8 v4, v4, 0x13

    or-int/2addr v4, v6

    and-int v6, v4, v7

    mul-int/lit8 v6, v6, 0x5

    ushr-int/lit8 v4, v4, 0x10

    mul-int/lit8 v4, v4, 0x5

    and-int/2addr v4, v7

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v6, v4

    and-int/lit8 v4, v6, -0x1

    and-int v6, v4, v7

    add-int/lit16 v6, v6, 0x6b64

    ushr-int/lit8 v4, v4, 0x10

    const v8, 0xe654

    add-int/2addr v4, v8

    and-int/2addr v4, v7

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v6

    goto :goto_0

    :cond_0
    if-eq v0, v6, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v5, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    xor-int/2addr v0, v3

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    add-int/lit8 v1, v5, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr v0, v1

    and-int v1, v0, v7

    mul-int/2addr v1, v8

    ushr-int/lit8 v0, v0, 0x10

    mul-int/2addr v0, v8

    and-int/2addr v0, v7

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    and-int/lit8 v0, v1, -0x1

    shl-int/lit8 v1, v0, 0xf

    ushr-int/lit8 v0, v0, 0x11

    or-int/2addr v0, v1

    and-int v1, v0, v7

    mul-int/2addr v1, v9

    ushr-int/lit8 v0, v0, 0x10

    mul-int/2addr v0, v9

    and-int/2addr v0, v7

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    and-int/lit8 v0, v1, -0x1

    xor-int/2addr v4, v0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    xor-int/2addr p0, v4

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    and-int v0, p0, v7

    const v1, -0x7a143595

    mul-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x10

    mul-int/2addr p0, v1

    and-int/2addr p0, v7

    shl-int/lit8 p0, p0, 0x10

    add-int/2addr v0, p0

    and-int/lit8 p0, v0, -0x1

    ushr-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    and-int v0, p0, v7

    const v1, -0x3d4d51cb

    mul-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x10

    mul-int/2addr p0, v1

    and-int/2addr p0, v7

    shl-int/lit8 p0, p0, 0x10

    add-int/2addr v0, p0

    and-int/lit8 p0, v0, -0x1

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    ushr-int/2addr p0, v3

    return p0
.end method
