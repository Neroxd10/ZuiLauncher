.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;
.source ""


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "sms_state"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;",
        ">;"
    }
.end annotation


# instance fields
.field public address:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "address"
    .end annotation
.end field

.field public smsUid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "sms_uid"
        unique = true
    .end annotation
.end field

.field public threadId:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "thread_id"
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;->type:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;
    .locals 2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;->smsUid:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;->smsUid:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;->address:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;->address:Ljava/lang/String;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;->threadId:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;->threadId:I

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;->type:I

    iput p0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;->type:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;->clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;

    move-result-object p0

    return-object p0
.end method
