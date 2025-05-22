.class public Lcom/zui/launcher/folder/FolderAnimationManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/zui/launcher/folder/Folder;

.field private b:Lcom/zui/launcher/folder/FolderPagedView;

.field private c:Landroid/graphics/drawable/GradientDrawable;

.field private d:Lcom/zui/launcher/folder/FolderIcon;

.field private e:Lcom/zui/launcher/folder/PreviewBackground;

.field private f:Landroid/content/Context;

.field private g:Lcom/zui/launcher/Launcher;

.field private final h:Z

.field private final i:I

.field private final j:I

.field private final k:Landroid/animation/TimeInterpolator;

.field private final l:Landroid/animation/TimeInterpolator;

.field private final m:Landroid/animation/TimeInterpolator;

.field private final n:Lcom/zui/launcher/folder/f;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/folder/Folder;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/launcher/folder/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/zui/launcher/folder/f;-><init>(FFFF)V

    iput-object v0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->n:Lcom/zui/launcher/folder/f;

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v0, p1, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    iput-object v0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->b:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->getFolderBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->c:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p1, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    iput-object v0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->d:Lcom/zui/launcher/folder/FolderIcon;

    iget-object v0, v0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    iput-object v0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->e:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->f:Landroid/content/Context;

    iget-object p1, p1, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->g:Lcom/zui/launcher/Launcher;

    iput-boolean p2, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->b:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b003a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->i:I

    const p2, 0x7f0b0026

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->j:I

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->f:Landroid/content/Context;

    const p2, 0x7f0c000f

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->k:Landroid/animation/TimeInterpolator;

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->f:Landroid/content/Context;

    const p2, 0x7f0c0011

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->l:Landroid/animation/TimeInterpolator;

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->f:Landroid/content/Context;

    const p2, 0x7f0c0010

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->m:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/folder/FolderAnimationManager;)Lcom/zui/launcher/folder/Folder;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/folder/FolderAnimationManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    return p0
.end method

.method static synthetic c(Lcom/zui/launcher/folder/FolderAnimationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/folder/FolderAnimationManager;->j()V

    return-void
.end method

.method private d(Landroid/animation/AnimatorSet;FII)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    iget-object v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->d:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/FolderIcon;->getLayoutRule()Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;

    move-result-object v10

    iget-object v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v0, v0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x0

    const/4 v11, 0x1

    if-nez v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v3, v2, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/folder/Folder;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v0, :cond_1

    move v14, v13

    goto :goto_1

    :cond_1
    sget v0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    move v14, v0

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/folder/FolderAnimationManager;->g()Landroid/animation/TimeInterpolator;

    move-result-object v15

    iget-object v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->b:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v5

    move v4, v1

    :goto_2
    if-ge v4, v13, :cond_6

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout$LayoutParams;

    iput-boolean v11, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    invoke-virtual {v5, v2}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    invoke-virtual {v10, v14}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v1

    invoke-virtual {v10}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->getIconSize()F

    move-result v3

    mul-float/2addr v3, v1

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v1}, Lcom/zui/launcher/WorkspaceIconCompat;->getIconSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    div-float v1, v3, p2

    iget-boolean v11, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    move-object/from16 v17, v5

    if-eqz v11, :cond_2

    move v11, v1

    goto :goto_3

    :cond_2
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v2, v11}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setScaleY(F)V

    iget-object v11, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->n:Lcom/zui/launcher/folder/f;

    const/4 v5, 0x1

    invoke-virtual {v10, v4, v14, v11, v5}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->computePreviewItemDrawingParams(IILcom/zui/launcher/folder/f;Z)Lcom/zui/launcher/folder/f;

    iget-object v11, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->d:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v11}, Lcom/zui/launcher/folder/FolderIcon;->isLayoutHorizontal()Z

    move-result v11

    const/4 v5, 0x2

    if-eqz v11, :cond_3

    iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move-object/from16 v19, v2

    check-cast v19, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface/range {v19 .. v19}, Lcom/zui/launcher/WorkspaceIconCompat;->getIconSize()I

    move-result v19

    sub-int v11, v11, v19

    int-to-float v11, v11

    mul-float/2addr v11, v3

    float-to-int v3, v11

    div-int/2addr v3, v5

    iget-object v11, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->n:Lcom/zui/launcher/folder/f;

    iget v5, v11, Lcom/zui/launcher/folder/f;->b:F

    int-to-float v3, v3

    sub-float/2addr v5, v3

    int-to-float v3, v9

    add-float/2addr v5, v3

    div-float v5, v5, p2

    float-to-int v3, v5

    iget v5, v11, Lcom/zui/launcher/folder/f;->a:F

    int-to-float v11, v8

    add-float/2addr v5, v11

    div-float v5, v5, p2

    float-to-int v5, v5

    iget v11, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->x:I

    sub-int/2addr v5, v11

    int-to-float v5, v5

    iget v0, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->y:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    move v3, v5

    goto :goto_4

    :cond_3
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move-object v11, v2

    check-cast v11, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v11}, Lcom/zui/launcher/WorkspaceIconCompat;->getIconSize()I

    move-result v11

    sub-int/2addr v5, v11

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v3, v5

    const/4 v5, 0x2

    div-int/2addr v3, v5

    iget-object v5, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->n:Lcom/zui/launcher/folder/f;

    iget v11, v5, Lcom/zui/launcher/folder/f;->a:F

    int-to-float v3, v3

    sub-float/2addr v11, v3

    int-to-float v3, v8

    add-float/2addr v11, v3

    div-float v11, v11, p2

    float-to-int v3, v11

    iget v5, v5, Lcom/zui/launcher/folder/f;->b:F

    int-to-float v11, v9

    add-float/2addr v5, v11

    div-float v5, v5, p2

    float-to-int v5, v5

    iget v11, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->x:I

    sub-int/2addr v3, v11

    int-to-float v3, v3

    iget v0, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->y:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    :goto_4
    move v5, v0

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v11, 0x0

    invoke-direct {v6, v2, v0, v3, v11}, Lcom/zui/launcher/folder/FolderAnimationManager;->f(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {v6, v7, v0}, Lcom/zui/launcher/folder/FolderAnimationManager;->h(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct {v6, v2, v0, v5, v11}, Lcom/zui/launcher/folder/FolderAnimationManager;->f(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {v6, v7, v0}, Lcom/zui/launcher/folder/FolderAnimationManager;->h(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    sget-object v0, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v6, v2, v0, v1, v11}, Lcom/zui/launcher/folder/FolderAnimationManager;->f(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {v6, v7, v0}, Lcom/zui/launcher/folder/FolderAnimationManager;->h(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    sget v0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    if-lt v4, v0, :cond_5

    iget-boolean v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    if-eqz v0, :cond_4

    const/4 v11, 0x2

    goto :goto_5

    :cond_4
    iget v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->j:I

    const/4 v11, 0x2

    div-int/2addr v0, v11

    :goto_5
    iget-boolean v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    if-nez v0, :cond_5

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v11, [F

    fill-array-data v11, :array_0

    invoke-static {v2, v0, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {v6, v7, v0}, Lcom/zui/launcher/folder/FolderAnimationManager;->h(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    :cond_5
    new-instance v11, Lcom/zui/launcher/folder/FolderAnimationManager$b;

    move-object v0, v11

    move/from16 v18, v1

    move-object/from16 v1, p0

    move/from16 v19, v4

    move v4, v5

    move-object/from16 v16, v17

    const/16 v17, 0x1

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/folder/FolderAnimationManager$b;-><init>(Lcom/zui/launcher/folder/FolderAnimationManager;Landroid/view/View;FFF)V

    invoke-virtual {v7, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v4, v19, 0x1

    move-object/from16 v5, v16

    move/from16 v11, v17

    goto/16 :goto_2

    :cond_6
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private e(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;II)Landroid/animation/Animator;
    .locals 3

    iget-boolean p0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p0, :cond_0

    new-array p0, v2, [I

    aput p3, p0, v1

    aput p4, p0, v0

    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p0, v2, [I

    aput p4, p0, v1

    aput p3, p0, v0

    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private f(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;
    .locals 3

    iget-boolean p0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p0, :cond_0

    new-array p0, v2, [F

    aput p3, p0, v1

    aput p4, p0, v0

    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p0, v2, [F

    aput p4, p0, v1

    aput p3, p0, v0

    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private g()Landroid/animation/TimeInterpolator;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->getItemCount()I

    move-result v0

    sget v1, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->l:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->m:Landroid/animation/TimeInterpolator;

    :goto_0
    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->k:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method private h(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V
    .locals 6

    invoke-virtual {p2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v3

    iget v5, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->i:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/folder/FolderAnimationManager;->i(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V

    return-void
.end method

.method private i(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V
    .locals 0

    invoke-virtual {p2, p3, p4}, Landroid/animation/Animator;->setStartDelay(J)V

    int-to-long p3, p5

    invoke-virtual {p2, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v1, v0, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/folder/Folder;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v2, v2, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget v2, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    :goto_1
    sget v2, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    if-le v1, v2, :cond_2

    iget-boolean p0, p0, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    if-nez p0, :cond_2

    :goto_2
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public getAnimator()Landroid/animation/AnimatorSet;
    .locals 21

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    iget-object v1, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->d:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/zui/launcher/folder/FolderIcon;->getLayoutRule()Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;

    move-result-object v1

    iget-object v2, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->d:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v2}, Lcom/zui/launcher/folder/FolderIcon;->getPreviewItems()Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->g:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v4

    iget-object v5, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->d:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v4, v5, v3}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v7

    iget-object v4, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->e:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {v4}, Lcom/zui/launcher/folder/PreviewBackground;->u()I

    move-result v8

    mul-int/lit8 v4, v8, 0x2

    int-to-float v4, v4

    mul-float/2addr v4, v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v5

    invoke-virtual {v1}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->getIconSize()F

    move-result v9

    mul-float/2addr v9, v5

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v2}, Lcom/zui/launcher/WorkspaceIconCompat;->getIconSize()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v9, v2

    mul-float v11, v2, v7

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v2

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v12

    iget-object v13, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->d:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v13}, Lcom/zui/launcher/folder/FolderIcon;->isLayoutHorizontal()Z

    move-result v13

    if-eqz v2, :cond_0

    iget-object v15, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v15, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_0
    iget-object v10, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->g:Lcom/zui/launcher/Launcher;

    invoke-virtual {v10}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zui/launcher/Workspace;->getNewScale()F

    move-result v10

    mul-float/2addr v10, v15

    iget-boolean v15, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    if-eqz v15, :cond_1

    move v15, v11

    goto :goto_1

    :cond_1
    move v15, v10

    :goto_1
    iget-object v14, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setScaleX(F)V

    iget-object v14, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setScaleY(F)V

    iget-object v14, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    move/from16 v17, v7

    const/4 v7, 0x0

    invoke-virtual {v14, v7}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object v14, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v14, v7}, Landroid/widget/LinearLayout;->setPivotY(F)V

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v9, v14

    float-to-int v9, v9

    if-eqz v13, :cond_2

    move/from16 v18, v9

    const/4 v9, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    :goto_2
    cmpl-float v15, v15, v16

    const/16 v19, 0x3

    if-nez v15, :cond_3

    move/from16 v15, v19

    goto :goto_3

    :cond_3
    const/16 v15, 0x9

    :goto_3
    iget-object v7, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->g:Lcom/zui/launcher/Launcher;

    invoke-virtual {v7}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_4

    const/16 v2, 0xc

    goto :goto_4

    :cond_4
    move/from16 v19, v15

    const/4 v2, 0x0

    :goto_4
    if-eqz v13, :cond_5

    if-eqz v12, :cond_5

    iget-object v2, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v7, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v2, v7

    iget-object v7, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v2, v7

    iget-object v7, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->b:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v2, v7

    iget-object v7, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->b:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    sub-int/2addr v2, v7

    iget-object v7, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->b:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v7}, Lcom/zui/launcher/folder/FolderPagedView;->getCellCountX()I

    move-result v7

    div-int/2addr v2, v7

    int-to-float v2, v2

    iget-object v7, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    iget-object v12, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->b:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v12

    add-int/2addr v7, v12

    int-to-float v7, v7

    add-float/2addr v7, v2

    invoke-virtual {v1}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->getIconSize()F

    move-result v1

    sub-float/2addr v7, v1

    mul-float/2addr v7, v11

    float-to-int v1, v7

    goto :goto_5

    :cond_5
    iget-object v1, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v7, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->b:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    add-int/2addr v1, v7

    int-to-float v1, v1

    mul-float/2addr v1, v11

    float-to-int v1, v1

    add-int/2addr v1, v2

    :goto_5
    iget-object v2, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    iget-object v7, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->b:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v2, v2

    mul-float/2addr v2, v11

    float-to-int v2, v2

    iget-object v7, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v7}, Lcom/zui/launcher/folder/Folder;->getFooterHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v5, v7

    add-int/2addr v2, v5

    add-int v2, v2, v19

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget-object v7, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->e:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {v7}, Lcom/zui/launcher/folder/PreviewBackground;->q()I

    move-result v7

    add-int/2addr v5, v7

    sub-int/2addr v5, v1

    sub-int/2addr v5, v9

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v7, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->e:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {v7}, Lcom/zui/launcher/folder/PreviewBackground;->r()I

    move-result v7

    add-int/2addr v3, v7

    sub-int/2addr v3, v2

    sub-int v3, v3, v18

    iget v7, v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->x:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    iget v7, v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->y:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    iget-object v7, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->f:Landroid/content/Context;

    const v12, 0x7f040144

    invoke-static {v7, v12}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v7

    iget-object v12, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->g:Lcom/zui/launcher/Launcher;

    iget-boolean v12, v12, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    if-eqz v12, :cond_6

    iget-object v7, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->f:Landroid/content/Context;

    const v12, 0x7f040146

    invoke-static {v7, v12}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v7

    :cond_6
    const/4 v12, 0x0

    invoke-static {v7, v12}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v13

    iget-object v12, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v12, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->c:Landroid/graphics/drawable/GradientDrawable;

    iget-boolean v15, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    if-eqz v15, :cond_7

    move v15, v13

    goto :goto_6

    :cond_7
    move v15, v7

    :goto_6
    invoke-virtual {v12, v15}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v12, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->f:Landroid/content/Context;

    const v15, 0x7f040140

    invoke-static {v12, v15}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v12

    iget-object v15, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->g:Lcom/zui/launcher/Launcher;

    iget-boolean v15, v15, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    if-eqz v15, :cond_8

    iget-object v12, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->f:Landroid/content/Context;

    const v15, 0x7f040142

    invoke-static {v12, v15}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v12

    :cond_8
    iget-object v15, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->f:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v14, 0x7f07037d

    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iget-object v15, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->c:Landroid/graphics/drawable/GradientDrawable;

    move/from16 v20, v12

    iget-boolean v12, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    if-eqz v12, :cond_9

    goto :goto_7

    :cond_9
    const/4 v14, 0x0

    :goto_7
    iget-boolean v12, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    if-eqz v12, :cond_a

    move/from16 v12, v20

    goto :goto_8

    :cond_a
    move v12, v13

    :goto_8
    invoke-virtual {v15, v14, v12}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    add-int/2addr v1, v9

    new-instance v12, Landroid/graphics/Rect;

    int-to-float v1, v1

    div-float v14, v1, v11

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v2, v2

    div-float v15, v2, v11

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    add-float/2addr v1, v4

    div-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v2, v4

    div-float/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v12, v14, v15, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v0, Lcom/zui/launcher/anim/PropertyResetListener;

    sget-object v1, Lcom/zui/launcher/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/anim/PropertyResetListener;-><init>(Landroid/util/Property;Ljava/lang/Object;)V

    iget-object v1, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v2, v1, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/folder/Folder;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-boolean v4, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    if-eqz v4, :cond_b

    move-object v4, v2

    check-cast v4, Lcom/zui/launcher/WorkspaceIconCompat;

    const/4 v14, 0x0

    invoke-interface {v4, v14}, Lcom/zui/launcher/WorkspaceIconCompat;->setTextVisibility(Z)V

    goto :goto_a

    :cond_b
    const/4 v14, 0x0

    :goto_a
    check-cast v2, Lcom/zui/launcher/WorkspaceIconCompat;

    iget-boolean v4, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    invoke-interface {v2, v4}, Lcom/zui/launcher/WorkspaceIconCompat;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {v6, v12, v2}, Lcom/zui/launcher/folder/FolderAnimationManager;->h(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    goto :goto_9

    :cond_c
    iget-object v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v5, v2}, Lcom/zui/launcher/folder/FolderAnimationManager;->f(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v12, v0}, Lcom/zui/launcher/folder/FolderAnimationManager;->h(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    iget-object v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct {v6, v0, v1, v3, v2}, Lcom/zui/launcher/folder/FolderAnimationManager;->f(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v12, v0}, Lcom/zui/launcher/folder/FolderAnimationManager;->h(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    iget-object v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    sget-object v1, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-direct {v6, v0, v1, v11, v10}, Lcom/zui/launcher/folder/FolderAnimationManager;->f(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v12, v0}, Lcom/zui/launcher/folder/FolderAnimationManager;->h(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    iget-object v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->c:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "color"

    invoke-direct {v6, v0, v1, v13, v7}, Lcom/zui/launcher/folder/FolderAnimationManager;->e(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;II)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v6, v12, v0}, Lcom/zui/launcher/folder/FolderAnimationManager;->h(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    iget-object v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->d:Lcom/zui/launcher/folder/FolderIcon;

    iget-object v0, v0, Lcom/zui/launcher/folder/FolderIcon;->f:Lcom/zui/launcher/BubbleTextView;

    iget-boolean v1, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-direct {v6, v12, v0}, Lcom/zui/launcher/folder/FolderAnimationManager;->h(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    iget v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->i:I

    div-int/lit8 v5, v0, 0x2

    iget-object v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->a:Lcom/zui/launcher/folder/Folder;

    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getElevation()F

    move-result v2

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/zui/launcher/folder/FolderAnimationManager;->f(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v2

    iget-boolean v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->h:Z

    if-eqz v0, :cond_d

    int-to-long v0, v5

    goto :goto_b

    :cond_d
    const-wide/16 v0, 0x0

    :goto_b
    move-wide v3, v0

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/folder/FolderAnimationManager;->i(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V

    new-instance v0, Lcom/zui/launcher/folder/FolderAnimationManager$a;

    invoke-direct {v0, v6}, Lcom/zui/launcher/folder/FolderAnimationManager$a;-><init>(Lcom/zui/launcher/folder/FolderAnimationManager;)V

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    iget-object v2, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->k:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_c

    :cond_e
    iget-object v0, v6, Lcom/zui/launcher/folder/FolderAnimationManager;->e:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/PreviewBackground;->s()I

    move-result v0

    sub-int/2addr v8, v0

    div-float v11, v11, v17

    add-int/2addr v9, v8

    add-int v8, v8, v18

    invoke-direct {v6, v12, v11, v9, v8}, Lcom/zui/launcher/folder/FolderAnimationManager;->d(Landroid/animation/AnimatorSet;FII)V

    return-object v12
.end method
