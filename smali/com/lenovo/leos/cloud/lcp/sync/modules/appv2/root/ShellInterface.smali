.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/ShellInterface;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public abstract runWaitFor(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;
.end method

.method public abstract runWaitFor(Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;"
        }
    .end annotation
.end method

.method public abstract shellUsable()Z
.end method
