.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->F(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$f;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$f;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;",
            ">;II)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$f;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$f;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->C(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;II)Z

    move-result p0

    return p0
.end method
