.class public Lcom/lenovo/lsf/lds/LDSCodecV1;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ABCDEFGHIJKLMNOP"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/lenovo/lsf/lds/LDSCodecV1;->a:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;B)V
    .locals 2

    and-int/lit16 p1, p1, 0xff

    sget-object v0, Lcom/lenovo/lsf/lds/LDSCodecV1;->a:[C

    shr-int/lit8 v1, p1, 0x4

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/lenovo/lsf/lds/LDSCodecV1;->a:[C

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static b([CI)B
    .locals 4

    mul-int/lit8 p1, p1, 0x2

    aget-char v0, p0, p1

    sget-object v1, Lcom/lenovo/lsf/lds/LDSCodecV1;->a:[C

    const/4 v2, 0x0

    aget-char v3, v1, v2

    sub-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 p1, p1, 0x1

    aget-char p0, p0, p1

    aget-char p1, v1, v2

    sub-int/2addr p0, p1

    add-int/2addr v0, p0

    int-to-byte p0, v0

    return p0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    const-string v0, "EM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    div-int/2addr v1, v0

    new-array v0, v1, [B

    const/4 v2, 0x0

    :goto_0
    div-int/lit8 v3, v1, 0x2

    if-lt v2, v3, :cond_3

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v1}, Lcom/lenovo/lsf/lds/LDSCodecV1;->b([CI)B

    move-result p0

    aput-byte p0, v0, v3

    :cond_2
    new-instance p0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0

    :cond_3
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x1

    invoke-static {p0, v4}, Lcom/lenovo/lsf/lds/LDSCodecV1;->b([CI)B

    move-result v4

    aput-byte v4, v0, v2

    sub-int v4, v1, v2

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3}, Lcom/lenovo/lsf/lds/LDSCodecV1;->b([CI)B

    move-result v3

    aput-byte v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad EM version :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    return-object p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    const/4 p0, 0x0

    :goto_0
    div-int/lit8 v3, v2, 0x2

    if-lt p0, v3, :cond_2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    aget-byte p0, v1, v3

    invoke-static {v0, p0}, Lcom/lenovo/lsf/lds/LDSCodecV1;->a(Ljava/lang/StringBuilder;B)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sub-int v3, v2, p0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v1, v3

    invoke-static {v0, v3}, Lcom/lenovo/lsf/lds/LDSCodecV1;->a(Ljava/lang/StringBuilder;B)V

    aget-byte v3, v1, p0

    invoke-static {v0, v3}, Lcom/lenovo/lsf/lds/LDSCodecV1;->a(Ljava/lang/StringBuilder;B)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p0
.end method
