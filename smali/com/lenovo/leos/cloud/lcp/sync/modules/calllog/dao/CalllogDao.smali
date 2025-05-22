.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;
    }
.end annotation


# virtual methods
.method public abstract createCalllog(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;)Ljava/lang/String;
.end method

.method public abstract delCalllog(I)V
.end method

.method public abstract getCalllogCount(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract queryLocalCalllogNumber(Landroid/content/Context;)Ljava/lang/Integer;
.end method

.method public abstract traverseAllCalllog(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;Ljava/lang/String;)V
.end method

.method public abstract traverseCalllog(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract updateCalllog(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;)V
.end method
