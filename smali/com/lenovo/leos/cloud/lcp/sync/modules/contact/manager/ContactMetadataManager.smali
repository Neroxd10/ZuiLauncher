.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/ContactMetadataManager;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getLastestLocalChange()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
.end method

.method public abstract getLastestLocalChange(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
.end method

.method public abstract queryLocalChangeByVersion(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
.end method

.method public abstract resetLastestLocalChange()V
.end method
