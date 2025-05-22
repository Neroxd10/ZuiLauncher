.class Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Landroid/os/UserHandle;

.field private final c:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/zui/launcher/icons/cache/CachingLogic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/icons/cache/CachingLogic<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;

.field final synthetic h:Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;


# direct methods
.method constructor <init>(Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;JLandroid/os/UserHandle;Ljava/util/Stack;Ljava/util/Stack;Lcom/zui/launcher/icons/cache/CachingLogic;Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/os/UserHandle;",
            "Ljava/util/Stack<",
            "TT;>;",
            "Ljava/util/Stack<",
            "TT;>;",
            "Lcom/zui/launcher/icons/cache/CachingLogic<",
            "TT;>;",
            "Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->h:Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->f:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->b:Landroid/os/UserHandle;

    iput-wide p2, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->a:J

    iput-object p5, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->c:Ljava/util/Stack;

    iput-object p6, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->d:Ljava/util/Stack;

    iput-object p7, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->e:Lcom/zui/launcher/icons/cache/CachingLogic;

    iput-object p8, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->g:Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->h:Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;

    invoke-static {v0}, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->b(Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;)Lcom/zui/launcher/icons/cache/BaseIconCache;

    move-result-object v0

    iget-object v0, v0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mWorkerHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->e:Lcom/zui/launcher/icons/cache/CachingLogic;

    invoke-interface {v0, v2}, Lcom/zui/launcher/icons/cache/CachingLogic;->getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->h:Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;

    invoke-static {v1}, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->a(Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->h:Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;

    invoke-static {v1}, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->b(Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;)Lcom/zui/launcher/icons/cache/BaseIconCache;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->e:Lcom/zui/launcher/icons/cache/CachingLogic;

    iget-wide v5, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->a:J

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/zui/launcher/icons/cache/BaseIconCache;->addIconToDBAndMemCache(Ljava/lang/Object;Lcom/zui/launcher/icons/cache/CachingLogic;Landroid/content/pm/PackageInfo;JZ)V

    iget-object v1, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->f:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->g:Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;

    iget-object v1, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->f:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->b:Landroid/os/UserHandle;

    invoke-interface {v0, v1, v2}, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;->onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->a()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->h:Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;

    invoke-static {v0}, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->a(Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->e:Lcom/zui/launcher/icons/cache/CachingLogic;

    invoke-interface {v1, v2}, Lcom/zui/launcher/icons/cache/CachingLogic;->getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/PackageInfo;

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->h:Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;

    invoke-static {v0}, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->b(Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;)Lcom/zui/launcher/icons/cache/BaseIconCache;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->e:Lcom/zui/launcher/icons/cache/CachingLogic;

    iget-wide v5, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->a:J

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/zui/launcher/icons/cache/BaseIconCache;->addIconToDBAndMemCache(Ljava/lang/Object;Lcom/zui/launcher/icons/cache/CachingLogic;Landroid/content/pm/PackageInfo;JZ)V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$a;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
