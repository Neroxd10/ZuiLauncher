.class public Lcom/zui/launcher/allapps/TaskIconRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source ""


# static fields
.field public static final ACTION_OVERLAY_TO_WORKSPACE:Ljava/lang/String; = "com.zui.launcher.action.overlaytoworkspace"


# instance fields
.field private a:Lcom/zui/launcher/BaseActivity;

.field private b:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

.field private final c:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private d:Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/allapps/TaskIconRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/allapps/TaskIconRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/zui/launcher/allapps/TaskIconRecyclerView$a;

    invoke-direct {p1, p0}, Lcom/zui/launcher/allapps/TaskIconRecyclerView$a;-><init>(Lcom/zui/launcher/allapps/TaskIconRecyclerView;)V

    iput-object p1, p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView;->c:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    new-instance p1, Lcom/zui/launcher/allapps/s;

    invoke-direct {p1, p0}, Lcom/zui/launcher/allapps/s;-><init>(Lcom/zui/launcher/allapps/TaskIconRecyclerView;)V

    iput-object p1, p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView;->d:Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;

    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    return-void
.end method


# virtual methods
.method public synthetic a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView;->b:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->moveOverlayToWorkspace()V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView;->b:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->showTaskViews(Z)V

    :cond_1
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskIconRecyclerView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    :goto_0
    if-gt v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/widget/RelativeLayout;

    const v3, 0x7f0a01d4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/BubbleTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "btv icon size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zui/launcher/BubbleTextView;->getIconSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "btv :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView;->c:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView;->a:Lcom/zui/launcher/BaseActivity;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView;->d:Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/BaseActivity;->addMultiWindowModeChangedListener(Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView;->c:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView;->a:Lcom/zui/launcher/BaseActivity;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView;->d:Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/BaseActivity;->removeMultiWindowModeChangedListener(Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->reset()V

    return-void
.end method

.method public setup(Lcom/zui/launcher/BaseActivity;Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView;->a:Lcom/zui/launcher/BaseActivity;

    iput-object p2, p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView;->b:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    return-void
.end method
