.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation


# virtual methods
.method public abstract onVisitBackuped(FLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onVisitDataDir(FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onVisitPkname(FLjava/lang/String;)V
.end method
