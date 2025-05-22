.class public Lcom/amap/api/col/l3s/eh;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Z = false

.field private static volatile d:Lcom/amap/api/col/l3s/eh;


# instance fields
.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/eh;->b:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/eh;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static a()Lcom/amap/api/col/l3s/eh;
    .locals 2

    sget-object v0, Lcom/amap/api/col/l3s/eh;->d:Lcom/amap/api/col/l3s/eh;

    if-nez v0, :cond_1

    const-class v0, Lcom/amap/api/col/l3s/eh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/eh;->d:Lcom/amap/api/col/l3s/eh;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3s/eh;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/eh;-><init>()V

    sput-object v1, Lcom/amap/api/col/l3s/eh;->d:Lcom/amap/api/col/l3s/eh;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/api/col/l3s/eh;->d:Lcom/amap/api/col/l3s/eh;

    return-object v0
.end method

.method public static a(I)V
    .locals 1

    sget-boolean v0, Lcom/amap/api/col/l3s/eh;->a:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    sput-boolean p0, Lcom/amap/api/col/l3s/eh;->a:Z

    :cond_1
    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/col/l3s/eh;->a:Z

    return-void
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/amap/api/col/l3s/eh;->d:Lcom/amap/api/col/l3s/eh;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amap/api/col/l3s/eh;->d:Lcom/amap/api/col/l3s/eh;

    iget-object v0, v0, Lcom/amap/api/col/l3s/eh;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/api/col/l3s/eh;->d:Lcom/amap/api/col/l3s/eh;

    iget-object v0, v0, Lcom/amap/api/col/l3s/eh;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/amap/api/col/l3s/eh;->d:Lcom/amap/api/col/l3s/eh;

    iget-object v0, v0, Lcom/amap/api/col/l3s/eh;->b:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/eh;->d:Lcom/amap/api/col/l3s/eh;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/eh;->d()V

    sget-object v1, Lcom/amap/api/col/l3s/eh;->d:Lcom/amap/api/col/l3s/eh;

    iget-object v1, v1, Lcom/amap/api/col/l3s/eh;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amap/api/col/l3s/eh;->d:Lcom/amap/api/col/l3s/eh;

    iget-object v1, v1, Lcom/amap/api/col/l3s/eh;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/col/l3s/eh;->d:Lcom/amap/api/col/l3s/eh;

    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/col/l3s/eh;->a:Z

    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/col/l3s/eh;->a:Z

    return v0
.end method

.method private d()V
    .locals 5

    sget-boolean v0, Lcom/amap/api/col/l3s/eh;->a:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/eh;->b:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/eh;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/col/l3s/eh;->b:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-lez v2, :cond_3

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/amap/api/col/l3s/eh;->b:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ge v1, v2, :cond_1

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/eh;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/eh;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/li;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_3
    iget-object p0, p0, Lcom/amap/api/col/l3s/eh;->b:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/eh;->c:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public final a(Lcom/amap/api/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/amap/api/col/l3s/eh;->a:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/eh;->b:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    return-void

    :cond_0
    if-eqz p1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\"lon\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\"lat\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\"title\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p3, ""

    :cond_1
    const-string p1, "\"snippet\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/amap/api/col/l3s/eh;->b:Ljava/util/Hashtable;

    if-eqz p2, :cond_5

    monitor-enter p2

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/col/l3s/jc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/amap/api/col/l3s/eh;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/eh;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/eh;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/eh;->b:Ljava/util/Hashtable;

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/eh;->b:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_3

    const/4 p3, 0x1

    :cond_3
    if-eqz p3, :cond_4

    invoke-direct {p0}, Lcom/amap/api/col/l3s/eh;->d()V

    :cond_4
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    return-void
.end method
