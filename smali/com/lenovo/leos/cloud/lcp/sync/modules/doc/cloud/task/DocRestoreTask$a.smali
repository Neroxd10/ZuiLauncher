.class Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask;->d(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)V

    return-void
.end method
