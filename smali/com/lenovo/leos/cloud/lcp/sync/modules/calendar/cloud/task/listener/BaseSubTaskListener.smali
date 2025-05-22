.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/BaseSubTaskListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;


# instance fields
.field protected currentStep:I

.field protected parentStepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/BaseSubTaskListener;->parentStepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    return-void
.end method


# virtual methods
.method public getCurrentStep()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/BaseSubTaskListener;->currentStep:I

    return p0
.end method

.method public notifyProgress(I)V
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/BaseSubTaskListener;->parentStepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    if-eqz p0, :cond_0

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;->onStepProgress(IILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public abstract onStepProgress(IILandroid/os/Bundle;)Z
.end method

.method public setCurrentStauts(I)V
    .locals 2

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/BaseSubTaskListener;->currentStep:I

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/BaseSubTaskListener;->onStepProgress(IILandroid/os/Bundle;)Z

    return-void
.end method
