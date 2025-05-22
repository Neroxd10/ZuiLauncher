.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;->a:[Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;->c:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;->c:Ljava/lang/Integer;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;->a:[Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStandardError()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getStandardOutput()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;->a:[Ljava/lang/String;

    return-object p0
.end method

.method public success()Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;->c:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
