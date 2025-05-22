.class public final Lcom/amap/api/col/l3s/ki;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/ki$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/col/l3s/je;

.field private volatile b:I


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3s/je;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/l3s/ki;->b:I

    iput-object p1, p0, Lcom/amap/api/col/l3s/ki;->a:Lcom/amap/api/col/l3s/je;

    return-void
.end method

.method public static a(Lcom/amap/api/col/l3s/je;)Lcom/amap/api/col/l3s/ki;
    .locals 3

    sget-object v0, Lcom/amap/api/col/l3s/ki$a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/je;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amap/api/col/l3s/ki$a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/je;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/col/l3s/ki;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3s/ki;-><init>(Lcom/amap/api/col/l3s/je;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/amap/api/col/l3s/ki$a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/je;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/col/l3s/ki;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/ki;->a:Lcom/amap/api/col/l3s/je;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sckey"

    invoke-static {p1, v0, v2, v1}, Lcom/amap/api/col/l3s/km;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/je;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ki;->a:Lcom/amap/api/col/l3s/je;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "scisf"

    invoke-static {p1, p0, p3, p2}, Lcom/amap/api/col/l3s/km;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/je;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/ki;->a:Lcom/amap/api/col/l3s/je;

    const-string v0, "sckey"

    invoke-static {p1, p0, v0}, Lcom/amap/api/col/l3s/km;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/je;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/ki;->a:Lcom/amap/api/col/l3s/je;

    const-string v0, "scisf"

    invoke-static {p1, p0, v0}, Lcom/amap/api/col/l3s/km;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/je;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x1

    return p0
.end method
