.class public Lcom/android/wm/shell/stagesplit/ISplitScreenListener$Default;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/stagesplit/ISplitScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/stagesplit/ISplitScreenListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onStagePositionChanged(II)V
    .locals 0

    return-void
.end method

.method public onTaskStageChanged(IIZ)V
    .locals 0

    return-void
.end method
