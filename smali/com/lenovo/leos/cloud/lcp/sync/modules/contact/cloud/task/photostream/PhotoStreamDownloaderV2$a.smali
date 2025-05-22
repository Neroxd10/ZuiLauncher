.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2$a;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2;->visitPhoto(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method
