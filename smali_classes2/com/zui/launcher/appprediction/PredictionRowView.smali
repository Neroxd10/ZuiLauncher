.class public Lcom/zui/launcher/appprediction/PredictionRowView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;
.implements Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/zui/launcher/allapps/FloatingHeaderRow;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# static fields
.field private static final p:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Lcom/zui/launcher/appprediction/PredictionRowView;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Landroid/view/animation/Interpolator;

.field private static final r:Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/zui/launcher/Launcher;

.field private final b:Lcom/zui/launcher/appprediction/PredictionUiStateManager;

.field private final c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/appprediction/ComponentKeyMapper;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfoWithIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/zui/launcher/keyboard/FocusIndicatorHelper;

.field private final g:I

.field private final h:I

.field private i:I

.field private j:Lcom/zui/launcher/allapps/FloatingHeaderView;

.field private k:Z

.field private l:F

.field private final m:Lcom/zui/quickstep/AnimatedFloat;

.field private final n:Lcom/zui/quickstep/AnimatedFloat;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/appprediction/PredictionRowView$a;

    const-string v1, "textAlpha"

    invoke-direct {v0, v1}, Lcom/zui/launcher/appprediction/PredictionRowView$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/appprediction/PredictionRowView;->p:Landroid/util/IntProperty;

    sget-object v0, Lcom/zui/launcher/appprediction/i;->a:Lcom/zui/launcher/appprediction/i;

    sput-object v0, Lcom/zui/launcher/appprediction/PredictionRowView;->q:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/zui/launcher/model/AppLaunchTracker;->CONTAINER_PREDICTIONS:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/launcher/touch/ItemClickHandler;->getInstance(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/appprediction/PredictionRowView;->r:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/appprediction/PredictionRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->d:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->e:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->l:F

    new-instance p2, Lcom/zui/quickstep/AnimatedFloat;

    new-instance v0, Lcom/zui/launcher/appprediction/j;

    invoke-direct {v0, p0}, Lcom/zui/launcher/appprediction/j;-><init>(Lcom/zui/launcher/appprediction/PredictionRowView;)V

    invoke-direct {p2, v0}, Lcom/zui/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->m:Lcom/zui/quickstep/AnimatedFloat;

    new-instance p2, Lcom/zui/quickstep/AnimatedFloat;

    new-instance v0, Lcom/zui/launcher/appprediction/j;

    invoke-direct {v0, p0}, Lcom/zui/launcher/appprediction/j;-><init>(Lcom/zui/launcher/appprediction/PredictionRowView;)V

    invoke-direct {p2, v0}, Lcom/zui/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->n:Lcom/zui/quickstep/AnimatedFloat;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->o:Z

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p2, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;

    invoke-direct {p2, p0}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->f:Lcom/zui/launcher/keyboard/FocusIndicatorHelper;

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iput p2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->c:I

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2, p0}, Lcom/zui/launcher/BaseActivity;->addOnDeviceProfileChangeListener(Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    sget-object p2, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/appprediction/PredictionUiStateManager;

    iput-object p2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->b:Lcom/zui/launcher/appprediction/PredictionUiStateManager;

    const p2, 0x1010038

    invoke-static {p1, p2}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->g:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->h:I

    iput p1, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->i:I

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/PredictionRowView;->g()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/appprediction/PredictionRowView;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->i:I

    return p0
.end method

.method private b()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->c:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->c:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->c:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0035

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/BubbleTextView;

    sget-object v1, Lcom/zui/launcher/appprediction/PredictionRowView;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/zui/launcher/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/zui/launcher/BubbleTextView;->setLongPressTimeoutFactor(F)V

    iget-object v3, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->f:Lcom/zui/launcher/keyboard/FocusIndicatorHelper;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/zui/launcher/DeviceProfile;->allAppsCellHeightPx:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->g:I

    iget v3, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->i:I

    invoke-static {v1, v3}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v1

    move v3, v2

    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v4}, Lcom/zui/launcher/BubbleTextView;->reset()V

    if-le v0, v3, :cond_4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/zui/launcher/AppInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/AppInfo;

    invoke-virtual {v4, v5}, Lcom/zui/launcher/BubbleTextView;->applyFromApplicationInfo(Lcom/zui/launcher/AppInfo;)V

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v4, v5}, Lcom/zui/launcher/BubbleTextView;->applyFromWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_3
    :goto_3
    invoke-virtual {v4, v1}, Lcom/zui/launcher/BubbleTextView;->setTextColor(I)V

    goto :goto_5

    :cond_4
    if-nez v0, :cond_5

    const/16 v5, 0x8

    goto :goto_4

    :cond_5
    const/4 v5, 0x4

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    if-lez v0, :cond_7

    const/4 v2, 0x1

    :cond_7
    iget-boolean v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->o:Z

    if-eq v2, v0, :cond_8

    iput-boolean v2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->o:Z

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->reapplyUi()V

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/PredictionRowView;->g()V

    :cond_8
    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->j:Lcom/zui/launcher/allapps/FloatingHeaderView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->onHeightUpdated()V

    return-void
.end method

.method public static synthetic c(Lcom/zui/launcher/appprediction/PredictionRowView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/PredictionRowView;->f()V

    return-void
.end method

.method static synthetic d(F)F
    .locals 2

    const v0, 0x3f4ccccd    # 0.8f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sub-float/2addr p0, v0

    const v0, 0x3e4ccccd    # 0.2f

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method private e(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/appprediction/ComponentKeyMapper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/zui/launcher/ItemInfoWithIcon;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/PredictionRowView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/appprediction/ComponentKeyMapper;

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/PredictionRowView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->getApp(Lcom/zui/launcher/allapps/AllAppsStore;)Lcom/zui/launcher/ItemInfoWithIcon;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->c:I

    if-ne v1, v2, :cond_1

    :cond_3
    return-object v0
.end method

.method private f()V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->n:Lcom/zui/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->l:F

    mul-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    sget-object v0, Lcom/zui/launcher/appprediction/PredictionRowView;->q:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->n:Lcom/zui/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/zui/quickstep/AnimatedFloat;->value:F

    invoke-interface {v0, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    sub-float/2addr v1, v0

    iget-boolean v2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->k:Z

    xor-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->m:Lcom/zui/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/zui/quickstep/AnimatedFloat;->value:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-static {p0}, Lcom/zui/launcher/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->f:Lcom/zui/launcher/keyboard/FocusIndicatorHelper;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfoWithIcon;

    if-ne v0, p2, :cond_0

    const/4 p0, 0x7

    iput p0, p4, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    iput p1, p3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public getExpectedHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->allAppsCellHeightPx:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getPredictedApps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/ItemInfoWithIcon;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTypeClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/zui/launcher/appprediction/PredictionRowView;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/zui/launcher/appprediction/PredictionRowView;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasVisibleContent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->o:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->b:Lcom/zui/launcher/appprediction/PredictionUiStateManager;

    iget-object v1, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->setTargetAppsView(Lcom/zui/launcher/allapps/AllAppsContainerView;)V

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/PredictionRowView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/appprediction/AllAppsTipView;->scheduleShowIfNeeded(Lcom/zui/launcher/Launcher;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->b:Lcom/zui/launcher/appprediction/PredictionUiStateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->setTargetAppsView(Lcom/zui/launcher/allapps/AllAppsContainerView;)V

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/PredictionRowView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onDeviceProfileChanged(Lcom/zui/launcher/DeviceProfile;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/PredictionRowView;->b()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/appprediction/PredictionRowView;->getExpectedHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setContentVisibility(ZZLcom/zui/launcher/anim/PropertySetter;Landroid/view/animation/Interpolator;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    iget v2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->h:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->i:I

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/zui/launcher/appprediction/PredictionRowView;->setTextAlpha(I)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/zui/launcher/appprediction/PredictionRowView;->p:Landroid/util/IntProperty;

    invoke-virtual {p3, p0, v0, v2, p4}, Lcom/zui/launcher/anim/PropertySetter;->setInt(Ljava/lang/Object;Landroid/util/Property;ILandroid/animation/TimeInterpolator;)V

    :goto_2
    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->n:Lcom/zui/quickstep/AnimatedFloat;

    sget-object v2, Lcom/zui/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    move p2, v3

    goto :goto_3

    :cond_4
    move p2, v1

    :goto_3
    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v0, v2, p2, v4}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->m:Lcom/zui/quickstep/AnimatedFloat;

    sget-object p2, Lcom/zui/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    if-eqz p1, :cond_5

    move v1, v3

    :cond_5
    invoke-virtual {p3, p0, p2, v1, p4}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;Lcom/zui/launcher/DeviceProfile;)V
    .locals 1

    iget p1, p2, Lcom/zui/launcher/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget p2, p2, Lcom/zui/launcher/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0, p1, p2, p1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setPredictedApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/appprediction/ComponentKeyMapper;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/zui/launcher/appprediction/PredictionRowView;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/PredictionRowView;->b()V

    return-void
.end method

.method public setTextAlpha(I)V
    .locals 2

    iput p1, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->i:I

    iget v0, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->g:I

    invoke-static {v0, p1}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/BubbleTextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVerticalScroll(IZ)V
    .locals 0

    iput-boolean p2, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->k:Z

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/PredictionRowView;->f()V

    if-nez p2, :cond_0

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->l:F

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/PredictionRowView;->f()V

    :cond_0
    return-void
.end method

.method public setup(Lcom/zui/launcher/allapps/FloatingHeaderView;[Lcom/zui/launcher/allapps/FloatingHeaderRow;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/appprediction/PredictionRowView;->j:Lcom/zui/launcher/allapps/FloatingHeaderView;

    return-void
.end method

.method public shouldDraw()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
