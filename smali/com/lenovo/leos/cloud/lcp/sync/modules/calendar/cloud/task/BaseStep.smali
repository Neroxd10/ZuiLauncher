.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/SetpSync;
.implements Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/SetpSync<",
        "TC;TS;TR;>;",
        "Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;

.field protected context:Landroid/content/Context;

.field protected subListener:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;

.field protected task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

.field protected username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->username:Ljava/lang/String;

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->subListener:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;

    return-void
.end method


# virtual methods
.method protected getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;

    invoke-interface {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;->getB(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B

    move-result-object p0

    return-object p0
.end method

.method protected getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;

    invoke-interface {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onStepProgress(IILandroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;

    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;->onStepProgress(IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method protected postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;

    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setProgressStatus(I)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;->setProgressStatus(I)V

    return-void
.end method
