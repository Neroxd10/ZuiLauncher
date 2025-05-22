.class public Lcom/amap/api/col/l3s/jh;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/amap/api/col/l3s/jh;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/jh;->b:Landroid/content/Context;

    const-string p1, "RYW1hcF9kZXZpY2VfYWRpdQ"

    invoke-static {p1}, Lcom/amap/api/col/l3s/jf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/jo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/jh;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/col/l3s/jh;
    .locals 2

    sget-object v0, Lcom/amap/api/col/l3s/jh;->a:Lcom/amap/api/col/l3s/jh;

    if-nez v0, :cond_1

    const-class v0, Lcom/amap/api/col/l3s/jh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/jh;->a:Lcom/amap/api/col/l3s/jh;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3s/jh;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/jh;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amap/api/col/l3s/jh;->a:Lcom/amap/api/col/l3s/jh;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/amap/api/col/l3s/jh;->a:Lcom/amap/api/col/l3s/jh;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/jh;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ji;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/ji;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/jh;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/ji;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/jh;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ji;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/ji;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ji;->b(Ljava/lang/String;)V

    return-void
.end method
