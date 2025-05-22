.class public final Lcom/amap/api/col/l3s/lc;
.super Lcom/amap/api/col/l3s/kw;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/lc$a;
    }
.end annotation


# static fields
.field private static c:Lcom/amap/api/col/l3s/lc;


# instance fields
.field private d:Lcom/amap/api/col/l3s/mc;

.field private e:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/col/l3s/kw;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/mc;->b()Lcom/amap/api/col/l3s/mc;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/lc;->d:Lcom/amap/api/col/l3s/mc;

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/amap/api/col/l3s/lc$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/amap/api/col/l3s/lc$a;-><init>(Landroid/os/Looper;B)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/lc;->e:Landroid/os/Handler;

    return-void

    :cond_1
    new-instance p1, Lcom/amap/api/col/l3s/lc$a;

    invoke-direct {p1}, Lcom/amap/api/col/l3s/lc$a;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/lc;->e:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NetManger"

    const-string v0, "NetManger1"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static declared-synchronized a(Z)Lcom/amap/api/col/l3s/lc;
    .locals 2

    const-class v0, Lcom/amap/api/col/l3s/lc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/lc;->c:Lcom/amap/api/col/l3s/lc;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3s/lc;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/lc;-><init>(Z)V

    sput-object v1, Lcom/amap/api/col/l3s/lc;->c:Lcom/amap/api/col/l3s/lc;

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    sget-object p0, Lcom/amap/api/col/l3s/lc;->c:Lcom/amap/api/col/l3s/lc;

    iget-object p0, p0, Lcom/amap/api/col/l3s/lc;->d:Lcom/amap/api/col/l3s/mc;

    if-nez p0, :cond_1

    sget-object p0, Lcom/amap/api/col/l3s/lc;->c:Lcom/amap/api/col/l3s/lc;

    invoke-static {}, Lcom/amap/api/col/l3s/mc;->b()Lcom/amap/api/col/l3s/mc;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/lc;->d:Lcom/amap/api/col/l3s/mc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_1
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/amap/api/col/l3s/iy;->c()Lcom/amap/api/col/l3s/iy$a;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/amap/api/col/l3s/jl;->a()Lcom/amap/api/col/l3s/iy$a;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/iy;->a(Lcom/amap/api/col/l3s/iy$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_2
    :try_start_3
    sget-object p0, Lcom/amap/api/col/l3s/lc;->c:Lcom/amap/api/col/l3s/lc;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v0

    return-object p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b()Lcom/amap/api/col/l3s/lc;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/amap/api/col/l3s/lc;->a(Z)Lcom/amap/api/col/l3s/lc;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/amap/api/col/l3s/ld;Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/l3s/ld;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/ld;)I

    move-result v0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/lc;->b(Lcom/amap/api/col/l3s/ld;ZI)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v0}, Lcom/amap/api/col/l3s/la;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/amap/api/col/l3s/la;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/lc;->b(Lcom/amap/api/col/l3s/ld;ZI)Ljava/util/Map;

    move-result-object p0
    :try_end_1
    .catch Lcom/amap/api/col/l3s/it; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    throw p0

    :cond_0
    return-object v1

    :cond_1
    throw v1
.end method

.method private static b(Lcom/amap/api/col/l3s/ld;ZI)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/l3s/ld;",
            "ZI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/l3s/kw;->d(Lcom/amap/api/col/l3s/ld;)V

    new-instance v0, Lcom/amap/api/col/l3s/la;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/la;-><init>(Lcom/amap/api/col/l3s/ld;Z)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->isIPRequest()Z

    move-result v3

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getIPDNSName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getRequestHead()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getParams()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->isIgnoreGZip()Z

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Lcom/amap/api/col/l3s/it;

    const-string p1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    throw p0
.end method

.method public static c()Lcom/amap/api/col/l3s/lc;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amap/api/col/l3s/lc;->a(Z)Lcom/amap/api/col/l3s/lc;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/amap/api/col/l3s/ld;Z)Lcom/amap/api/col/l3s/le;
    .locals 3

    invoke-static {p0}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/ld;)I

    move-result v0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/lc;->c(Lcom/amap/api/col/l3s/ld;ZI)Lcom/amap/api/col/l3s/le;

    move-result-object v1
    :try_end_0
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v0}, Lcom/amap/api/col/l3s/la;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/amap/api/col/l3s/le;->a:[B

    if-eqz v2, :cond_0

    array-length v2, v2

    if-gtz v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/amap/api/col/l3s/la;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/lc;->c(Lcom/amap/api/col/l3s/ld;ZI)Lcom/amap/api/col/l3s/le;

    move-result-object p0
    :try_end_1
    .catch Lcom/amap/api/col/l3s/it; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    throw p0

    :cond_1
    return-object v1

    :cond_2
    throw v1
.end method

.method private static c(Lcom/amap/api/col/l3s/ld;ZI)Lcom/amap/api/col/l3s/le;
    .locals 9

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/l3s/kw;->d(Lcom/amap/api/col/l3s/ld;)V

    new-instance v0, Lcom/amap/api/col/l3s/la;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/la;-><init>(Lcom/amap/api/col/l3s/ld;Z)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->isIPRequest()Z

    move-result v3

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getIPDNSName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getRequestHead()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getParams()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->isIgnoreGZip()Z

    move-result v7

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;ZI)Lcom/amap/api/col/l3s/le;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Lcom/amap/api/col/l3s/it;

    const-string p1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    throw p0
.end method

.method private static d(Lcom/amap/api/col/l3s/ld;Z)Lcom/amap/api/col/l3s/le;
    .locals 3

    invoke-static {p0}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/ld;)I

    move-result v0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/lc;->c(Lcom/amap/api/col/l3s/ld;ZI)Lcom/amap/api/col/l3s/le;

    move-result-object v1
    :try_end_0
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/it;->g()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/amap/api/col/l3s/la;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/amap/api/col/l3s/le;->a:[B

    if-eqz v2, :cond_0

    array-length v2, v2

    if-gtz v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/amap/api/col/l3s/la;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/lc;->c(Lcom/amap/api/col/l3s/ld;ZI)Lcom/amap/api/col/l3s/le;

    move-result-object p0
    :try_end_1
    .catch Lcom/amap/api/col/l3s/it; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    throw p0

    :cond_1
    return-object v1

    :cond_2
    throw v1

    :cond_3
    throw v1
.end method

.method public static g(Lcom/amap/api/col/l3s/ld;)[B
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/lc;->c(Lcom/amap/api/col/l3s/ld;Z)Lcom/amap/api/col/l3s/le;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/le;->a:[B

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    new-instance p0, Lcom/amap/api/col/l3s/it;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    throw p0
.end method

.method public static h(Lcom/amap/api/col/l3s/ld;)[B
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/lc;->c(Lcom/amap/api/col/l3s/ld;Z)Lcom/amap/api/col/l3s/le;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/le;->a:[B

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    new-instance p0, Lcom/amap/api/col/l3s/it;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    throw p0
.end method

.method public static i(Lcom/amap/api/col/l3s/ld;)[B
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/lc;->d(Lcom/amap/api/col/l3s/ld;Z)Lcom/amap/api/col/l3s/le;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/le;->a:[B

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    new-instance p0, Lcom/amap/api/col/l3s/it;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    throw p0
.end method

.method public static j(Lcom/amap/api/col/l3s/ld;)[B
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/lc;->d(Lcom/amap/api/col/l3s/ld;Z)Lcom/amap/api/col/l3s/le;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/le;->a:[B

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    new-instance p0, Lcom/amap/api/col/l3s/it;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    throw p0
.end method


# virtual methods
.method public final b(Lcom/amap/api/col/l3s/ld;)[B
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    invoke-static {p1, p0}, Lcom/amap/api/col/l3s/kw;->a(Lcom/amap/api/col/l3s/ld;Z)Lcom/amap/api/col/l3s/le;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/le;->a:[B

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/amap/api/col/l3s/ka;->e()Lcom/amap/api/col/l3s/ka;

    move-result-object p1

    const-string v0, "NetManager"

    const-string v1, "makeSyncPostRequest"

    invoke-virtual {p1, p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/amap/api/col/l3s/it;

    const-string p1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    throw p0
.end method
