.class public final Lcom/amap/api/col/l3s/pl;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[C

.field private static final b:[B

.field private static final c:[B

.field private static final d:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/amap/api/col/l3s/pl;->a:[C

    const/16 v1, 0x80

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/amap/api/col/l3s/pl;->b:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/amap/api/col/l3s/pl;->c:[B

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/amap/api/col/l3s/pl;->c:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/amap/api/col/l3s/pl;->d:Ljavax/crypto/spec/IvParameterSpec;

    return-void

    nop

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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
    .array-data 1
        0x3dt
        0x3dt
        0x51t
        0x41t
        0x41t
        0x45t
        0x77t
        0x41t
        0x43t
        0x30t
        0x4at
        0x50t
        0x73t
        0x74t
        0x36t
        0x4bt
        0x68t
        0x4ct
        0x7at
        0x61t
        0x58t
        0x63t
        0x35t
        0x47t
        0x31t
        0x7at
        0x44t
        0x46t
        0x4ft
        0x68t
        0x71t
        0x71t
        0x41t
        0x61t
        0x4ct
        0x36t
        0x41t
        0x42t
        0x57t
        0x35t
        0x67t
        0x55t
        0x54t
        0x71t
        0x47t
        0x44t
        0x45t
        0x4ct
        0x50t
        0x52t
        0x6at
        0x33t
        0x42t
        0x4bt
        0x4bt
        0x45t
        0x62t
        0x37t
        0x54t
        0x6ct
        0x73t
        0x7at
        0x33t
        0x6at
        0x4ct
        0x37t
        0x58t
        0x7at
        0x46t
        0x79t
        0x49t
        0x4bt
        0x34t
        0x32t
        0x2bt
        0x65t
        0x46t
        0x79t
        0x38t
        0x69t
        0x73t
        0x69t
        0x59t
        0x78t
        0x75t
        0x70t
        0x35t
        0x30t
        0x4ct
        0x51t
        0x46t
        0x56t
        0x6ct
        0x6et
        0x49t
        0x41t
        0x42t
        0x4at
        0x41t
        0x53t
        0x77t
        0x41t
        0x77t
        0x53t
        0x44t
        0x41t
        0x51t
        0x42t
        0x42t
        0x45t
        0x51t
        0x41t
        0x4et
        0x63t
        0x76t
        0x68t
        0x49t
        0x5at
        0x6ft
        0x4bt
        0x4at
        0x59t
        0x51t
        0x44t
        0x77t
        0x77t
        0x46t
        0x4dt
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x2t
        0x3t
        0x5t
        0x8t
        0xdt
        0x8t
        0x7t
        0x6t
        0x5t
        0x4t
        0x3t
        0x2t
        0x1t
    .end array-data
.end method

.method public static a([B)[B
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x10

    :try_start_0
    new-array v2, v1, [B

    array-length v3, p0

    sub-int/2addr v3, v1

    new-array v3, v3, [B

    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-static {p0, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v1, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/amap/api/col/l3s/jf;->c()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_0

    array-length v0, p0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "decryptRsponse length = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Encrypt"

    invoke-static {v1, v0, p0}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
