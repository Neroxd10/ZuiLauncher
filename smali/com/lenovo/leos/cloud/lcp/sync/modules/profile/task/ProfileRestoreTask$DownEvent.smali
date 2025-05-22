.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask$DownEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownEvent"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "result"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask$DownEvent;->onProgress(JJLandroid/os/Bundle;)V

    return-void
.end method
