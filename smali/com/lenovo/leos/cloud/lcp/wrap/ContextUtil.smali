.class public final Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Landroid/content/Context;

.field static final b:[Ljava/lang/String;

.field static c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.lenovo.leos.cloud.sync"

    const-string v1, "com.lenovo.lps.cloud.sync"

    const-string v2, "com.lenovo.leos.cloud.sync.row"

    const-string v3, "com.lenovo.lps.cloud.sync.row"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->c:Ljava/lang/Boolean;

    if-nez p0, :cond_2

    const-class p0, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->c:Ljava/lang/Boolean;

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->c:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method public static currAppIsLeSync()Z
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getContext()Landroid/content/Context;
    .locals 3

    const-class v0, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "Integration"

    const-string v2, "MUST invoke init(application) before this ContextUtil.getContext!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->a:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    sput-object p0, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
