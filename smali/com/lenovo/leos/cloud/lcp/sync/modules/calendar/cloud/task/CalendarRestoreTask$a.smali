.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask$a;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/BaseSubTaskListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/BaseSubTaskListener;-><init>(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    return-void
.end method


# virtual methods
.method public onStepProgress(IILandroid/os/Bundle;)Z
    .locals 1

    if-lez p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/BaseSubTaskListener;->getCurrentStep()I

    move-result p2

    const/16 p3, 0x7d1

    const/high16 v0, 0x41200000    # 10.0f

    if-eq p2, p3, :cond_2

    const/16 p3, 0x7d2

    if-eq p2, p3, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x5a

    goto :goto_1

    :pswitch_1
    const/high16 p2, 0x42200000    # 40.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x32

    goto :goto_1

    :pswitch_2
    const/high16 p2, 0x41700000    # 15.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x23

    goto :goto_1

    :cond_1
    const/high16 p2, 0x41c80000    # 25.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0xa

    goto :goto_1

    :cond_2
    mul-float/2addr p1, v0

    float-to-int p1, p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/BaseSubTaskListener;->notifyProgress(I)V

    :goto_2
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x7d6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
