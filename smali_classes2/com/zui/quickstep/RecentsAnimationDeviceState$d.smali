.class Lcom/zui/quickstep/RecentsAnimationDeviceState$d;
.super Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/zui/quickstep/RecentsAnimationDeviceState;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$d;->d:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-direct {p0, p2}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onExclusionChanged(Landroid/graphics/Region;)V
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$d;->d:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-static {p0, p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->l(Lcom/zui/quickstep/RecentsAnimationDeviceState;Landroid/graphics/Region;)Landroid/graphics/Region;

    return-void
.end method
