.class public Lcom/zui/fss/b/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile c:Lcom/zui/fss/b/e;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/fss/b/e;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/fss/b/e;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/zui/fss/b/e;
    .locals 2

    sget-object v0, Lcom/zui/fss/b/e;->c:Lcom/zui/fss/b/e;

    if-nez v0, :cond_1

    const-class v0, Lcom/zui/fss/b/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/fss/b/e;->c:Lcom/zui/fss/b/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/fss/b/e;

    invoke-direct {v1, p0}, Lcom/zui/fss/b/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zui/fss/b/e;->c:Lcom/zui/fss/b/e;

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
    sget-object p0, Lcom/zui/fss/b/e;->c:Lcom/zui/fss/b/e;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/android/volley/RequestQueue;
    .locals 1

    iget-object v0, p0, Lcom/zui/fss/b/e;->b:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/fss/b/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/fss/b/e;->b:Lcom/android/volley/RequestQueue;

    :cond_0
    iget-object p0, p0, Lcom/zui/fss/b/e;->b:Lcom/android/volley/RequestQueue;

    return-object p0
.end method

.method public a(Lcom/android/volley/Request;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "VolleyPatterns"

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    invoke-virtual {p0}, Lcom/zui/fss/b/e;->a()Lcom/android/volley/RequestQueue;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method
