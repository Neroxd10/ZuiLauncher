.class public Lcom/zui/launcher/widget/picker/WidgetsFullSheet;
.super Lcom/zui/launcher/widget/BaseWidgetSheet;
.source ""

# interfaces
.implements Lcom/zui/launcher/Insettable;
.implements Lcom/zui/launcher/widget/LauncherAppWidgetHost$ProviderChangedListener;
.implements Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;
.implements Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;
.implements Lcom/zui/launcher/widget/picker/search/SearchModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;,
        Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/Button;

.field private C:Landroid/widget/Button;

.field private final b:Landroid/graphics/Rect;

.field private final c:Z

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/UserHandle;

.field private f:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/zui/launcher/views/ArrowTipView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final i:Landroid/view/View$OnLayoutChangeListener;

.field private final j:Ljava/lang/Runnable;

.field private final k:I

.field private final l:I

.field private final m:I

.field private n:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:I

.field private s:Landroid/view/View;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/ImageView;

.field private w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

.field private x:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;

.field private y:Landroid/widget/FrameLayout;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    const-class v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/widget/BaseWidgetSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->b:Landroid/graphics/Rect;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->e:Landroid/os/UserHandle;

    new-instance p2, Lcom/zui/launcher/widget/picker/o;

    invoke-direct {p2, p0}, Lcom/zui/launcher/widget/picker/o;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->f:Ljava/util/function/Predicate;

    invoke-interface {p2}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->g:Ljava/util/function/Predicate;

    new-instance p2, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$a;

    invoke-direct {p2, p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$a;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->i:Landroid/view/View$OnLayoutChangeListener;

    new-instance p2, Lcom/zui/launcher/widget/picker/f;

    invoke-direct {p2, p0}, Lcom/zui/launcher/widget/picker/f;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->j:Ljava/lang/Runnable;

    const/4 p2, 0x4

    iput p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->r:I

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-class p2, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps;->getProfiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->f:Ljava/util/function/Predicate;

    iget-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->g:Ljava/util/function/Predicate;

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->f:Ljava/util/function/Predicate;

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    new-instance p2, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-direct {p2, p0, v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;I)V

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    new-instance p2, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-direct {p2, p0, p3}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;I)V

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    new-instance p2, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;I)V

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    new-instance p2, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    const/4 v1, 0x3

    invoke-direct {p2, p0, v1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;I)V

    invoke-virtual {p1, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07009f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    iput p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->k:I

    iget-boolean p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0708c2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :cond_3
    iput v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->l:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07088f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    mul-int/2addr p1, p3

    iput p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->m:I

    return-void
.end method

.method private static C(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v0

    return p0
.end method

.method private D(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mContent:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->setTranslationShift(F)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v0, v1, v4

    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x10b

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$b;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/zui/launcher/widget/picker/c;

    invoke-direct {p1, p0}, Lcom/zui/launcher/widget/picker/c;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->setTranslationShift(F)V

    new-instance p1, Lcom/zui/launcher/widget/picker/q;

    invoke-direct {p1, p0}, Lcom/zui/launcher/widget/picker/q;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private E()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->x:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->g(Z)V

    return-void
.end method

.method private F()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->resetExpandedHeader()V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->resetExpandedHeader()V

    return-void
.end method

.method private G(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2, p0}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private H()V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->hasSeenEducationDialog()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/widget/picker/m;

    invoke-direct {v0, p0}, Lcom/zui/launcher/widget/picker/m;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->hasSeenEducationTip()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->i:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private I()Lcom/zui/launcher/views/WidgetsEduView;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launcher.widgets_education_dialog_seen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/views/WidgetsEduView;->showEducationDialog(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/views/WidgetsEduView;

    move-result-object p0

    return-object p0
.end method

.method private J()Z
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->r:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v3, Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/zui/launcher/DeviceProfile;->cellWidthPx:I

    iget v4, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->m:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    iput v2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->r:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->r:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->setMaxHorizontalSpansPerRow(I)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->r:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->setMaxHorizontalSpansPerRow(I)V

    iget-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    move-result-object v0

    iget v2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->r:I

    invoke-virtual {v0, v2}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->setMaxHorizontalSpansPerRow(I)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    move-result-object v0

    iget v2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->r:I

    invoke-virtual {v0, v2}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->setMaxHorizontalSpansPerRow(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    :cond_2
    return v1
.end method

.method private K(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)V
    .locals 9

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object v3

    if-eqz v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->c(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->c(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)I

    move-result p1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->t:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    const v3, 0x7f12052a

    goto :goto_3

    :cond_4
    const v3, 0x7f12052b

    :goto_3
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->v:Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v3

    :goto_4
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->v:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_5
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->getRealSizePoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/zui/launcher/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    if-lez v4, :cond_7

    goto :goto_6

    :cond_7
    const/high16 v4, 0x41f00000    # 30.0f

    iget-object v5, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result v4

    :goto_6
    int-to-double v5, v3

    const-wide v7, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v5, v7

    double-to-int v3, v5

    add-int/2addr v4, v3

    iput v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->u:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    const/16 v2, 0x8

    :cond_8
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez v1, :cond_9

    if-nez v0, :cond_9

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->v:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_9
    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->hasSeenEducationTip()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic f(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)Ljava/util/function/Predicate;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->f:Ljava/util/function/Predicate;

    return-object p0
.end method

.method static synthetic g(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)Ljava/util/function/Predicate;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->g:Ljava/util/function/Predicate;

    return-object p0
.end method

.method private getViewToShowEducationTip()Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->g:Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->g:Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->g:Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    iget-boolean v2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->p:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->B:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x2

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->o:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    if-nez p0, :cond_4

    move p0, v1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p0

    :goto_2
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-static {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/zui/launcher/widget/picker/a0;

    invoke-direct {v2, p0}, Lcom/zui/launcher/widget/picker/a0;-><init>(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/widget/picker/p;->a:Lcom/zui/launcher/widget/picker/p;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;->mTableContainer:Lcom/zui/launcher/widget/picker/WidgetsListTableView;

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static getWidgetsView(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const v0, 0x7f0a02d0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    return-object p0
.end method

.method static synthetic h(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->r:I

    return p0
.end method

.method private i(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V
    .locals 1

    invoke-virtual {p1}, Lcom/zui/launcher/BaseRecyclerView;->bindFastScrollbar()V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->n:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->E()V

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->F()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->n:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->x:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->h(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V

    :cond_0
    return-void
.end method

.method public static isShown(Lcom/zui/launcher/Launcher;)Z
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->getOpenView(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private j()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "widgets_language"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->clearCache()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "widgets_ori"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->clearWidgetCache()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "widgets_ui"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->clearWidgetCache()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private m(II)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    iget-object v2, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mContent:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method private n(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/widget/picker/b;

    invoke-direct {v0, p2}, Lcom/zui/launcher/widget/picker/b;-><init>(Ljava/util/function/Predicate;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/zui/launcher/widget/picker/n;

    invoke-direct {p2, p0}, Lcom/zui/launcher/widget/picker/n;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static synthetic o(Ljava/util/function/Predicate;Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method static synthetic q(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    instance-of p0, p0, Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;

    return p0
.end method

.method public static synthetic r(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method

.method private setDrawableDivider(Landroid/widget/Button;)V
    .locals 4

    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p0, p0}, Landroid/widget/Button;->measure(II)V

    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x3

    aget-object p1, p1, v0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v1, v2

    sub-int/2addr p0, v3

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v2, p0

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p0

    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method private setViewVisibilityBasedOnSearch(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->p:Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object p1, p1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->g:Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {p1, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->o:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->s:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->A:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->B:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->K(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->A:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->C:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setSelected(Z)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->onWidgetsBound()V

    :goto_1
    return-void
.end method

.method public static show(Lcom/zui/launcher/Launcher;Z)Lcom/zui/launcher/widget/picker/WidgetsFullSheet;
    .locals 4

    invoke-static {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->isShown(Lcom/zui/launcher/Launcher;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->getOpenView(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d01a0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    invoke-virtual {v0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->attachToContainer()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    invoke-direct {v0, p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->D(Z)V

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object p1

    const/4 v2, 0x3

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isNightMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {p0, p1}, Lcom/zui/launcher/Utilities;->setNavigationBarDark(Landroid/app/Activity;Z)V

    return-object v0
.end method


# virtual methods
.method public synthetic A()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->hasSeenEducationTip()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->i:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public synthetic B()V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->I()Lcom/zui/launcher/views/WidgetsEduView;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/widget/picker/d;

    invoke-direct {v1, p0}, Lcom/zui/launcher/widget/picker/d;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/views/AbstractSlideInView;->addOnCloseListener(Lcom/zui/launcher/views/AbstractSlideInView$OnCloseListener;)V

    return-void
.end method

.method public addHintCloseAnim(FLandroid/view/animation/Interpolator;Lcom/zui/launcher/anim/PendingAnimation;)V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    neg-float p1, p1

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/zui/launcher/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object p0

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p3, p0, p1, p2}, Lcom/zui/launcher/anim/PendingAnimation;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public enterSearchMode()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->y:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->setViewVisibilityBasedOnSearch(Z)V

    iget-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->i(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->i(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V

    return-void
.end method

.method public exitSearchMode()V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3, v2}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->y:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->onSearchResults(Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->setViewVisibilityBasedOnSearch(Z)V

    return-void
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    return-void
.end method

.method protected getAccessibilityTarget()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean p0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    if-eqz p0, :cond_0

    const p0, 0x7f12074c

    goto :goto_0

    :cond_0
    const p0, 0x7f12074d

    :goto_0
    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderViewHeight()I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->C(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v1, v1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->e:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->C(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->c:Landroid/view/View;

    invoke-static {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->C(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getRecyclerView()Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->p:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->B:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->o:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleClose(Z)V
    .locals 2

    const-wide/16 v0, 0x10b

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->handleClose(ZJ)V

    return-void
.end method

.method protected hasSeenEducationDialog()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isOfType(I)Z
    .locals 0

    and-int/lit8 p0, p1, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public logActionCommand(I)V
    .locals 0

    return-void
.end method

.method public notifyWidgetProvidersChanged()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/zui/launcher/Launcher;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/zui/launcher/util/PackageUserKey;)V

    return-void
.end method

.method public onActivePageChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->K(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->i(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->addProviderChangeListener(Lcom/zui/launcher/widget/LauncherAppWidgetHost$ProviderChangedListener;)V

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->notifyWidgetProvidersChanged()V

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->d:Lcom/zui/launcher/widget/picker/search/WidgetsSearchBar;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBar;->resetSearch()V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->p:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->d:Lcom/zui/launcher/widget/picker/search/WidgetsSearchBar;

    invoke-interface {p0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBar;->exitSearch()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->y:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/zui/launcher/AbstractFloatingView;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onCloseComplete()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/zui/launcher/dragndrop/DragLayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragLayer;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->revertStatusIcon()V

    :cond_0
    invoke-super {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->onCloseComplete()V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->h:Lcom/zui/launcher/views/ArrowTipView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Lcom/zui/launcher/dragndrop/DragLayer;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/zui/launcher/dragndrop/DragLayer;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    :cond_1
    iget-boolean p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->p:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object p1, p1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->d:Lcom/zui/launcher/widget/picker/search/WidgetsSearchBar;

    invoke-interface {p1}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBar;->reset()V

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->removeProviderChangeListener(Lcom/zui/launcher/widget/LauncherAppWidgetHost$ProviderChangedListener;)V

    return-void
.end method

.method public onDragStart(ZF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->onDragStart(ZF)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->hide(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 22

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v1, 0x7f0a0114

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mContent:Landroid/view/View;

    check-cast v1, Lcom/zui/launcher/views/TopRoundedCornerView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-boolean v3, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0d01a1

    goto :goto_0

    :cond_0
    const v3, 0x7f0d01a2

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v3, 0x7f0a02cc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->y:Landroid/widget/FrameLayout;

    new-instance v5, Lcom/zui/launcher/widget/picker/k;

    invoke-direct {v5, v0}, Lcom/zui/launcher/widget/picker/k;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0177

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/views/RecyclerViewFastScroller;

    iget-object v5, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    const v7, 0x7f0a02d0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v5, v8}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->d(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V

    const v5, 0x7f0a034a

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    iget-object v8, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-virtual {v8, v5}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->d(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V

    const v8, 0x7f0a0338

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->z:Landroid/widget/RelativeLayout;

    iget-boolean v8, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    const v9, 0x7f0a0455

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    const v8, 0x7f0a0450

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    iput-object v8, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->o:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    invoke-virtual {v8, v0}, Lcom/zui/launcher/PagedView;->initParentViews(Landroid/view/View;)V

    iget-object v8, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->o:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    invoke-virtual {v8}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip;

    invoke-virtual {v8, v0}, Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip;->setOnActivePageChangedListener(Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;)V

    iget-object v8, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->o:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    invoke-virtual {v8}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip;

    invoke-virtual {v8, v6}, Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip;->setActiveMarker(I)V

    const v8, 0x7f0a039e

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->s:Landroid/view/View;

    const v8, 0x7f0a039c

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const v11, 0x7f0a039d

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    invoke-direct {v0, v8}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->setDrawableDivider(Landroid/widget/Button;)V

    invoke-direct {v0, v11}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->setDrawableDivider(Landroid/widget/Button;)V

    new-instance v12, Lcom/zui/launcher/widget/picker/h;

    invoke-direct {v12, v0}, Lcom/zui/launcher/widget/picker/h;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/zui/launcher/widget/picker/l;

    invoke-direct {v8, v0}, Lcom/zui/launcher/widget/picker/l;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V

    invoke-virtual {v11, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v6}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->setIsRecyclerViewFirstChildInParent(Z)V

    iget-object v6, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v6, v8}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->d(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V

    const v6, 0x7f0a0344

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->A:Landroid/widget/LinearLayout;

    const v6, 0x7f0a034b

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    iget-object v8, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v11, 0x3

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-virtual {v8, v6}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->d(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V

    const v8, 0x7f0a0342

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->B:Landroid/widget/Button;

    const v8, 0x7f0a0343

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->C:Landroid/widget/Button;

    iget-object v8, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->B:Landroid/widget/Button;

    invoke-direct {v0, v8}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->setDrawableDivider(Landroid/widget/Button;)V

    iget-object v8, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->C:Landroid/widget/Button;

    invoke-direct {v0, v8}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->setDrawableDivider(Landroid/widget/Button;)V

    iget-object v8, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->B:Landroid/widget/Button;

    new-instance v11, Lcom/zui/launcher/widget/picker/e;

    invoke-direct {v11, v0, v6}, Lcom/zui/launcher/widget/picker/e;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->C:Landroid/widget/Button;

    new-instance v8, Lcom/zui/launcher/widget/picker/g;

    invoke-direct {v8, v0, v5}, Lcom/zui/launcher/widget/picker/g;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    iput-object v10, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->o:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    :goto_1
    const v5, 0x7f0d01a3

    invoke-virtual {v2, v5, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f0a028a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->t:Landroid/widget/TextView;

    const v1, 0x7f0a0288

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->v:Landroid/widget/ImageView;

    const v1, 0x7f0a0289

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->u:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    const v2, 0x7f0a0322

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;

    invoke-direct {v1, v0, v2}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;)V

    iput-object v1, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v1, v1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->l:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v2, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v2, v2, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;

    iget-boolean v12, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    iget v13, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->k:I

    iget-object v14, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    iget-boolean v2, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    :cond_2
    move-object/from16 v16, v10

    iget-object v2, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->z:Landroid/widget/RelativeLayout;

    iget-object v4, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->s:Landroid/view/View;

    iget-object v5, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->o:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    iget-object v6, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->u:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->y:Landroid/widget/FrameLayout;

    move-object v11, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v11 .. v21}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;-><init>(ZILcom/zui/launcher/widget/picker/WidgetsFullSheet$d;Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/zui/launcher/workprofile/PersonalWorkPagedView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;)V

    iput-object v1, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->x:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;

    invoke-virtual {v3, v1}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->setOnFastScrollChangeListener(Lcom/zui/launcher/views/RecyclerViewFastScroller$OnFastScrollChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->onWidgetsBound()V

    iget-object v1, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v1, v1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->d:Lcom/zui/launcher/widget/picker/search/WidgetsSearchBar;

    iget-object v2, v0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getPopupDataProvider()Lcom/zui/launcher/popup/PopupDataProvider;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBar;->initialize(Lcom/zui/launcher/popup/PopupDataProvider;Lcom/zui/launcher/widget/picker/search/SearchModeListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->H()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mContent:Landroid/view/View;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mTranslationShift:F

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->setTranslationShift(F)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->m(II)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->x:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->m(II)V

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->m(II)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->x:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->m(II)V

    :cond_1
    return-void
.end method

.method public onRecommendedWidgetsBound()V
    .locals 0

    return-void
.end method

.method public onSearchResults(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->f:Ljava/util/function/Predicate;

    invoke-direct {p0, p1, v3}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->n(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->setWidgetsOnSearch(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->g:Ljava/util/function/Predicate;

    invoke-direct {p0, p1, v3}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->n(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->setWidgetsOnSearch(Ljava/util/List;)V

    iget-boolean p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->B:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->K(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->scrollToTop()V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->K(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    check-cast p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->scrollToTop()V

    return-void
.end method

.method public onWidgetsBound()V
    .locals 5

    iget-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->j()V

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->k()V

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->l()V

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getPopupDataProvider()Lcom/zui/launcher/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/popup/PopupDataProvider;->getAllWidgets()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->setWidgets(Ljava/util/List;)V

    iget-boolean v3, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->o:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->s:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->x:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;

    invoke-virtual {v1}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->l()V

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->setWidgets(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->o:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->onActivePageChanged(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->K(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)V

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->b(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v2, v4

    :cond_3
    iget-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->q:Z

    if-eq v0, v2, :cond_4

    iput-boolean v2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->q:Z

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    :cond_4
    return-void
.end method

.method public synthetic p(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;
    .locals 1

    instance-of v0, p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry$Header;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;

    iget p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->r:I

    invoke-virtual {p1, p0}, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;->withMaxSpanSize(I)Lcom/zui/launcher/widget/model/WidgetsListContentEntry;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Lcom/zui/launcher/widget/model/WidgetsListRecommendContentEntry;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/zui/launcher/widget/model/WidgetsListRecommendContentEntry;

    iget p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->r:I

    invoke-virtual {p1, p0}, Lcom/zui/launcher/widget/model/WidgetsListRecommendContentEntry;->withMaxSpanSize(I)Lcom/zui/launcher/widget/model/WidgetsListRecommendContentEntry;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public prepareSearchMode()V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->e:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->c:Landroid/view/View;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->y:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public synthetic s(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->e:Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->b:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->G(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->G(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->G(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;->a(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->G(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->x:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->j(I)Z

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->setupNavBarColor()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->clearNavBarColor()V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public synthetic t()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->hasSeenEducationTip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->i:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->getViewToShowEducationTip()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->showEducationTipOnViewIfPossible(Landroid/view/View;)Lcom/zui/launcher/views/ArrowTipView;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->h:Lcom/zui/launcher/views/ArrowTipView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->i:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    return-void
.end method

.method public synthetic u(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->w:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->d:Lcom/zui/launcher/widget/picker/search/WidgetsSearchBar;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBar;->exitSearch()V

    :cond_0
    return-void
.end method

.method public synthetic v(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->o:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    return-void
.end method

.method public synthetic w(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->o:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    return-void
.end method

.method public synthetic x(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->B:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->C:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-direct {p0, p2}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->K(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public synthetic y(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->B:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->C:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->d:Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;

    invoke-direct {p0, p2}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->K(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$c;)V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public synthetic z()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
