.class public Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/TaskOverlayFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskOverlay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;,
        Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zui/quickstep/views/OverviewActionsView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/zui/quickstep/views/OverviewActionsView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mApplicationContext:Landroid/content/Context;

.field protected mImageApi:Lcom/zui/quickstep/ImageActionsApi;

.field protected final mThumbnailView:Lcom/zui/quickstep/views/TaskThumbnailView;


# direct methods
.method protected constructor <init>(Lcom/zui/quickstep/views/TaskThumbnailView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->mApplicationContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/zui/quickstep/views/TaskThumbnailView;

    new-instance v1, Lcom/zui/quickstep/ImageActionsApi;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/zui/quickstep/r4;

    invoke-direct {v2, p1}, Lcom/zui/quickstep/r4;-><init>(Lcom/zui/quickstep/views/TaskThumbnailView;)V

    invoke-direct {v1, v0, v2}, Lcom/zui/quickstep/ImageActionsApi;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;)V

    iput-object v1, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->mImageApi:Lcom/zui/quickstep/ImageActionsApi;

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/views/RecentsView;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/zui/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public endLiveTileMode(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->LIVE_TILE:Lcom/zui/quickstep/util/NavigationModeFeatureFlag;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getRecentsView()Lcom/zui/quickstep/views/RecentsView;

    move-result-object p0

    new-instance v0, Lcom/zui/quickstep/h1;

    invoke-direct {v0, p0, p1}, Lcom/zui/quickstep/h1;-><init>(Lcom/zui/quickstep/views/RecentsView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->switchToScreenshot(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method protected getActionsView()Lcom/zui/quickstep/views/OverviewActionsView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->a:Lcom/zui/quickstep/views/OverviewActionsView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v0

    const v1, 0x7f0a02b9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/views/OverviewActionsView;

    iput-object v0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->a:Lcom/zui/quickstep/views/OverviewActionsView;

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->a:Lcom/zui/quickstep/views/OverviewActionsView;

    return-object p0
.end method

.method public getModalStateSystemShortcut(Lcom/zui/launcher/WorkspaceItemInfo;)Lcom/zui/launcher/popup/SystemShortcut;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getScreenshotShortcut(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/popup/SystemShortcut;
    .locals 1

    new-instance v0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$a;-><init>(Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)V

    return-object v0
.end method

.method public getTaskSnapshotBounds()Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    iget-object v6, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    aget v2, v0, v2

    add-int/2addr v6, v2

    iget-object p0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    aget v0, v0, v4

    add-int/2addr p0, v0

    invoke-direct {v1, v3, v5, v6, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getTaskSnapshotInsets()Landroid/graphics/Insets;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getScaledInsets()Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public initOverlay(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/Matrix;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/zui/quickstep/views/OverviewActionsView;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/zui/quickstep/views/OverviewActionsView;

    move-result-object p3

    const/4 v0, 0x4

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3, v0, v1}, Lcom/zui/quickstep/views/OverviewActionsView;->updateDisabledFlags(IZ)V

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/zui/quickstep/views/OverviewActionsView;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/zui/quickstep/views/OverviewActionsView;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p4}, Lcom/zui/quickstep/views/OverviewActionsView;->updateDisabledFlags(IZ)V

    :cond_2
    iget-object p2, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {p2}, Lcom/zui/quickstep/views/TaskThumbnailView;->isRealSnapshot()Z

    move-result p2

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/zui/quickstep/views/OverviewActionsView;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/zui/quickstep/views/OverviewActionsView;

    move-result-object p3

    new-instance p4, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;

    invoke-direct {p4, p0, p2, p1}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;-><init>(Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;ZLcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p3, p4}, Lcom/zui/quickstep/views/OverviewActionsView;->setCallbacks(Lcom/zui/quickstep/TaskOverlayFactory$OverlayUICallbacks;)V

    :cond_3
    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public resetModalVisuals()V
    .locals 0

    return-void
.end method

.method protected saveScreenshot(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskThumbnailView;->isRealSnapshot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->mImageApi:Lcom/zui/quickstep/ImageActionsApi;

    iget-object v1, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskThumbnailView;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->getTaskSnapshotBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->getTaskSnapshotInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/zui/quickstep/ImageActionsApi;->saveScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->showBlockedByPolicyMessage()V

    :goto_0
    return-void
.end method

.method public setFullscreenProgress(F)V
    .locals 0

    return-void
.end method

.method protected showBlockedByPolicyMessage()V
    .locals 2

    iget-object p0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1200db

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
