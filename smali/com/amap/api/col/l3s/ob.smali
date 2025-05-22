.class public final Lcom/amap/api/col/l3s/ob;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/nv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/ob$b;,
        Lcom/amap/api/col/l3s/ob$a;
    }
.end annotation


# static fields
.field private static k:J


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/amap/api/col/l3s/ok;

.field c:Lcom/amap/api/col/l3s/oj;

.field d:Lcom/amap/api/col/l3s/ng;

.field e:Lcom/amap/api/col/l3s/lg;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3s/mm;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;

.field private h:Landroid/location/LocationManager;

.field private i:Lcom/amap/api/col/l3s/ob$a;

.field private volatile j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/ob;->f:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/amap/api/col/l3s/ob;->b:Lcom/amap/api/col/l3s/ok;

    iput-object v0, p0, Lcom/amap/api/col/l3s/ob;->c:Lcom/amap/api/col/l3s/oj;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ob;->j:Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/col/l3s/lg;

    invoke-direct {v2}, Lcom/amap/api/col/l3s/lg;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/ob;->e:Lcom/amap/api/col/l3s/lg;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    sget-object v3, Lcom/amap/api/col/l3s/jy;->k:Ljava/lang/String;

    const/16 v4, 0x64

    const v5, 0xfa000

    const-string v6, "0"

    invoke-static/range {v1 .. v6}, Lcom/amap/api/col/l3s/ln;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/lg;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->e:Lcom/amap/api/col/l3s/lg;

    new-instance v1, Lcom/amap/api/col/l3s/lz;

    sget v2, Lcom/amap/api/col/l3s/ov;->g:I

    new-instance v9, Lcom/amap/api/col/l3s/lx;

    sget-boolean v5, Lcom/amap/api/col/l3s/ov;->e:Z

    sget v6, Lcom/amap/api/col/l3s/ov;->f:I

    mul-int/lit8 v7, v6, 0xa

    const-string v8, "carrierLocKey"

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/col/l3s/lx;-><init>(Landroid/content/Context;ZIILjava/lang/String;)V

    const-string v3, "kKey"

    invoke-direct {v1, p1, v2, v3, v9}, Lcom/amap/api/col/l3s/lz;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/amap/api/col/l3s/ma;)V

    iput-object v1, v0, Lcom/amap/api/col/l3s/lg;->f:Lcom/amap/api/col/l3s/ma;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ob;->e:Lcom/amap/api/col/l3s/lg;

    new-instance p1, Lcom/amap/api/col/l3s/kn;

    invoke-direct {p1}, Lcom/amap/api/col/l3s/kn;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/lg;->e:Lcom/amap/api/col/l3s/kq;

    return-void
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/amap/api/col/l3s/ob;->k:J

    return-wide p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/kt;Lcom/amap/api/col/l3s/lg;Ljava/util/List;[B)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/col/l3s/ob;->b(Lcom/amap/api/col/l3s/kt;Lcom/amap/api/col/l3s/lg;Ljava/util/List;[B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/kt;Ljava/util/List;)V
    .locals 1

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/kt;->c(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/kt;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "aps"

    const-string v0, "dlo"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ob;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/ob;->j:Z

    return p0
.end method

.method private static a(I)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1, p0}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/ob;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ob;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static b(Lcom/amap/api/col/l3s/kt;Lcom/amap/api/col/l3s/lg;Ljava/util/List;[B)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/l3s/kt;",
            "Lcom/amap/api/col/l3s/lg;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[B)",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/mm;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3s/kt;->b()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_f

    aget-object v6, v0, v4

    const-string v7, ".0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    if-eqz v7, :cond_c

    const/4 v7, 0x0

    :try_start_1
    const-string v8, "\\."

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    move-object/from16 v8, p0

    :try_start_2
    invoke-virtual {v8, v6}, Lcom/amap/api/col/l3s/kt;->a(Ljava/lang/String;)Lcom/amap/api/col/l3s/kt$b;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    if-nez v9, :cond_1

    if-eqz v9, :cond_d

    :goto_1
    :try_start_3
    invoke-virtual {v9}, Lcom/amap/api/col/l3s/kt$b;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    goto/16 :goto_9

    :cond_1
    :try_start_4
    invoke-virtual {v9}, Lcom/amap/api/col/l3s/kt$b;->a()Ljava/io/InputStream;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    if-nez v7, :cond_3

    if-eqz v7, :cond_2

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    :cond_2
    if-eqz v9, :cond_d

    goto :goto_1

    :cond_3
    const/4 v10, 0x2

    :try_start_6
    new-array v11, v10, [B

    invoke-virtual {v7, v11}, Ljava/io/InputStream;->read([B)I

    invoke-static {v11}, Lcom/amap/api/col/l3s/pc;->b([B)I

    move-result v11

    if-eqz v11, :cond_9

    const v12, 0xffff

    if-le v11, v12, :cond_4

    goto/16 :goto_6

    :cond_4
    new-array v11, v11, [B

    invoke-virtual {v7, v11}, Ljava/io/InputStream;->read([B)I

    new-array v12, v10, [B

    move v13, v3

    :goto_2
    invoke-virtual {v7, v12}, Ljava/io/InputStream;->read([B)I

    move-result v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    if-ltz v14, :cond_5

    :try_start_7
    invoke-static {v12}, Lcom/amap/api/col/l3s/pc;->b([B)I

    move-result v14

    new-array v14, v14, [B

    invoke-virtual {v7, v14}, Ljava/io/InputStream;->read([B)I

    invoke-static {}, Lcom/amap/api/col/l3s/jf;->c()[B

    move-result-object v15

    invoke-static {v11, v14, v15}, Lcom/amap/api/col/l3s/iz;->a([B[B[B)[B

    move-result-object v14

    array-length v15, v14

    add-int/2addr v13, v15

    const/4 v15, 0x4

    new-array v15, v15, [B

    invoke-virtual {v7, v15}, Ljava/io/InputStream;->read([B)I

    const/16 v16, 0x3

    aget-byte v3, v15, v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v16, v0

    :try_start_8
    aget-byte v0, v15, v10

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    const/4 v3, 0x1

    aget-byte v3, v15, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    const/4 v3, 0x0

    aget-byte v15, v15, v3

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x18

    or-int/2addr v0, v15

    new-instance v15, Lcom/amap/api/col/l3s/mm;

    invoke-static {v14}, Lcom/amap/api/col/l3s/jf;->b([B)[B

    move-result-object v14

    invoke-static {}, Lcom/amap/api/col/l3s/jf;->c()[B

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v10, p3

    :try_start_9
    invoke-static {v10, v14, v3}, Lcom/amap/api/col/l3s/iz;->b([B[B[B)[B

    move-result-object v3

    invoke-direct {v15, v0, v3}, Lcom/amap/api/col/l3s/mm;-><init>(I[B)V

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v0, v16

    const/4 v3, 0x0

    const/4 v10, 0x2

    goto :goto_2

    :catchall_1
    move-object/from16 v10, p3

    goto :goto_3

    :catchall_2
    move-object/from16 v10, p3

    move-object/from16 v16, v0

    :catchall_3
    :goto_3
    move-object/from16 v3, p1

    goto :goto_7

    :cond_5
    move-object/from16 v10, p3

    move-object/from16 v16, v0

    add-int/2addr v5, v13

    move-object/from16 v0, p2

    :try_start_a
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object/from16 v3, p1

    :try_start_b
    iget-object v6, v3, Lcom/amap/api/col/l3s/lg;->f:Lcom/amap/api/col/l3s/ma;

    invoke-virtual {v6}, Lcom/amap/api/col/l3s/ma;->a()I

    move-result v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    if-le v5, v6, :cond_7

    if-eqz v7, :cond_6

    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    :cond_6
    if-eqz v9, :cond_f

    :goto_4
    :try_start_d
    invoke-virtual {v9}, Lcom/amap/api/col/l3s/kt$b;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_f

    goto :goto_b

    :cond_7
    if-eqz v7, :cond_8

    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    :cond_8
    if-eqz v9, :cond_e

    :goto_5
    :try_start_f
    invoke-virtual {v9}, Lcom/amap/api/col/l3s/kt$b;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    goto :goto_a

    :catchall_6
    move-object/from16 v3, p1

    goto :goto_8

    :cond_9
    :goto_6
    if-eqz v7, :cond_a

    :try_start_10
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :catchall_7
    :cond_a
    if-eqz v9, :cond_f

    goto :goto_4

    :catchall_8
    move-object/from16 v3, p1

    move-object/from16 v10, p3

    move-object/from16 v16, v0

    :goto_7
    move-object/from16 v0, p2

    goto :goto_8

    :catchall_9
    move-object/from16 v8, p0

    :catchall_a
    move-object/from16 v3, p1

    move-object/from16 v10, p3

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object v9, v7

    :catchall_b
    :goto_8
    if-eqz v7, :cond_b

    :try_start_11
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    :catchall_c
    :cond_b
    if-eqz v9, :cond_e

    goto :goto_5

    :cond_c
    move-object/from16 v8, p0

    :catchall_d
    :cond_d
    :goto_9
    move-object/from16 v3, p1

    move-object/from16 v10, p3

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    :catchall_e
    :cond_e
    :goto_a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    const/4 v3, 0x0

    goto/16 :goto_0

    :catchall_f
    :cond_f
    :goto_b
    return-object v1

    :catchall_10
    move-exception v0

    const-string v2, "aps"

    const-string v3, "upc"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-object v1
.end method

.method private static b(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const v1, 0xff00

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/ob;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ob;->f()V

    return-void
.end method

.method static synthetic e()[B
    .locals 1

    const/16 v0, 0x80

    invoke-static {v0}, Lcom/amap/api/col/l3s/ob;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/ob;->f:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3s/ob;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/amap/api/col/l3s/ob;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x100

    invoke-static {v2}, Lcom/amap/api/col/l3s/ob;->a(I)[B

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    array-length v3, v2

    invoke-static {v3}, Lcom/amap/api/col/l3s/ob;->b(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3s/mm;

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/mm;->b()[B

    move-result-object v4

    array-length v5, v4

    const/16 v6, 0xa

    if-lt v5, v6, :cond_2

    array-length v5, v4

    const v6, 0xffff

    if-gt v5, v6, :cond_2

    invoke-static {}, Lcom/amap/api/col/l3s/jf;->c()[B

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/amap/api/col/l3s/iz;->b([B[B[B)[B

    move-result-object v4

    array-length v5, v4

    invoke-static {v5}, Lcom/amap/api/col/l3s/ob;->b(I)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/mm;->a()I

    move-result v3

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/4 v5, 0x0

    shr-int/lit8 v6, v3, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v5, 0x2

    shr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v5, 0x3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/amap/api/col/l3s/ob;->e:Lcom/amap/api/col/l3s/lg;

    invoke-static {v1, v0, p0}, Lcom/amap/api/col/l3s/lh;->a(Ljava/lang/String;[BLcom/amap/api/col/l3s/lg;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :goto_1
    return-void

    :catchall_1
    move-exception p0

    const-string v0, "clm"

    const-string v1, "wtD"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/nt;)Lcom/amap/api/col/l3s/nu;
    .locals 1

    :try_start_0
    new-instance p0, Lcom/amap/api/col/l3s/oq;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/oq;-><init>()V

    iget-object v0, p1, Lcom/amap/api/col/l3s/nt;->b:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/oq;->a(Ljava/util/Map;)V

    iget-object v0, p1, Lcom/amap/api/col/l3s/nt;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/oq;->a(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/amap/api/col/l3s/nt;->d:[B

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/oq;->a([B)V

    invoke-static {}, Lcom/amap/api/col/l3s/kw;->a()Lcom/amap/api/col/l3s/kw;

    invoke-static {p0}, Lcom/amap/api/col/l3s/kw;->c(Lcom/amap/api/col/l3s/ld;)Lcom/amap/api/col/l3s/le;

    move-result-object p0

    new-instance p1, Lcom/amap/api/col/l3s/nu;

    invoke-direct {p1}, Lcom/amap/api/col/l3s/nu;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/le;->a:[B

    iput-object v0, p1, Lcom/amap/api/col/l3s/nu;->c:[B

    iget-object p0, p0, Lcom/amap/api/col/l3s/le;->b:Ljava/util/Map;

    iput-object p0, p1, Lcom/amap/api/col/l3s/nu;->b:Ljava/util/Map;

    const/16 p0, 0xc8

    iput p0, p1, Lcom/amap/api/col/l3s/nu;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->i:Lcom/amap/api/col/l3s/ob$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->h:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->h:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ob;->i:Lcom/amap/api/col/l3s/ob$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->i:Lcom/amap/api/col/l3s/ob$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->i:Lcom/amap/api/col/l3s/ob$a;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ob$a;->a()V

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/ob;->j:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ob;->f()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->b:Lcom/amap/api/col/l3s/ok;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/ok;->a(Lcom/amap/api/col/l3s/ob;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->c:Lcom/amap/api/col/l3s/oj;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/oj;->a(Lcom/amap/api/col/l3s/ob;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/ob;->c:Lcom/amap/api/col/l3s/oj;

    iput-object v1, p0, Lcom/amap/api/col/l3s/ob;->b:Lcom/amap/api/col/l3s/ok;

    iput-object v1, p0, Lcom/amap/api/col/l3s/ob;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ob;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "clm"

    const-string v1, "stc"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->g:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/col/l3s/ob$b;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/ob$b;-><init>(Lcom/amap/api/col/l3s/ob;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "cl"

    const-string v0, "olcc"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/oj;Lcom/amap/api/col/l3s/ok;Landroid/os/Handler;)V
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/ob;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ob;->j:Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/ob;->c:Lcom/amap/api/col/l3s/oj;

    iput-object p2, p0, Lcom/amap/api/col/l3s/ob;->b:Lcom/amap/api/col/l3s/ok;

    invoke-virtual {p2, p0}, Lcom/amap/api/col/l3s/ok;->a(Lcom/amap/api/col/l3s/ob;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ob;->c:Lcom/amap/api/col/l3s/oj;

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/oj;->a(Lcom/amap/api/col/l3s/ob;)V

    iput-object p3, p0, Lcom/amap/api/col/l3s/ob;->g:Landroid/os/Handler;

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/ob;->h:Landroid/location/LocationManager;

    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/amap/api/col/l3s/ob;->h:Landroid/location/LocationManager;

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/ob;->i:Lcom/amap/api/col/l3s/ob$a;

    if-nez p1, :cond_3

    new-instance p1, Lcom/amap/api/col/l3s/ob$a;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/ob$a;-><init>(Lcom/amap/api/col/l3s/ob;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/ob;->i:Lcom/amap/api/col/l3s/ob$a;

    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/ob;->i:Lcom/amap/api/col/l3s/ob$a;

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/ob$a;->a(Lcom/amap/api/col/l3s/ob;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ob;->i:Lcom/amap/api/col/l3s/ob$a;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3s/ob;->h:Landroid/location/LocationManager;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->h:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x3e8

    const/high16 v4, -0x40800000    # -1.0f

    iget-object v5, p0, Lcom/amap/api/col/l3s/ob;->i:Lcom/amap/api/col/l3s/ob$a;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3s/ob;->d:Lcom/amap/api/col/l3s/ng;

    if-nez p1, :cond_5

    new-instance p1, Lcom/amap/api/col/l3s/ng;

    const-string v1, "5.2.0"

    iget-object p2, p0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "S128DF1572465B890OE3F7A13167KLEI"

    iget-object p2, p0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/amap/api/col/l3s/iu;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3s/ng;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/col/l3s/nv;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/ob;->d:Lcom/amap/api/col/l3s/ng;

    iget-object p2, p0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/amap/api/col/l3s/iy;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ng;->a(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/amap/api/col/l3s/iy;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ng;->b(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/amap/api/col/l3s/iy;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ng;->c(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/amap/api/col/l3s/iy;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ng;->d(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/amap/api/col/l3s/iy;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ng;->e(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/amap/api/col/l3s/iy;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ng;->f(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;

    move-result-object p1

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ng;->g(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;

    move-result-object p1

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ng;->h(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;

    move-result-object p1

    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ng;->i(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ng;->a(I)Lcom/amap/api/col/l3s/ng;

    move-result-object p1

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ng;->j(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/amap/api/col/l3s/iy;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amap/api/col/l3s/np;->a(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/amap/api/col/l3s/ng;->a(J)Lcom/amap/api/col/l3s/ng;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/iy;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/ng;->k(Ljava/lang/String;)Lcom/amap/api/col/l3s/ng;

    invoke-static {}, Lcom/amap/api/col/l3s/ng;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "col"

    const-string p2, "init"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->g:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/col/l3s/ob$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/ob$1;-><init>(Lcom/amap/api/col/l3s/ob;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "cl"

    const-string v1, "upw"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->d:Lcom/amap/api/col/l3s/ng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob;->c:Lcom/amap/api/col/l3s/oj;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ob;->c:Lcom/amap/api/col/l3s/oj;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/oj;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ng;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "cl"

    const-string v1, "upc"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3s/ob;->k:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/ka;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/ob$b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/amap/api/col/l3s/ob$b;-><init>(Lcom/amap/api/col/l3s/ob;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
