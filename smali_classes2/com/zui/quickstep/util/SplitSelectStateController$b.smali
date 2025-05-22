.class Lcom/zui/quickstep/util/SplitSelectStateController$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/RemoteTransitionRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/util/SplitSelectStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/android/systemui/shared/recents/model/Task;

.field private final b:Lcom/android/systemui/shared/recents/model/Task;

.field final synthetic c:Lcom/zui/quickstep/util/SplitSelectStateController;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/util/SplitSelectStateController;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/SplitSelectStateController$b;->c:Lcom/zui/quickstep/util/SplitSelectStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/util/SplitSelectStateController$b;->a:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p3, p0, Lcom/zui/quickstep/util/SplitSelectStateController$b;->b:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method


# virtual methods
.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/quickstep/util/SplitSelectStateController$b;->a:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, p0, Lcom/zui/quickstep/util/SplitSelectStateController$b;->b:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p1, v0, p2, p3, p4}, Lcom/zui/quickstep/TaskViewUtils;->composeRecentsSplitLaunchAnimator(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/zui/quickstep/util/SplitSelectStateController$b;->c:Lcom/zui/quickstep/util/SplitSelectStateController;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/SplitSelectStateController;->resetState()V

    return-void
.end method
