.class public final Lcom/lenovo/lsf/lenovoid/c/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/lenovo/lsf/lenovoid/c/d;

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/lsf/lenovoid/c/d;->b:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/lenovo/lsf/lenovoid/c/d;
    .locals 1

    sget-object v0, Lcom/lenovo/lsf/lenovoid/c/d;->a:Lcom/lenovo/lsf/lenovoid/c/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/lsf/lenovoid/c/d;

    invoke-direct {v0}, Lcom/lenovo/lsf/lenovoid/c/d;-><init>()V

    sput-object v0, Lcom/lenovo/lsf/lenovoid/c/d;->a:Lcom/lenovo/lsf/lenovoid/c/d;

    :cond_0
    sget-object v0, Lcom/lenovo/lsf/lenovoid/c/d;->a:Lcom/lenovo/lsf/lenovoid/c/d;

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/lenovo/lsf/lenovoid/c/d;->b:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lenovo/lsf/lenovoid/c/d;->b:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
