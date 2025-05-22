.class public Lcom/amap/api/col/l3s/kw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/kw$a;
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field public static b:Ljava/lang/String; = ""

.field private static c:Lcom/amap/api/col/l3s/kw;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amap/api/col/l3s/kw;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3s/kw;->c:Lcom/amap/api/col/l3s/kw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/kw;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/kw;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3s/kw;->c:Lcom/amap/api/col/l3s/kw;

    :cond_0
    sget-object v0, Lcom/amap/api/col/l3s/kw;->c:Lcom/amap/api/col/l3s/kw;

    return-object v0
.end method

.method public static a(Lcom/amap/api/col/l3s/ld;Z)Lcom/amap/api/col/l3s/le;
    .locals 3

    invoke-static {p0}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/ld;)I

    move-result v0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/kw;->a(Lcom/amap/api/col/l3s/ld;ZI)Lcom/amap/api/col/l3s/le;

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
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/kw;->a(Lcom/amap/api/col/l3s/ld;ZI)Lcom/amap/api/col/l3s/le;

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

.method public static a(Lcom/amap/api/col/l3s/ld;ZI)Lcom/amap/api/col/l3s/le;
    .locals 9

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/l3s/kw;->d(Lcom/amap/api/col/l3s/ld;)V

    new-instance v0, Lcom/amap/api/col/l3s/la;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/la;-><init>(Lcom/amap/api/col/l3s/ld;Z)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->isIPRequest()Z

    move-result v3

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getIPDNSName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getRequestHead()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->d()[B

    move-result-object v6

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->isIgnoreGZip()Z

    move-result v7

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;[BZI)Lcom/amap/api/col/l3s/le;

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

.method public static a(Lcom/amap/api/col/l3s/ld;)[B
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/kw;->a(Lcom/amap/api/col/l3s/ld;Z)Lcom/amap/api/col/l3s/le;

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

.method private static b(Lcom/amap/api/col/l3s/ld;Z)Lcom/amap/api/col/l3s/le;
    .locals 3

    invoke-static {p0}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/ld;)I

    move-result v0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/kw;->a(Lcom/amap/api/col/l3s/ld;ZI)Lcom/amap/api/col/l3s/le;

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
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/kw;->a(Lcom/amap/api/col/l3s/ld;ZI)Lcom/amap/api/col/l3s/le;

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

.method public static c(Lcom/amap/api/col/l3s/ld;)Lcom/amap/api/col/l3s/le;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/kw;->a(Lcom/amap/api/col/l3s/ld;Z)Lcom/amap/api/col/l3s/le;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "bm"

    const-string v1, "mp"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/amap/api/col/l3s/it;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    throw p0
.end method

.method protected static d(Lcom/amap/api/col/l3s/ld;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getURL()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/amap/api/col/l3s/it;

    const-string v0, "request url is empty"

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/amap/api/col/l3s/it;

    const-string v0, "requeust is null"

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lcom/amap/api/col/l3s/ld;)[B
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/kw;->b(Lcom/amap/api/col/l3s/ld;Z)Lcom/amap/api/col/l3s/le;

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

.method public static f(Lcom/amap/api/col/l3s/ld;)[B
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/kw;->b(Lcom/amap/api/col/l3s/ld;Z)Lcom/amap/api/col/l3s/le;

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
.method public b(Lcom/amap/api/col/l3s/ld;)[B
    .locals 1

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

    const-string p1, "bm"

    const-string v0, "msp"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/amap/api/col/l3s/it;

    const-string p1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/it;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    throw p0
.end method
