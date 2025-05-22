.class public Lcom/zui/fss/a/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/fss/a/c$a;
    }
.end annotation


# static fields
.field private static b:Lcom/zui/fss/a/c;

.field private static c:Lcom/zui/fss/a/c$a;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/fss/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/zui/fss/a/c$a;-><init>(Lcom/zui/fss/a/c;Landroid/content/Context;Lcom/zui/fss/a/g;)V

    sput-object v0, Lcom/zui/fss/a/c;->c:Lcom/zui/fss/a/c$a;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "android.provider.MultiSIMUtils"

    const-string v2, "getDefault"

    invoke-static {p1, v2, v1, v0}, Lcom/zui/fss/a/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/fss/a/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/zui/fss/a/c;
    .locals 2

    const-class v0, Lcom/zui/fss/a/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/fss/a/c;->b:Lcom/zui/fss/a/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/fss/a/c;

    invoke-direct {v1, p0}, Lcom/zui/fss/a/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zui/fss/a/c;->b:Lcom/zui/fss/a/c;

    :cond_0
    sget-object p0, Lcom/zui/fss/a/c;->b:Lcom/zui/fss/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/zui/fss/a/c;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Lcom/zui/fss/a/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private c(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lcom/zui/fss/a/c;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p0, p1, v1, v0}, Lcom/zui/fss/a/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const-string v0, "getEMMCID"

    invoke-direct {p0, v0}, Lcom/zui/fss/a/c;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceId getEMMCID :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiSIMDeviceInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    sget-object p0, Lcom/zui/fss/a/c;->c:Lcom/zui/fss/a/c$a;

    invoke-virtual {p0}, Lcom/zui/fss/a/c$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const-string p2, "getDeviceId"

    invoke-direct {p0, p2, p1}, Lcom/zui/fss/a/c;->c(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object p0, Lcom/zui/fss/a/c;->c:Lcom/zui/fss/a/c$a;

    invoke-virtual {p0, p1, p2}, Lcom/zui/fss/a/c$a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
