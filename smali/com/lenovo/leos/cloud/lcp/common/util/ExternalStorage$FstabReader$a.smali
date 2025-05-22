.class Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$OnFsFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->d()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;

    invoke-virtual {p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->likes(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onFsFound(Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$a;->a:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$a;->a(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;)Z

    move-result v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$a;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
