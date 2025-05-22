.class public Lcom/zui/quickstep/views/TaskMenuView;
.super Lcom/zui/launcher/AbstractFloatingView;
.source ""


# static fields
.field private static final n:Ljava/lang/String;

.field private static final o:Landroid/graphics/Rect;


# instance fields
.field private final a:Lcom/zui/quickstep/views/IconView$OnScaleUpdateListener;

.field private final b:Lcom/zui/quickstep/views/IconView$OnScaleUpdateListener;

.field private final c:F

.field private d:Lcom/zui/launcher/BaseDraggingActivity;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/zui/quickstep/views/IconView;

.field private g:Landroid/animation/AnimatorSet;

.field private h:Lcom/zui/quickstep/views/TaskView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Lcom/zui/launcher/icons/FastBitmapDrawable;

.field private k:I

.field private l:I

.field private m:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/zui/quickstep/views/TaskMenuView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/quickstep/views/TaskMenuView;->n:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/zui/quickstep/views/TaskMenuView;->o:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/quickstep/views/TaskMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/zui/quickstep/views/TaskMenuView$a;

    invoke-direct {p2, p0}, Lcom/zui/quickstep/views/TaskMenuView$a;-><init>(Lcom/zui/quickstep/views/TaskMenuView;)V

    iput-object p2, p0, Lcom/zui/quickstep/views/TaskMenuView;->a:Lcom/zui/quickstep/views/IconView$OnScaleUpdateListener;

    new-instance p2, Lcom/zui/quickstep/views/TaskMenuView$b;

    invoke-direct {p2, p0}, Lcom/zui/quickstep/views/TaskMenuView$b;-><init>(Lcom/zui/quickstep/views/TaskMenuView;)V

    iput-object p2, p0, Lcom/zui/quickstep/views/TaskMenuView;->b:Lcom/zui/quickstep/views/IconView$OnScaleUpdateListener;

    const/4 p2, -0x1

    iput p2, p0, Lcom/zui/quickstep/views/TaskMenuView;->l:I

    invoke-static {p1}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/BaseDraggingActivity;

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskMenuView;->d:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0707d5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/TaskMenuView;->c:F

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/views/TaskMenuView;)Lcom/zui/quickstep/views/IconView;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskMenuView;->f:Lcom/zui/quickstep/views/IconView;

    return-object p0
.end method

.method private animateClose()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/quickstep/views/TaskMenuView;->g(Z)V

    return-void
.end method

.method private animateOpen()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/quickstep/views/TaskMenuView;->g(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    return-void
.end method

.method static synthetic b(Lcom/zui/quickstep/views/TaskMenuView;)Lcom/zui/launcher/icons/FastBitmapDrawable;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskMenuView;->j:Lcom/zui/launcher/icons/FastBitmapDrawable;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/quickstep/views/TaskMenuView;)Lcom/zui/quickstep/views/TaskView;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskMenuView;->h:Lcom/zui/quickstep/views/TaskView;

    return-object p0
.end method

.method private closeComplete()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->d:Lcom/zui/launcher/BaseDraggingActivity;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->d:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->h:Lcom/zui/quickstep/views/TaskView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView;->resetVisualProperties()V

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskMenuView;->h:Lcom/zui/quickstep/views/TaskView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/TaskView;->setAllViewAlpha(F)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/zui/quickstep/views/TaskMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/views/TaskMenuView;->closeComplete()V

    return-void
.end method

.method private e(Lcom/zui/quickstep/TaskSystemShortcut;Landroid/view/View$OnClickListener;)V
    .locals 4

    sget-object v0, Lcom/zui/quickstep/views/TaskMenuView;->n:Ljava/lang/String;

    const-string v1, "addMenuOption: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->d:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0181

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a01d4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a03b7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p1, v1, v3}, Lcom/zui/quickstep/TaskSystemShortcut;->setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v1, p0, Lcom/zui/quickstep/views/TaskMenuView;->k:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const v1, 0x7f0600ea

    goto :goto_0

    :cond_0
    const v1, 0x7f06033d

    :goto_0
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskMenuView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private f(Lcom/zui/quickstep/views/TaskView;)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/BaseDraggingActivity;

    sget-object v1, Lcom/zui/quickstep/TaskOverlayFactory;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/TaskOverlayFactory;

    invoke-virtual {v1, p1}, Lcom/zui/quickstep/TaskOverlayFactory;->getEnabledShortcuts(Lcom/zui/quickstep/views/TaskView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/quickstep/TaskSystemShortcut;

    iget v5, p0, Lcom/zui/quickstep/views/TaskMenuView;->k:I

    invoke-virtual {v4, v5}, Lcom/zui/quickstep/TaskSystemShortcut;->setActionWhenInit(I)V

    sget-object v5, Lcom/zui/quickstep/views/TaskMenuView;->n:Ljava/lang/String;

    const-string v6, "updateIconAndLabel addMenuOptions: "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/zui/quickstep/views/TaskMenuView;->k:I

    invoke-virtual {v4, v5, p1}, Lcom/zui/quickstep/TaskSystemShortcut;->updateIconAndLabel(ILcom/zui/quickstep/views/TaskView;)V

    invoke-virtual {v4, v0, p1}, Lcom/zui/quickstep/TaskSystemShortcut;->getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/zui/quickstep/views/TaskMenuView;->e(Lcom/zui/quickstep/TaskSystemShortcut;Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g(Z)V
    .locals 10

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->g:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/zui/quickstep/views/TaskMenuView;->j()Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/anim/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskMenuView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->g:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskMenuView;->h:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object v1

    sget-object v2, Lcom/zui/quickstep/views/TaskThumbnailView;->DIM_ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    const v6, 0x3ecccccd    # 0.4f

    :goto_0
    const/4 v7, 0x0

    aput v6, v4, v7

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-nez p1, :cond_2

    iget v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->k:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->g:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskMenuView;->h:Lcom/zui/quickstep/views/TaskView;

    sget-object v2, Landroid/widget/LinearLayout;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v3, [F

    if-nez p1, :cond_4

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->getBaseRecentsView()Lcom/zui/quickstep/BaseRecentsView;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/zui/quickstep/views/TaskMenuView;->h:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v6}, Lcom/zui/quickstep/views/TaskView;->getBaseRecentsView()Lcom/zui/quickstep/BaseRecentsView;

    move-result-object v6

    invoke-interface {v6}, Lcom/zui/quickstep/BaseRecentsView;->getTranlateYWhenClick()J

    move-result-wide v8

    long-to-float v6, v8

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v5

    :goto_2
    aput v6, v4, v7

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_5
    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->g:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/zui/quickstep/views/TaskMenuView$c;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/views/TaskMenuView$c;-><init>(Lcom/zui/quickstep/views/TaskMenuView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->g:Landroid/animation/AnimatorSet;

    sget-object v1, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    new-array v2, v3, [F

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_3
    aput v5, v2, v7

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->g:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_7

    const-wide/16 v1, 0x64

    goto :goto_4

    :cond_7
    const-wide/16 v1, 0x96

    :goto_4
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskMenuView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private h()I
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/zui/quickstep/views/TaskMenuView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private i(Z)V
    .locals 5

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->m:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->m:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/zui/quickstep/views/TaskMenuView$d;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/views/TaskMenuView$d;-><init>(Lcom/zui/quickstep/views/TaskMenuView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->h:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView;->getBaseRecentsView()Lcom/zui/quickstep/BaseRecentsView;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->h:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView;->getBaseRecentsView()Lcom/zui/quickstep/BaseRecentsView;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/quickstep/BaseRecentsView;->getTranlateYWhenClick()J

    move-result-wide v0

    :goto_0
    sget-object v2, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    aput p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v2, Lcom/zui/quickstep/views/f1;

    invoke-direct {v2, p0, v0, v1}, Lcom/zui/quickstep/views/f1;-><init>(Lcom/zui/quickstep/views/TaskMenuView;J)V

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/zui/quickstep/views/TaskMenuView;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskMenuView;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-void
.end method

.method private j()Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    invoke-direct {v2, v3, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p0, Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/zui/launcher/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public static synthetic k(Lcom/zui/quickstep/views/TaskMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/views/TaskMenuView;->animateOpen()V

    return-void
.end method

.method private m(Lcom/zui/quickstep/views/TaskView;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getBaseRecentsView()Lcom/zui/quickstep/BaseRecentsView;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    invoke-direct {p0}, Lcom/zui/quickstep/views/TaskMenuView;->h()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const v3, 0x800003

    :goto_0
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/zui/quickstep/views/TaskMenuView;->d:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v3}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    instance-of v4, v1, Lcom/zui/quickstep/views/RecentsView;

    const/4 v5, 0x2

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskMenuView;->d:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {v1}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    sget-object v4, Lcom/zui/quickstep/views/TaskMenuView;->o:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/zui/quickstep/views/TaskMenuView;->d:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {v6}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v6, v2

    div-int/2addr v6, v5

    iget-boolean v2, v3, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget v0, v1, Landroid/graphics/Rect;->left:I

    :goto_1
    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget-boolean v0, v3, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/zui/quickstep/views/TaskMenuView;->o:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707c8

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/zui/quickstep/views/TaskMenuView;->o:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707c7

    :goto_2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/zui/quickstep/views/TaskMenuView;->c:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    sget-object v0, Lcom/zui/quickstep/views/TaskMenuView;->o:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_3
    instance-of v1, v1, Lcom/zui/quickstep/views/RecentsViewForPad;

    if-eqz v1, :cond_4

    new-array v1, v5, [I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    sget-object v3, Lcom/zui/quickstep/views/TaskMenuView;->o:Landroid/graphics/Rect;

    aget v0, v1, v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v4, v2

    div-int/2addr v4, v5

    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->left:I

    sget-object v0, Lcom/zui/quickstep/views/TaskMenuView;->o:Landroid/graphics/Rect;

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/quickstep/views/TaskMenuView;->c:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    sget-object p1, Lcom/zui/quickstep/views/TaskMenuView;->o:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/zui/quickstep/views/TaskMenuView;->setPosition(FF)V

    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->h:Lcom/zui/quickstep/views/TaskView;

    invoke-direct {p0, v0}, Lcom/zui/quickstep/views/TaskMenuView;->f(Lcom/zui/quickstep/views/TaskView;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->h:Lcom/zui/quickstep/views/TaskView;

    invoke-direct {p0, v0}, Lcom/zui/quickstep/views/TaskMenuView;->m(Lcom/zui/quickstep/views/TaskView;)V

    return-void
.end method

.method private o(Lcom/zui/quickstep/views/TaskView;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput p2, p0, Lcom/zui/quickstep/views/TaskMenuView;->k:I

    iget-object p2, p0, Lcom/zui/quickstep/views/TaskMenuView;->d:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {p2}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskMenuView;->h:Lcom/zui/quickstep/views/TaskView;

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/TaskMenuView;->f(Lcom/zui/quickstep/views/TaskView;)V

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskMenuView;->h:Lcom/zui/quickstep/views/TaskView;

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/TaskMenuView;->m(Lcom/zui/quickstep/views/TaskView;)V

    iget p1, p0, Lcom/zui/quickstep/views/TaskMenuView;->k:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    new-instance p1, Lcom/zui/quickstep/views/e1;

    invoke-direct {p1, p0}, Lcom/zui/quickstep/views/e1;-><init>(Lcom/zui/quickstep/views/TaskMenuView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/zui/quickstep/views/TaskMenuView;->i(Z)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static showForTask(Lcom/zui/quickstep/views/TaskView;I)Lcom/zui/quickstep/views/TaskMenuView;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    const v2, 0x7f0d017c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/views/TaskMenuView;

    invoke-direct {v0, p0, p1}, Lcom/zui/quickstep/views/TaskMenuView;->o(Lcom/zui/quickstep/views/TaskView;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public findMenuItemByText(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskMenuView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a03b7

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFadeInOpenAnimator()Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskMenuView;->m:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public getOptionCount(Lcom/zui/quickstep/views/TaskView;)I
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/zui/quickstep/TaskOverlayFactory;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/TaskOverlayFactory;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/TaskOverlayFactory;->getEnabledShortcuts(Lcom/zui/quickstep/views/TaskView;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method protected handleClose(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zui/quickstep/views/TaskMenuView;->animateClose()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/quickstep/views/TaskMenuView;->closeComplete()V

    :goto_0
    return-void
.end method

.method public isOfType(I)Z
    .locals 0

    and-int/lit16 p0, p1, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic l(JLandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float p3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p3, v0

    long-to-float p1, p1

    div-float/2addr p3, p1

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public logActionCommand(I)V
    .locals 0

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->d:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->h:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView;->getIconView()Lcom/zui/quickstep/views/IconView;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskMenuView;->a:Lcom/zui/quickstep/views/IconView$OnScaleUpdateListener;

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/IconView;->removeUpdateScaleListener(Lcom/zui/quickstep/views/IconView$OnScaleUpdateListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->f:Lcom/zui/quickstep/views/IconView;

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskMenuView;->b:Lcom/zui/quickstep/views/IconView$OnScaleUpdateListener;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/IconView;->removeUpdateScaleListener(Lcom/zui/quickstep/views/IconView$OnScaleUpdateListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a03ae

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->e:Landroid/widget/TextView;

    const v0, 0x7f0a03ad

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/views/IconView;

    iput-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->f:Lcom/zui/quickstep/views/IconView;

    const v0, 0x7f0a025b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->i:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onRotationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/zui/quickstep/views/TaskMenuView;->n()V

    :cond_1
    return-void
.end method

.method public performTap()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/zui/quickstep/views/TaskMenuView;->l:I

    if-ge v1, v0, :cond_1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/views/TaskMenuView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->performClick()Z

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method public setPosition(FF)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setX(F)V

    iget p1, p0, Lcom/zui/quickstep/views/TaskMenuView;->c:F

    add-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setY(F)V

    return-void
.end method

.method public tapItem(Lcom/zui/quickstep/views/TaskView;I)V
    .locals 10

    iget v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->l:I

    const/4 v1, 0x1

    if-eq v0, p2, :cond_1

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->hasDualVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    const/16 v2, 0x1a

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lcom/zui/launcher/LauncherAppState;->startVibrationOrFail(IIZ)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    :cond_1
    :goto_0
    iput p2, p0, Lcom/zui/quickstep/views/TaskMenuView;->l:I

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskMenuView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_7

    iget-object v4, p0, Lcom/zui/quickstep/views/TaskMenuView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/zui/quickstep/TaskSystemShortcut;

    if-eqz v6, :cond_6

    if-ne v3, p2, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    check-cast v5, Lcom/zui/quickstep/TaskSystemShortcut;

    if-eqz v6, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    iget v7, p0, Lcom/zui/quickstep/views/TaskMenuView;->k:I

    :goto_3
    invoke-virtual {v5, v7, p1}, Lcom/zui/quickstep/TaskSystemShortcut;->updateIconAndLabel(ILcom/zui/quickstep/views/TaskView;)V

    if-eqz v6, :cond_4

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_4
    const v7, 0x7f0a03b7

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v6, :cond_5

    const v6, 0x7f0600ea

    goto :goto_4

    :cond_5
    const v6, 0x7f06033d

    :goto_4
    invoke-virtual {v9, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f0a01d4

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v6, v4}, Lcom/zui/quickstep/TaskSystemShortcut;->setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method
