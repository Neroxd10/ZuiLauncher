.class Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;->checkPrepareLocal()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Set;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$c;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$c;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$c;->c:Ljava/util/Set;

    iput-object p5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$c;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$c;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;II)Z
    .locals 1

    iget-object p2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->deleted:I

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$c;->a:Ljava/util/List;

    :goto_0
    iget p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    iget p2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    iget-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$c;->b:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getRawContactVersion(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$c;->c:Ljava/util/Set;

    iget v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    iget p3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->version:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p3, p2, :cond_2

    iget p2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->deleted:I

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$c;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$c;->d:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$c;->e:Ljava/util/List;

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 p0, 0x1

    return p0
.end method
