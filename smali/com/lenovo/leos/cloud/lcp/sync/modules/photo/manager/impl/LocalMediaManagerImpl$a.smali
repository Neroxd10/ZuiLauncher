.class Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->d(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)I
    .locals 0

    iget-object p0, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    if-eqz p0, :cond_1

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl$a;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)I

    move-result p0

    return p0
.end method
