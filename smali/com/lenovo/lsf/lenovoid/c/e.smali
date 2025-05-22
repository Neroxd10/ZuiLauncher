.class public Lcom/lenovo/lsf/lenovoid/c/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/lenovo/lsf/lenovoid/c/e;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "android.provider.MultiSIMUtils"

    const-string v2, "getDefault"

    invoke-static {p1, v2, v1, v0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/c/e;->a:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/c/e;
    .locals 2

    const-class v0, Lcom/lenovo/lsf/lenovoid/c/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/lsf/lenovoid/c/e;->b:Lcom/lenovo/lsf/lenovoid/c/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/lsf/lenovoid/c/e;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/lenovoid/c/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/lenovo/lsf/lenovoid/c/e;->b:Lcom/lenovo/lsf/lenovoid/c/e;

    :cond_0
    sget-object p0, Lcom/lenovo/lsf/lenovoid/c/e;->b:Lcom/lenovo/lsf/lenovoid/c/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 6

    const-string v0, "getDeviceId"

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/c/e;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    return-object v1
.end method
