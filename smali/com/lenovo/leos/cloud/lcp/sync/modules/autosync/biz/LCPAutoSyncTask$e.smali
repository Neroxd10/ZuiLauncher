.class Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->i(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$e;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string p2, "problemSyncContactPhoto"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$e;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;->f(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
