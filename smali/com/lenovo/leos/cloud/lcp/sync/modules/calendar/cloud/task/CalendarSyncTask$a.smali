.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask$a;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/BaseSubTaskListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
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

    const/high16 p3, 0x41c80000    # 25.0f

    const/high16 v0, 0x40a00000    # 5.0f

    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x5f

    goto :goto_1

    :pswitch_1
    mul-float/2addr p1, p3

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x46

    goto :goto_1

    :pswitch_2
    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x41

    goto :goto_1

    :pswitch_3
    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x3c

    goto :goto_1

    :pswitch_4
    mul-float/2addr p1, p3

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x23

    goto :goto_1

    :pswitch_5
    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x1e

    goto :goto_1

    :pswitch_6
    mul-float/2addr p1, p3

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x5

    goto :goto_1

    :pswitch_7
    mul-float/2addr p1, v0

    float-to-int p1, p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/BaseSubTaskListener;->notifyProgress(I)V

    :goto_2
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
