.class Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;->e(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Set;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;Ljava/lang/String;Ljava/util/Set;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$b;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$b;->c:Ljava/util/Set;

    iput-object p5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$b;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;II)Z
    .locals 3

    iget-object p2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->deleted:I

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opAdd:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opAdd:I

    return p3

    :cond_0
    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    iput-boolean v0, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;->backuped:Z

    iget p2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$b;->b:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getRawContactVersion(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$b;->c:Ljava/util/Set;

    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->version:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq v1, p2, :cond_2

    iget p2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->deleted:I

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$b;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$b;->d:Landroid/content/Context;

    invoke-static {p2, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opUpdate:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opUpdate:I

    return p3

    :cond_1
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opDelete:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opDelete:I

    return p3

    :cond_2
    return v0
.end method
