.class Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->genProblemResolver(I)Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
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

    const-string p2, "uplaodEntity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "appKey"

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->getBackupEntity()Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->a(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->b(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->setCategory(Ljava/lang/String;)V

    :cond_0
    return-object p1

    :cond_1
    const-string p2, "appCategory"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->b(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;->a:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->a(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p2, "callback"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a$a;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a$a;-><init>(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$a;)V

    return-object p1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method
