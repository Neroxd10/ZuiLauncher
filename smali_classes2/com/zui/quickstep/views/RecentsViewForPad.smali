.class public Lcom/zui/quickstep/views/RecentsViewForPad;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/zui/quickstep/RecentsModel$TaskThumbnailChangeListener;
.implements Lcom/zui/quickstep/BaseRecentsView;
.implements Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;
.implements Lcom/zui/launcher/LauncherStateManager$StateListener;
.implements Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zui/launcher/BaseActivity;",
        ">",
        "Landroid/widget/RelativeLayout;",
        "Lcom/zui/quickstep/RecentsModel$TaskThumbnailChangeListener;",
        "Lcom/zui/quickstep/BaseRecentsView;",
        "Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;",
        "Lcom/zui/launcher/LauncherStateManager$StateListener;",
        "Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;"
    }
.end annotation


# static fields
.field public static final CONTENT_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/zui/quickstep/views/RecentsViewForPad;",
            ">;"
        }
    .end annotation
.end field

.field public static final FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/zui/quickstep/views/RecentsViewForPad;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAGE_SNAP_ANIMATION_DURATION:I = 0x2ee

.field private static final Q:Ljava/lang/String;

.field public static final UPDATE_SYSUI_FLAGS_THRESHOLD:F = 0.85f


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private final D:F

.field private E:I

.field private F:I

.field private final G:Landroid/graphics/drawable/Drawable;

.field private final H:Ljava/lang/CharSequence;

.field private final I:Landroid/text/TextPaint;

.field private final J:Landroid/graphics/Point;

.field private final K:I

.field private L:Z

.field private M:Landroid/text/Layout;

.field private N:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private O:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private P:I

.field private final a:Lcom/zui/quickstep/RecentsModel;

.field private b:Z

.field private c:Lcom/zui/quickstep/views/RecentsRecyclerView;

.field private d:Lcom/zui/quickstep/RecentsAdapter;

.field private e:Lcom/zui/quickstep/RecentsItemDecoration;

.field private f:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private g:I

.field private h:I

.field private i:Lcom/zui/launcher/util/PendingAnimation;

.field j:Lcom/zui/launcher/anim/AnimatorPlaybackController;

.field private k:Z

.field private l:Lcom/zui/quickstep/views/HintView;

.field private m:I

.field protected final mActivity:Lcom/zui/launcher/BaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mClipAnimationHelper:Lcom/zui/quickstep/util/ClipAnimationHelper;

.field protected final mInsets:Landroid/graphics/Rect;

.field protected mIsRtl:Z

.field protected mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

.field protected mScroller:Landroid/widget/OverScroller;

.field protected final mTempClipAnimationHelper:Lcom/zui/quickstep/util/ClipAnimationHelper;

.field protected final mTempRect:Landroid/graphics/Rect;

.field private n:I

.field private o:I

.field private final p:Lcom/zui/quickstep/views/ClearAllButton;

.field private final q:Landroid/graphics/Rect;

.field private final r:Landroid/graphics/Rect;

.field private final s:Lcom/zui/launcher/InvariantDeviceProfile;

.field private final t:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Lcom/android/systemui/shared/recents/model/Task;

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/zui/quickstep/views/RecentsViewForPad;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/quickstep/views/RecentsViewForPad;->Q:Ljava/lang/String;

    new-instance v0, Lcom/zui/quickstep/views/RecentsViewForPad$c;

    const-string v1, "fullscreenProgress"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/views/RecentsViewForPad$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/views/RecentsViewForPad;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    new-instance v0, Lcom/zui/quickstep/views/RecentsViewForPad$d;

    const-string v1, "contentAlpha"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/views/RecentsViewForPad$d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/views/RecentsViewForPad;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->q:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->r:Landroid/graphics/Rect;

    new-instance p2, Lcom/zui/quickstep/views/RecentsViewForPad$a;

    invoke-direct {p2, p0}, Lcom/zui/quickstep/views/RecentsViewForPad$a;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;)V

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->t:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    const/4 p2, -0x1

    iput p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->u:I

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->w:Z

    iput p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->y:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->J:Landroid/graphics/Point;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->N:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->O:F

    iput p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->P:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mTempRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mInsets:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p2}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    iget-boolean p2, p2, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    iput-boolean p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->b:Z

    sget-object p2, Lcom/zui/quickstep/RecentsModel;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/quickstep/RecentsModel;

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->a:Lcom/zui/quickstep/RecentsModel;

    sget-object p2, Lcom/zui/launcher/InvariantDeviceProfile;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/InvariantDeviceProfile;

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->s:Lcom/zui/launcher/InvariantDeviceProfile;

    iget-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-static {p2}, Lcom/zui/quickstep/util/RecentsViewUtils;->getInstance(Lcom/zui/launcher/BaseActivity;)Lcom/zui/quickstep/util/RecentsViewUtils;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    const v1, 0x7f0d0119

    invoke-virtual {p2, v1, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zui/quickstep/views/ClearAllButton;

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->p:Lcom/zui/quickstep/views/ClearAllButton;

    new-instance v0, Lcom/zui/quickstep/views/k2;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/views/k2;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->p:Lcom/zui/quickstep/views/ClearAllButton;

    new-instance v0, Lcom/zui/quickstep/views/g2;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/views/g2;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->E()V

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result p2

    iput p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->D:F

    const p2, 0x7f08024d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const p2, 0x7f1205ab

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->H:Ljava/lang/CharSequence;

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->I:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602ca

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->I:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07061d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->I:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/zui/launcher/util/Themes;->getDefaultBodyFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07061c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->K:I

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->updateEmptyMessage()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/zui/launcher/LauncherStateManager;->addStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V

    new-instance p2, Lcom/zui/quickstep/util/ClipAnimationHelper;

    invoke-direct {p2, p1}, Lcom/zui/quickstep/util/ClipAnimationHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mTempClipAnimationHelper:Lcom/zui/quickstep/util/ClipAnimationHelper;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mIsRtl:Z

    return-void
.end method

.method static synthetic C(Lcom/zui/launcher/util/PendingAnimation;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/util/PendingAnimation;->finish(ZI)V

    return-void
.end method

.method private D()V
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    :goto_0
    if-gt v1, v2, :cond_2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/zui/quickstep/views/TaskView;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/zui/quickstep/views/TaskView;

    iget-boolean v4, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->v:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v5, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->u:I

    if-eq v4, v5, :cond_1

    :cond_0
    iget v4, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->N:F

    invoke-virtual {v3, v4}, Lcom/zui/quickstep/views/TaskView;->setStableAlpha(F)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    iget p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->N:F

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/RecentsAdapter;->setStableAlpha(F)V

    return-void
.end method

.method private E()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    const v1, 0x7f0707d7

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->m:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->n:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707bd

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->m:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->n:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707bc

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->o:I

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->e:Lcom/zui/quickstep/RecentsItemDecoration;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->setItemDecoration(Lcom/zui/quickstep/RecentsItemDecoration;)V

    :cond_1
    return-void
.end method

.method private F()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->a:Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsModel;->onTaskRemovedInternal()V

    return-void
.end method

.method private G()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->l:Lcom/zui/quickstep/views/HintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->l:Lcom/zui/quickstep/views/HintView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private H(Lcom/android/systemui/shared/recents/model/Task;ILcom/zui/launcher/util/PendingAnimation$OnEndListener;Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->F()V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeAppProcess(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)V

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p0

    iget p3, p3, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->logAction:I

    const/4 p4, 0x1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {p1}, Lcom/zui/quickstep/TaskUtils;->getLaunchComponentKeyForTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/zui/launcher/util/ComponentKey;

    move-result-object p1

    invoke-virtual {p0, p3, p4, p2, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->logTaskLaunchOrDismiss(IIILcom/zui/launcher/util/ComponentKey;)V

    :cond_0
    return-void
.end method

.method private I(Lcom/zui/launcher/util/PendingAnimation;)V
    .locals 2

    iget-object p0, p1, Lcom/zui/launcher/util/PendingAnimation;->anim:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x12c

    invoke-static {p0, v0, v1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    new-instance v0, Lcom/zui/quickstep/views/u0;

    invoke-direct {v0, p1}, Lcom/zui/quickstep/views/u0;-><init>(Lcom/zui/launcher/util/PendingAnimation;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->start()V

    return-void
.end method

.method private J()V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->q:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->p:Lcom/zui/quickstep/views/ClearAllButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->p:Lcom/zui/quickstep/views/ClearAllButton;

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->q:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->q:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getTaskViewCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/zui/quickstep/views/RecentsViewForPad;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Rect;->union(IIII)V

    :cond_1
    return-void
.end method

.method private K(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->M:Landroid/text/Layout;

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->J:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Point;->set(II)V

    :cond_1
    iget-boolean p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->L:Z

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->M:Landroid/text/Layout;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->J:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->K:I

    sub-int/2addr p1, v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->H:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->I:Landroid/text/TextPaint;

    invoke-static {v0, v1, v2, v3, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->M:Landroid/text/Layout;

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->J:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->J:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v1, v0, p1, v2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    return-void
.end method

.method private L(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    sget-object v2, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mIsSavingLockedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mIsSavingLockedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    sget-object v2, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mLockPackageNameMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mLockPackageNameMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/systemui/shared/recents/model/Task;->setIsTaskLocked(Z)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/Task;->setIsTaskLocked(Z)V

    :goto_2
    return-void
.end method

.method private M()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->z:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->A:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->A:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->reloadIfNeeded()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/views/RecentsViewForPad;)Lcom/zui/quickstep/views/RecentsRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/quickstep/views/RecentsViewForPad;)I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->g:I

    return p0
.end method

.method static synthetic c(Lcom/zui/quickstep/views/RecentsViewForPad;I)I
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->g:I

    return p1
.end method

.method static synthetic d(Lcom/zui/quickstep/views/RecentsViewForPad;)I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->h:I

    return p0
.end method

.method static synthetic e(Lcom/zui/quickstep/views/RecentsViewForPad;I)I
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->h:I

    return p1
.end method

.method static synthetic f(Lcom/zui/quickstep/views/RecentsViewForPad;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->O:F

    return p0
.end method

.method static synthetic g(Lcom/zui/quickstep/views/RecentsViewForPad;Lcom/android/systemui/shared/recents/model/Task;ILcom/zui/launcher/util/PendingAnimation$OnEndListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/quickstep/views/RecentsViewForPad;->H(Lcom/android/systemui/shared/recents/model/Task;ILcom/zui/launcher/util/PendingAnimation$OnEndListener;Z)V

    return-void
.end method

.method static synthetic h(Lcom/zui/quickstep/views/RecentsViewForPad;)Lcom/zui/quickstep/RecentsAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    return-object p0
.end method

.method static synthetic i(Lcom/zui/quickstep/views/RecentsViewForPad;)Lcom/zui/quickstep/views/ClearAllButton;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->p:Lcom/zui/quickstep/views/ClearAllButton;

    return-object p0
.end method

.method static synthetic j(Lcom/zui/quickstep/views/RecentsViewForPad;Lcom/zui/launcher/util/PendingAnimation;)Lcom/zui/launcher/util/PendingAnimation;
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->i:Lcom/zui/launcher/util/PendingAnimation;

    return-object p1
.end method

.method private static k(Landroid/animation/Animator;JLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorSet;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p4, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private l(Landroid/view/View;Landroid/animation/AnimatorSet;J)V
    .locals 11

    sget-object p0, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p1, p0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-static {p0, p3, p4, v1, p2}, Lcom/zui/quickstep/views/RecentsViewForPad;->k(Landroid/animation/Animator;JLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorSet;)V

    sget-object p0, Lcom/zui/launcher/config/BaseFlags;->QUICKSTEP_SPRINGS:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {p0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lcom/zui/quickstep/views/TaskView;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/zui/launcher/anim/SpringObjectAnimator;

    sget-object v6, Lcom/zui/launcher/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const v9, 0x44bb8000    # 1500.0f

    const/4 v1, 0x2

    new-array v10, v1, [F

    aput v3, v10, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v10, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/zui/launcher/anim/SpringObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;FFF[F)V

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/widget/RelativeLayout;->TRANSLATION_Y:Landroid/util/Property;

    new-array v0, v0, [F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v2

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_0
    sget-object p1, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static {p0, p3, p4, p1, p2}, Lcom/zui/quickstep/views/RecentsViewForPad;->k(Landroid/animation/Animator;JLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method private m(Lcom/zui/quickstep/views/TaskView;Landroid/animation/AnimatorSet;J)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v2}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    sget-object v1, Landroid/widget/RelativeLayout;->TRANSLATION_Y:Landroid/util/Property;

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v0, v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0707c2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v3

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->j:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    new-instance v3, Lcom/zui/quickstep/views/z0;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/zui/quickstep/views/z0;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;Lcom/zui/quickstep/views/TaskView;II)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 p0, 0x4

    div-long/2addr p3, p0

    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static {v0, p3, p4, p0, p2}, Lcom/zui/quickstep/views/RecentsViewForPad;->k(Landroid/animation/Animator;JLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method private n(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->i:Lcom/zui/launcher/util/PendingAnimation;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/zui/quickstep/views/r0;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/views/r0;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, v1}, Lcom/zui/quickstep/views/RecentsViewForPad;->L(Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    iget-boolean v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->b:Z

    invoke-virtual {v0, p1, v1}, Lcom/zui/quickstep/RecentsAdapter;->setData(Ljava/util/ArrayList;Z)V

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->q(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->D()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->p:Lcom/zui/quickstep/views/ClearAllButton;

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/zui/quickstep/views/ClearAllButton;->show(Lcom/zui/launcher/views/BaseDragLayer;Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsAdapter;->clear()V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->onTaskStackUpdated()V

    return-void
.end method

.method private o()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->w:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/TaskView;->setIconScaleAndDim(F)V

    :cond_1
    return-void
.end method

.method private p(Lcom/zui/quickstep/views/TaskMenuView;FI)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->j:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskMenuView;->getFadeInOpenAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskMenuView;->getFadeInOpenAnimator()Landroid/animation/AnimatorSet;

    move-result-object p1

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->j:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->j:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz p0, :cond_1

    int-to-float p1, p3

    div-float/2addr p2, p1

    const/4 p1, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p2, p1, p3}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_1
    return-void
.end method

.method private q(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->h:I

    :cond_0
    return-void
.end method

.method private r()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic s(Lcom/zui/quickstep/views/RecentsViewForPad;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->n(Ljava/util/ArrayList;)V

    return-void
.end method

.method private setItemDecoration(Lcom/zui/quickstep/RecentsItemDecoration;)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget v6, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->n:I

    iget v7, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->o:I

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/zui/quickstep/RecentsItemDecoration;->setSpace(IIIII)V

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    iget v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->n:I

    iget p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->o:I

    invoke-virtual {p1, v0, p0}, Lcom/zui/quickstep/views/RecentsRecyclerView;->setMarginTopBottom(II)V

    return-void
.end method

.method private setVisibleFullscreenProgress(F)V
    .locals 4

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    sub-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-gt v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/zui/quickstep/views/TaskView;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v2, p1}, Lcom/zui/quickstep/views/TaskView;->setFullscreenProgress(F)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic y(Ljava/util/function/Consumer;Lcom/zui/quickstep/views/TaskView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/zui/quickstep/views/RecentsViewForPad;->Q:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic A(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    invoke-super {p0, p3}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public synthetic B(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public animateUpRunningTaskIconScale()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->animateUpRunningTaskIconScale(F)V

    return-void
.end method

.method public animateUpRunningTaskIconScale(F)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->w:Z

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->animateIconScaleAndDimIntoView()V

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/TaskView;->setIconScaleAnimStartProgress(F)V

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    return-void
.end method

.method public createAdjacentPageAnimForTaskLaunch(Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/util/ClipAnimationHelper;)Landroid/animation/AnimatorSet;
    .locals 0

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    return-object p0
.end method

.method public createAllTasksDismissAnimation(J)Lcom/zui/launcher/util/PendingAnimation;
    .locals 9

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Lcom/zui/launcher/util/PendingAnimation;

    invoke-direct {v1, v0}, Lcom/zui/launcher/util/PendingAnimation;-><init>(Landroid/animation/AnimatorSet;)V

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    sub-int v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-gt v3, v4, :cond_3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    instance-of v7, v5, Lcom/zui/quickstep/views/TaskView;

    if-eqz v7, :cond_2

    move-object v7, v5

    check-cast v7, Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v7}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/zui/quickstep/views/TaskView;->isOnHdmiDevice()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lcom/zui/quickstep/views/TaskView;->cancelDp()Z

    :cond_1
    invoke-direct {p0, v5, v0, p1, p2}, Lcom/zui/quickstep/views/RecentsViewForPad;->l(Landroid/view/View;Landroid/animation/AnimatorSet;J)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iput-object v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->i:Lcom/zui/launcher/util/PendingAnimation;

    new-instance p1, Lcom/zui/quickstep/views/y0;

    invoke-direct {p1, p0, v6}, Lcom/zui/quickstep/views/y0;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;Ljava/util/ArrayList;)V

    invoke-virtual {v1, p1}, Lcom/zui/launcher/util/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method public createAllUnlimitedTasksDismissAnimation(J)Lcom/zui/launcher/util/PendingAnimation;
    .locals 9

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Lcom/zui/launcher/util/PendingAnimation;

    invoke-direct {v1, v0}, Lcom/zui/launcher/util/PendingAnimation;-><init>(Landroid/animation/AnimatorSet;)V

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    :goto_0
    if-gt v3, v4, :cond_3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/zui/quickstep/views/TaskView;

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v6}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v7

    invoke-virtual {v6}, Lcom/zui/quickstep/views/TaskView;->isOnHdmiDevice()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v7}, Lcom/zui/quickstep/views/RecentsViewForPad;->L(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-boolean v7, v7, Lcom/android/systemui/shared/recents/model/Task;->isTaskLocked:Z

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lcom/zui/quickstep/views/TaskView;->cancelDp()Z

    :cond_1
    invoke-direct {p0, v5, v0, p1, p2}, Lcom/zui/quickstep/views/RecentsViewForPad;->l(Landroid/view/View;Landroid/animation/AnimatorSet;J)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iput-object v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->i:Lcom/zui/launcher/util/PendingAnimation;

    new-instance p1, Lcom/zui/quickstep/views/d1;

    invoke-direct {p1, p0}, Lcom/zui/quickstep/views/d1;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;)V

    invoke-virtual {v1, p1}, Lcom/zui/launcher/util/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method public createTaskDismissAnimation(Lcom/zui/quickstep/views/TaskView;ZZJ)Lcom/zui/launcher/util/PendingAnimation;
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->i:Lcom/zui/launcher/util/PendingAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/util/PendingAnimation;->finish(ZI)V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v2, Lcom/zui/launcher/util/PendingAnimation;

    invoke-direct {v2, v0}, Lcom/zui/launcher/util/PendingAnimation;-><init>(Landroid/animation/AnimatorSet;)V

    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v3, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getTaskViewCount()I

    iget-object v4, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    :goto_1
    if-ge v1, v3, :cond_5

    iget-object v5, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, p1, :cond_4

    if-eqz p2, :cond_3

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/zui/quickstep/views/RecentsViewForPad;->l(Landroid/view/View;Landroid/animation/AnimatorSet;J)V

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    const p2, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->isOnHdmiDevice()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->cancelDp()Z

    :cond_7
    iput-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->i:Lcom/zui/launcher/util/PendingAnimation;

    new-instance p2, Lcom/zui/quickstep/views/RecentsViewForPad$e;

    invoke-direct {p2, p0, p1, p3, v4}, Lcom/zui/quickstep/views/RecentsViewForPad$e;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;Lcom/zui/quickstep/views/TaskView;ZI)V

    invoke-virtual {v2, p2}, Lcom/zui/launcher/util/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->i:Lcom/zui/launcher/util/PendingAnimation;

    return-object p0
.end method

.method public createTaskLauncherAnimation(Lcom/zui/quickstep/views/TaskView;J)Lcom/zui/launcher/util/PendingAnimation;
    .locals 5

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/zui/launcher/util/PendingAnimation;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/PendingAnimation;-><init>(Landroid/animation/AnimatorSet;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getSysUiStatusNavFlags()I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/zui/quickstep/views/a1;

    invoke-direct {v4, p0, v0, v2}, Lcom/zui/quickstep/views/a1;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;I[Z)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-direct {v0, v2}, Lcom/zui/quickstep/util/ClipAnimationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/zui/quickstep/util/ClipAnimationHelper;->fromTaskThumbnailView(Lcom/zui/quickstep/views/TaskThumbnailView;Lcom/zui/quickstep/BaseRecentsView;)V

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v2}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/zui/quickstep/util/ClipAnimationHelper;->prepareAnimation(Lcom/zui/launcher/DeviceProfile;Z)V

    invoke-virtual {p0, p1, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->createAdjacentPageAnimForTaskLaunch(Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/util/ClipAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/zui/quickstep/views/k;

    invoke-direct {p2, p0}, Lcom/zui/quickstep/views/k;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;)V

    new-instance p3, Lcom/zui/launcher/util/PendingAnimation;

    invoke-direct {p3, v0}, Lcom/zui/launcher/util/PendingAnimation;-><init>(Landroid/animation/AnimatorSet;)V

    iput-object p3, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->i:Lcom/zui/launcher/util/PendingAnimation;

    new-instance v0, Lcom/zui/quickstep/views/w0;

    invoke-direct {v0, p0, p2, p1}, Lcom/zui/quickstep/views/w0;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;Ljava/util/function/Consumer;Lcom/zui/quickstep/views/TaskView;)V

    invoke-virtual {p3, v0}, Lcom/zui/launcher/util/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->i:Lcom/zui/launcher/util/PendingAnimation;

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public createTaskMenuViewAnimation(Lcom/zui/quickstep/views/TaskView;J)Lcom/zui/launcher/util/PendingAnimation;
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->i:Lcom/zui/launcher/util/PendingAnimation;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/util/PendingAnimation;->finish(ZI)V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Lcom/zui/launcher/util/PendingAnimation;

    invoke-direct {v1, v0}, Lcom/zui/launcher/util/PendingAnimation;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/zui/quickstep/views/RecentsViewForPad;->m(Lcom/zui/quickstep/views/TaskView;Landroid/animation/AnimatorSet;J)V

    const p2, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    iput-object v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->i:Lcom/zui/launcher/util/PendingAnimation;

    new-instance p2, Lcom/zui/quickstep/views/RecentsViewForPad$f;

    invoke-direct {p2, p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad$f;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;Lcom/zui/quickstep/views/TaskView;)V

    invoke-virtual {v1, p2}, Lcom/zui/launcher/util/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->i:Lcom/zui/launcher/util/PendingAnimation;

    return-object p0
.end method

.method public dismissAllTasks(Landroid/view/View;)Z
    .locals 2

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/zui/quickstep/views/RecentsViewForPad;->createAllTasksDismissAnimation(J)Lcom/zui/launcher/util/PendingAnimation;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->I(Lcom/zui/launcher/util/PendingAnimation;)V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p0

    const/4 p1, 0x1

    const/16 v0, 0xd

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnControl(II)V

    return p1
.end method

.method public dismissAllUnlimitedTasks(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->hasDismissTask()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v1, v2}, Lcom/zui/quickstep/views/RecentsViewForPad;->createAllUnlimitedTasksDismissAnimation(J)Lcom/zui/launcher/util/PendingAnimation;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->I(Lcom/zui/launcher/util/PendingAnimation;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    const v1, 0x7f1205ae

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p0

    const/16 p1, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnControl(II)V

    return-void
.end method

.method public dismissTask(Lcom/zui/quickstep/views/TaskView;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/RecentsAdapter;->removeTaskView(Lcom/zui/quickstep/views/TaskView;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->maybeDrawEmptyMessage(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public finishRecentsAnimation(ZLjava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/RecentsAnimationWrapper;->finish(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public getChildCount()I
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getClearAllButton()Lcom/zui/quickstep/views/ClearAllButton;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->p:Lcom/zui/quickstep/views/ClearAllButton;

    return-object p0
.end method

.method public getContentAlpha()F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->N:F

    return p0
.end method

.method public getCurrentPage()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEventDispatcher(Lcom/zui/launcher/graphics/RotationMode;)Ljava/util/function/Consumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/graphics/RotationMode;",
            ")",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/zui/launcher/graphics/RotationMode;->isTransposed:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget p1, p1, Lcom/zui/launcher/graphics/RotationMode;->surfaceRotation:F

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_0
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    new-instance v1, Lcom/zui/quickstep/views/b1;

    invoke-direct {v1, p0, v0, p1}, Lcom/zui/quickstep/views/b1;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    return-object v1

    :cond_1
    new-instance p1, Lcom/zui/quickstep/views/v0;

    invoke-direct {p1, p0}, Lcom/zui/quickstep/views/v0;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;)V

    return-object p1
.end method

.method public getNextPage()I
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getRunningTaskIndex()I

    move-result v0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsAdapter;->getItemCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getNextTaskView()Lcom/zui/quickstep/views/TaskView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public getPageNearestToCenterOfScreen()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPageSpacing()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPagedViewOrientedState()Lcom/zui/quickstep/util/RecentsOrientedState;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRunningTaskIndex()I
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    invoke-virtual {v2, v1}, Lcom/zui/quickstep/RecentsAdapter;->getItem(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v3, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->u:I

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getRunningTaskView()Lcom/zui/quickstep/views/TaskView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->u:I

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public getScrollOffset()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollX()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScaleX()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getScroller()Landroid/widget/OverScroller;
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mScroller:Landroid/widget/OverScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mScroller:Landroid/widget/OverScroller;

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method public getTaskSize(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->getTaskSize(Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V

    return-void
.end method

.method protected getTaskSize(Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/zui/quickstep/util/LayoutUtils;->calculateLauncherTaskSize(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getTaskView(I)Lcom/zui/quickstep/views/TaskView;
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v2}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/TaskView;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskViewCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsAdapter;->getItemCount()I

    move-result p0

    return p0
.end method

.method public getTempClipAnimationHelper()Lcom/zui/quickstep/util/ClipAnimationHelper;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mTempClipAnimationHelper:Lcom/zui/quickstep/util/ClipAnimationHelper;

    return-object p0
.end method

.method public getTranlateYWhenClick()J
    .locals 2

    iget p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->m:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public getTranslationX()F
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getTranslationX()F

    move-result p0

    return p0
.end method

.method public getVisibility()I
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getVisibleCount()I
    .locals 1

    iget v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->h:I

    iget p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->g:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getVisibleTaskView(I)Lcom/zui/quickstep/views/TaskView;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/TaskView;

    return-object p0
.end method

.method public hasDismissTask()Z
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    invoke-virtual {v3, v2}, Lcom/zui/quickstep/RecentsAdapter;->getItem(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/zui/quickstep/views/RecentsViewForPad;->L(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-boolean v3, v3, Lcom/android/systemui/shared/recents/model/Task;->isTaskLocked:Z

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public indexOfChild(Lcom/zui/quickstep/views/TaskView;)I
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public initRecyclerView()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/zui/quickstep/views/RecentsRecyclerView;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/zui/quickstep/views/RecentsRecyclerView;

    iput-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {v2, p0}, Lcom/zui/quickstep/views/RecentsRecyclerView;->setup(Lcom/zui/quickstep/views/RecentsViewForPad;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/zui/quickstep/RecentsAdapter;

    invoke-direct {v1}, Lcom/zui/quickstep/RecentsAdapter;-><init>()V

    iput-object v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    new-instance v0, Lcom/zui/quickstep/RecentsItemDecoration;

    invoke-direct {v0}, Lcom/zui/quickstep/RecentsItemDecoration;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->e:Lcom/zui/quickstep/RecentsItemDecoration;

    invoke-direct {p0, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->setItemDecoration(Lcom/zui/quickstep/RecentsItemDecoration;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->e:Lcom/zui/quickstep/RecentsItemDecoration;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    new-instance v1, Lcom/zui/quickstep/views/RecentsViewForPad$b;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/views/RecentsViewForPad$b;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->a:Lcom/zui/quickstep/RecentsModel;

    new-instance v1, Lcom/zui/quickstep/views/x0;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/views/x0;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    return-void
.end method

.method public isCurrentPage(I)Z
    .locals 1

    iget p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->g:I

    const/4 v0, 0x0

    if-lez p0, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRtl()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mIsRtl:Z

    return p0
.end method

.method public isTaskViewVisible(Lcom/zui/quickstep/views/TaskView;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected maybeDrawEmptyMessage(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->M:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->K:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->K:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->M:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->a:Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsModel;->getThumbnailCache()Lcom/zui/quickstep/TaskThumbnailCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->addCallback(Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;)V

    sget-object v0, Lcom/zui/quickstep/RecentsModel;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/RecentsModel;->addThumbnailChangeListener(Lcom/zui/quickstep/RecentsModel$TaskThumbnailChangeListener;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->t:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->a:Lcom/zui/quickstep/RecentsModel;

    new-instance v1, Lcom/zui/quickstep/views/x0;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/views/x0;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->s:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->addOnChangeListener(Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->a:Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsModel;->getThumbnailCache()Lcom/zui/quickstep/TaskThumbnailCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->removeCallback(Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;)V

    sget-object v0, Lcom/zui/quickstep/RecentsModel;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/RecentsModel;->removeThumbnailChangeListener(Lcom/zui/quickstep/RecentsModel$TaskThumbnailChangeListener;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->t:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->s:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->removeOnChangeListener(Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;)V

    return-void
.end method

.method public onDigitalWellbeingToastShown()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->initRecyclerView()V

    return-void
.end method

.method public onGestureAnimationEnd()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->setRunningTaskHidden(Z)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->animateUpRunningTaskIconScale()V

    return-void
.end method

.method public onGestureAnimationStart(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->showCurrentTask(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->setRunningTaskHidden(Z)V

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->setRunningTaskIconScaledDown(Z)V

    return-void
.end method

.method public onHighResLoadingStateChanged(Z)V
    .locals 0

    sget-object p0, Lcom/zui/quickstep/views/RecentsViewForPad;->Q:Ljava/lang/String;

    const-string p1, "onHighResLoadingStateChanged: "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onIdpChanged(ILcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 0

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->a:Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsModel;->getIconCache()Lcom/zui/quickstep/TaskIconCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/quickstep/TaskIconCache;->clear()V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->reset()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onMulti(Lcom/zui/quickstep/views/TaskView;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/RecentsAdapter;->notifyItemsChange(Lcom/zui/quickstep/views/TaskView;)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->E()V

    return-void
.end method

.method public onStateTransitionComplete(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    return-void
.end method

.method public onStateTransitionStart(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    iget-boolean p1, p1, Lcom/zui/launcher/LauncherState;->overviewUi:Z

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->setOverviewStateEnabled(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->setFreezeViewVisibility(Z)V

    return-void
.end method

.method public onSwipeUpAnimationSuccess()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->animateUpRunningTaskIconScale(F)V

    :cond_0
    return-void
.end method

.method public onTaskIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->getIconView()Lcom/zui/quickstep/views/IconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/quickstep/views/IconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zui/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onTaskLaunched(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->resetTaskVisuals()V

    :cond_0
    return-void
.end method

.method protected onTaskStackUpdated()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->updateEmptyMessage()V

    return-void
.end method

.method public onTaskThumbnailChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_7

    if-eq v2, v4, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iput-boolean v5, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->C:Z

    :cond_1
    :goto_0
    iput-boolean v5, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->k:Z

    goto/16 :goto_6

    :cond_2
    iget-boolean v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->C:Z

    if-eqz v2, :cond_d

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->r()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->E:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->F:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->squaredHypot(FF)F

    move-result v0

    iget v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->D:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    :cond_3
    iput-boolean v5, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->C:Z

    goto/16 :goto_6

    :cond_4
    iget-boolean v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->C:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->startHome()V

    :cond_5
    iput-boolean v5, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->C:Z

    iget-boolean v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->k:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->p:Lcom/zui/quickstep/views/ClearAllButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->q:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_1

    :cond_6
    move v0, v5

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->p:Lcom/zui/quickstep/views/ClearAllButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->r()Z

    move-result v2

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->L:Z

    if-eqz v2, :cond_8

    :goto_2
    iput-boolean v4, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->C:Z

    goto :goto_5

    :cond_8
    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->J()V

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->p:Lcom/zui/quickstep/views/ClearAllButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->q:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v4

    goto :goto_3

    :cond_9
    move v2, v5

    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_a

    move v3, v4

    goto :goto_4

    :cond_a
    move v3, v5

    :goto_4
    if-eqz v2, :cond_b

    iput-boolean v4, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->k:Z

    iget-object v6, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->p:Lcom/zui/quickstep/views/ClearAllButton;

    invoke-virtual {v6, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_b
    if-nez v2, :cond_c

    if-nez v3, :cond_c

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->r:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollX()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    :goto_5
    iput v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->E:I

    iput v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->F:I

    :cond_d
    :goto_6
    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->r()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->shouldStealTouchFromSiblingsBelow(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_7

    :cond_e
    move v4, v5

    :cond_f
    :goto_7
    return v4
.end method

.method public performHapticFeedback(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->performHapticFeedback(II)Z

    move-result p0

    return p0
.end method

.method public reloadIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->a:Lcom/zui/quickstep/RecentsModel;

    iget v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->y:I

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/RecentsModel;->isTaskListValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->a:Lcom/zui/quickstep/RecentsModel;

    new-instance v1, Lcom/zui/quickstep/views/x0;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/views/x0;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->y:I

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->setCurrentTask(I)V

    iput v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->P:I

    iput v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->y:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    iput-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mClipAnimationHelper:Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v1}, Lcom/zui/launcher/BaseActivity;->isStatusBarDark()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->E()V

    return-void
.end method

.method public resetTaskVisuals()V
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    :goto_0
    if-gt v1, v2, :cond_2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/quickstep/views/TaskView;

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->P:I

    invoke-virtual {v3}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/zui/quickstep/views/TaskView;->resetVisualProperties()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->v:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->setRunningTaskHidden(Z)V

    :cond_3
    iget v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->P:I

    iget v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->u:I

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->o()V

    :cond_4
    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCleanupAlpha(F)V
    .locals 0

    return-void
.end method

.method public setClipAnimationHelper(Lcom/zui/quickstep/util/ClipAnimationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mClipAnimationHelper:Lcom/zui/quickstep/util/ClipAnimationHelper;

    return-void
.end method

.method public setContentAlpha(F)V
    .locals 3

    iget v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->N:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->N:F

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->D()V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->p:Lcom/zui/quickstep/views/ClearAllButton;

    iget v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->N:F

    invoke-virtual {v0, v2}, Lcom/zui/quickstep/views/ClearAllButton;->setContentAlpha(F)V

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->I:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setCurrentTask(I)V
    .locals 2

    iget v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->u:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->setRunningTaskIconScaledDown(Z)V

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->setRunningTaskHidden(Z)V

    :cond_1
    iput p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->u:I

    return-void
.end method

.method public setFreezeViewVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->B:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->B:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->N:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setFullscreenProgress(F)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->O:F

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->setVisibleFullscreenProgress(F)V

    return-void
.end method

.method public setLiveTileOverlay(Lcom/zui/quickstep/views/LiveTileOverlay;)V
    .locals 0

    return-void
.end method

.method public setOverViewStateChange()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    iget-boolean v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->b:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->b:Z

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->E()V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    iget-boolean v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->b:Z

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/RecentsAdapter;->setOrientation(Z)V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOverviewStateEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->z:Z

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->M()V

    return-void
.end method

.method public setRecentsAnimationWrapper(Lcom/zui/quickstep/RecentsAnimationWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    return-void
.end method

.method public setRunningTaskHidden(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->v:Z

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->N:F

    :goto_0
    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/TaskView;->setStableAlpha(F)V

    :cond_1
    return-void
.end method

.method public setRunningTaskIconScaledDown(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->w:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->w:Z

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->o()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->p:Lcom/zui/quickstep/views/ClearAllButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->G()V

    :cond_1
    return-void
.end method

.method protected shouldStealTouchFromSiblingsBelow(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v2}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p0}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v1

    return p0

    :cond_1
    return v1
.end method

.method public shouldUseMultiWindowTaskSizeStrategy()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0
.end method

.method public showCurrentTask(I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    invoke-virtual {v1}, Lcom/zui/quickstep/RecentsAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/zui/quickstep/views/RecentsViewForPad;->p:Lcom/zui/quickstep/views/ClearAllButton;

    iget-object v2, v0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-interface {v2}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/zui/quickstep/views/ClearAllButton;->show(Lcom/zui/launcher/views/BaseDragLayer;Landroid/view/View;)V

    new-instance v1, Lcom/android/systemui/shared/recents/model/Task;

    new-instance v11, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/zui/quickstep/views/RecentsViewForPad;

    invoke-direct {v6, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    move/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJI)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    new-instance v12, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v12}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    const/4 v13, 0x0

    new-instance v14, Landroid/content/ComponentName;

    const-string v3, ""

    invoke-direct {v14, v3, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    const-string v7, ""

    const-string v8, ""

    move-object v3, v1

    move-object v4, v11

    move v11, v2

    invoke-direct/range {v3 .. v15}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/lang/String;Ljava/lang/String;IIZLandroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;Z)V

    iput-object v1, v0, Lcom/zui/quickstep/views/RecentsViewForPad;->x:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    iget-boolean v3, v0, Lcom/zui/quickstep/views/RecentsViewForPad;->b:Z

    invoke-virtual {v2, v1, v3}, Lcom/zui/quickstep/RecentsAdapter;->addData(Lcom/android/systemui/shared/recents/model/Task;Z)V

    :cond_0
    iget-boolean v1, v0, Lcom/zui/quickstep/views/RecentsViewForPad;->v:Z

    invoke-virtual/range {p0 .. p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->setCurrentTask(I)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/RecentsViewForPad;->setRunningTaskHidden(Z)V

    iget-object v1, v0, Lcom/zui/quickstep/views/RecentsViewForPad;->a:Lcom/zui/quickstep/RecentsModel;

    new-instance v2, Lcom/zui/quickstep/views/x0;

    invoke-direct {v2, v0}, Lcom/zui/quickstep/views/x0;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad;)V

    invoke-virtual {v1, v2}, Lcom/zui/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    move-result v1

    iput v1, v0, Lcom/zui/quickstep/views/RecentsViewForPad;->y:I

    return-void
.end method

.method public showHintIfNeeded(Z)V
    .locals 0

    return-void
.end method

.method public showNextTask()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getRunningTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getTaskViewCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->getNextTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/zui/quickstep/views/TaskView;->launchTask(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/TaskView;->launchTask(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public snapToPage(I)Z
    .locals 1

    const/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->snapToPage(II)Z

    move-result p0

    return p0
.end method

.method public snapToPage(II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startHome()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->MULTI_WITH_RECENTS_ALLAPPS:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    goto :goto_0
.end method

.method public startWipe(Lcom/zui/quickstep/views/TaskView;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->f:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->c:Lcom/zui/quickstep/views/RecentsRecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public synthetic t(Lcom/zui/quickstep/views/TaskView;IILandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getMenuView()Lcom/zui/quickstep/views/TaskMenuView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/views/TaskView;->y0(I)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p4, p2}, Lcom/zui/quickstep/views/RecentsViewForPad;->p(Lcom/zui/quickstep/views/TaskMenuView;FI)V

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    int-to-float p0, p2

    cmpl-float p2, p4, p0

    if-lez p2, :cond_1

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/views/TaskMenuView;->getOptionCount(Lcom/zui/quickstep/views/TaskView;)I

    move-result p2

    div-int/2addr p3, p2

    sub-float/2addr p4, p0

    float-to-int p0, p4

    div-int/2addr p0, p3

    const/4 p3, 0x0

    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, p3, p2}, Lcom/zui/launcher/Utilities;->boundToRange(III)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/zui/quickstep/views/TaskMenuView;->tapItem(Lcom/zui/quickstep/views/TaskView;I)V

    :cond_1
    return-void
.end method

.method public synthetic u(Ljava/util/ArrayList;Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->n(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateEmptyMessage()V
    .locals 5

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->J:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->J:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iget-boolean v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->L:Z

    if-ne v0, v2, :cond_4

    if-nez v1, :cond_4

    return-void

    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->H:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_5
    const-string v2, ""

    :goto_2
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->L:Z

    invoke-direct {p0, v1}, Lcom/zui/quickstep/views/RecentsViewForPad;->K(Z)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->L:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->p:Lcom/zui/quickstep/views/ClearAllButton;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/zui/quickstep/views/ClearAllButton;->remove()V

    :cond_6
    return-void
.end method

.method public updateLiveTileIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/zui/quickstep/views/TaskView;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/zui/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V

    :cond_0
    return-object p0
.end method

.method public synthetic v(Ljava/util/ArrayList;Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 1

    iget-boolean p2, p2, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->isSuccess:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeAllRecentTasks()V

    iget-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    invoke-virtual {p2}, Lcom/zui/quickstep/RecentsAdapter;->clear()V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->F()V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeAllRunningAppProcesses(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->startHome()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->i:Lcom/zui/launcher/util/PendingAnimation;

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->L:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->G:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public synthetic w(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 5

    iget-boolean p1, p1, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->isSuccess:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsAdapter;->getData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, v1}, Lcom/zui/quickstep/views/RecentsViewForPad;->L(Lcom/android/systemui/shared/recents/model/Task;)V

    sget-object v2, Lcom/zui/quickstep/views/RecentsViewForPad;->Q:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dismissAllUnlimitedTasks, task==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/systemui/shared/recents/model/Task;->isTaskLocked:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/zui/quickstep/views/RecentsViewForPad;->Q:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeTask, task==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeAppProcess(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->d:Lcom/zui/quickstep/RecentsAdapter;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAdapter;->clear()V

    invoke-direct {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->F()V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->hasDockedTask(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeAllRunningAppProcesses(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_2
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->startHome()V

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->i:Lcom/zui/launcher/util/PendingAnimation;

    return-void
.end method

.method public synthetic x(I[ZLandroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object v0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    const v2, 0x3f59999a    # 0.85f

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 p3, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p3

    const/4 p3, 0x1

    if-ltz p1, :cond_1

    move p1, p3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    aget-boolean v0, p2, v2

    if-eq p1, v0, :cond_2

    aput-boolean p1, p2, v2

    invoke-virtual {p0, p3, p3}, Lcom/zui/quickstep/views/RecentsViewForPad;->performHapticFeedback(II)Z

    :cond_2
    return-void
.end method

.method public synthetic z(Ljava/util/function/Consumer;Lcom/zui/quickstep/views/TaskView;Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 2

    iget-boolean v0, p3, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->isSuccess:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/quickstep/views/c1;

    invoke-direct {v0, p1, p2}, Lcom/zui/quickstep/views/c1;-><init>(Ljava/util/function/Consumer;Lcom/zui/quickstep/views/TaskView;)V

    const/4 p1, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/zui/quickstep/views/TaskView;->launchTask(ZLjava/util/function/Consumer;Landroid/os/Handler;)V

    invoke-virtual {p2}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    iget p3, p3, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->logAction:I

    const/4 v1, 0x2

    invoke-virtual {p0, p2}, Lcom/zui/quickstep/views/RecentsViewForPad;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result p2

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {p1}, Lcom/zui/quickstep/TaskUtils;->getLaunchComponentKeyForTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/zui/launcher/util/ComponentKey;

    move-result-object p1

    invoke-virtual {v0, p3, v1, p2, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->logTaskLaunchOrDismiss(IIILcom/zui/launcher/util/ComponentKey;)V

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad;->i:Lcom/zui/launcher/util/PendingAnimation;

    return-void
.end method
