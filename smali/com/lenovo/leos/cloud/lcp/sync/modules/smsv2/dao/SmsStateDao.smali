.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsStateDao;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract deleteAll()V
.end method

.method public abstract deleteBy(Ljava/lang/String;)V
.end method

.method public abstract deleteBySmsUid(Ljava/lang/String;)V
.end method

.method public abstract getAllBackupThreadIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBackupCount(Ljava/lang/String;)I
.end method

.method public abstract insert(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;)V
.end method

.method public abstract insert(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryBy(Ljava/lang/String;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
