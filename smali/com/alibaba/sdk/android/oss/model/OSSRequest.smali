.class public Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/model/OSSRequest;->a:Z

    return-void
.end method


# virtual methods
.method public isAuthorizationRequired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/model/OSSRequest;->a:Z

    return p0
.end method

.method public setIsAuthorizationRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/model/OSSRequest;->a:Z

    return-void
.end method
