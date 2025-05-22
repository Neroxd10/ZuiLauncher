.class public Lcom/zui/quickstep/QuickstepTestInformationHandler;
.super Lcom/zui/launcher/testing/TestInformationHandler;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/testing/TestInformationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1ae46cdb

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x482f264a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "home-to-overview-swipe-height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "background-to-overview-swipe-height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "response"

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    invoke-super {p0, p1}, Lcom/zui/launcher/testing/TestInformationHandler;->call(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/launcher/testing/TestInformationHandler;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-static {p1, p0}, Lcom/zui/quickstep/util/LayoutUtils;->getShelfTrackingDistance(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;)I

    move-result p0

    int-to-float p0, p0

    :goto_2
    float-to-int p0, p0

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/testing/TestInformationHandler;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getDefaultSwipeHeight(Lcom/zui/launcher/DeviceProfile;)F

    move-result p0

    goto :goto_2
.end method
