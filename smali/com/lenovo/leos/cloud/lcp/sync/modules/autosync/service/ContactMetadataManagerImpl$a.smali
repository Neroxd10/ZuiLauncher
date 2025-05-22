.class Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;->checkBackup()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Set;

.field final synthetic d:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$a;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$a;->c:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;II)Z
    .locals 2

    iget-object p2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    iget p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->deleted:I

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opAdd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opAdd:I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    iput-boolean p3, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;->backuped:Z

    iget p2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$a;->b:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getRawContactVersion(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$a;->c:Ljava/util/Set;

    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    iget v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->version:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq v0, p2, :cond_2

    iget p2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->deleted:I

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$a;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opUpdate:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opUpdate:I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opDelete:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opDelete:I

    :cond_2
    :goto_0
    return p3
.end method
