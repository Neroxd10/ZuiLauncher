.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactRuntimeCacheHolder$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactRuntimeCacheHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactRuntimeCacheHolder;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactRuntimeCacheHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactRuntimeCacheHolder$c;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactRuntimeCacheHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactRuntimeCacheHolder$c;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactRuntimeCacheHolder;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactRuntimeCacheHolder;->tryRereshContactCache()V

    return-void
.end method
