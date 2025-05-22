.class Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache$a;
.super Landroidx/collection/LruCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;I)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;

    invoke-direct {p0, p2}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;

    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Long;)I
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p0

    return p0
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Long;

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache$a;->a(ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache$a;->b(Ljava/lang/String;Ljava/lang/Long;)I

    move-result p0

    return p0
.end method
