.class Lcom/zui/quickstep/util/LauncherSplitScreenListener$a;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/util/LauncherSplitScreenListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/util/LauncherSplitScreenListener;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/util/LauncherSplitScreenListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener$a;->a:Lcom/zui/quickstep/util/LauncherSplitScreenListener;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecentTaskListFrozenChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onRecentTaskListFrozenChanged(Z)V

    iget-object v0, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener$a;->a:Lcom/zui/quickstep/util/LauncherSplitScreenListener;

    invoke-static {v0, p1}, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->a(Lcom/zui/quickstep/util/LauncherSplitScreenListener;Z)Z

    iget-object p0, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener$a;->a:Lcom/zui/quickstep/util/LauncherSplitScreenListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->getRunningSplitTaskIds()[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->b(Lcom/zui/quickstep/util/LauncherSplitScreenListener;[I)[I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->g()[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->b(Lcom/zui/quickstep/util/LauncherSplitScreenListener;[I)[I

    :goto_0
    return-void
.end method
