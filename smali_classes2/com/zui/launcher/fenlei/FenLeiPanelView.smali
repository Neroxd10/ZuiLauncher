.class public Lcom/zui/launcher/fenlei/FenLeiPanelView;
.super Lcom/zui/launcher/AbstractFloatingView;
.source ""


# instance fields
.field private a:Lcom/zui/launcher/Launcher;

.field private b:I

.field private c:Lcom/zui/launcher/folder/Folder;

.field private d:Z

.field private e:Lcom/zui/launcher/category/CategorySettings;

.field private f:Landroid/animation/ValueAnimator;

.field private g:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/fenlei/FenLeiPanelView;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->b:I

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/fenlei/FenLeiPanelView;)Lcom/zui/launcher/category/CategorySettings;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->e:Lcom/zui/launcher/category/CategorySettings;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/fenlei/FenLeiPanelView;)Lcom/zui/launcher/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a:Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method private d(Lcom/zui/launcher/dragndrop/DragLayer;Lcom/zui/launcher/fenlei/FenleiListItem;Landroid/view/View;Landroid/view/View;[I[IFF)V
    .locals 11

    move-object v4, p4

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v5, v3, [F

    const/4 v6, 0x0

    aget v7, p5, v6

    int-to-float v7, v7

    aput v7, v5, v6

    aget v7, p6, v6

    int-to-float v7, v7

    aput v7, v5, v0

    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p4, v1}, Lcom/zui/launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v3, [F

    aget v8, p5, v0

    int-to-float v8, v8

    aput v8, v7, v6

    aget v8, p6, v0

    int-to-float v8, v8

    aput v8, v7, v0

    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-static {p4, v2}, Lcom/zui/launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v5, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v3, [F

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v8, v6

    aput p7, v8, v0

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p4, v5}, Lcom/zui/launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v7, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v3, [F

    aput v9, v10, v6

    aput p8, v10, v0

    invoke-static {v8, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {p4, v7}, Lcom/zui/launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-static {}, Lcom/zui/launcher/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v8

    const-wide/16 v9, 0x12c

    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v1, v9, v6

    aput-object v2, v9, v0

    aput-object v5, v9, v3

    const/4 v0, 0x3

    aput-object v7, v9, v0

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;-><init>(Lcom/zui/launcher/fenlei/FenLeiPanelView;Lcom/zui/launcher/fenlei/FenleiListItem;Landroid/view/View;Landroid/view/View;[ILcom/zui/launcher/dragndrop/DragLayer;)V

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private e(Landroid/view/LayoutInflater;Landroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;II)Landroid/view/View;
    .locals 3

    const v0, 0x7f0d00b1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0180

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, p2, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const p2, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    iput p5, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p6, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    return-object p1
.end method

.method private f(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a:Lcom/zui/launcher/Launcher;

    iget v3, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->b:I

    invoke-virtual {v2, v3}, Lcom/zui/launcher/Launcher;->getFolderInfoById(I)Lcom/zui/launcher/FolderInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zui/launcher/Workspace;->findViewByInfo(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/zui/launcher/folder/Folder;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/folder/Folder;->getViewForInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/zui/launcher/BubbleTextView;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v0}, Lcom/zui/launcher/BubbleTextView;->getCompoundTopDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0, v2}, Lcom/zui/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->createIconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object p1, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1, v1}, Lcom/zui/launcher/Utilities;->drawImageDropShadow(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->createIconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070368

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v0
.end method

.method private g()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07036d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/category/CategoryLog;->i(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Lcom/zui/launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/fenlei/FenLeiPanelView$h;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/fenlei/FenLeiPanelView$h;-><init>(Lcom/zui/launcher/fenlei/FenLeiPanelView;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/zui/launcher/fenlei/FenLeiPanelView$i;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/fenlei/FenLeiPanelView$i;-><init>(Lcom/zui/launcher/fenlei/FenLeiPanelView;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->f:Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected animItemsToPosition(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p3

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v9, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v12

    instance-of v0, v12, Lcom/zui/launcher/folder/Folder;

    if-nez v0, :cond_0

    return-object v11

    :cond_0
    iget-object v0, v9, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v13

    const v0, 0x7f0a017d

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/zui/launcher/fenlei/FenleiListView;

    iget-object v0, v9, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070368

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v1, 0x7f070365

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const v1, 0x7f07036c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v1, 0x7f07036b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/16 v18, 0x0

    move/from16 v5, p2

    move/from16 v4, v18

    :goto_0
    if-ge v4, v5, :cond_4

    move-object/from16 v3, p1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v2}, Lcom/zui/launcher/folder/Folder;->getViewForInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v14, v2}, Lcom/zui/launcher/fenlei/FenleiListView;->getViewByInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/fenlei/FenleiListItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/fenlei/FenleiListItem;->getTextDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    goto :goto_1

    :cond_1
    invoke-direct {v9, v2}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->f(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    :goto_1
    move/from16 v20, v4

    iget-object v4, v2, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v21, v11

    move-object v11, v0

    move-object/from16 v0, p0

    move-object/from16 v22, v1

    move-object v1, v15

    move-object/from16 v23, v15

    move-object v15, v2

    move-object/from16 v2, v19

    move/from16 v3, v17

    move/from16 v19, v20

    move v5, v7

    move/from16 v20, v6

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->e(Landroid/view/LayoutInflater;Landroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;II)Landroid/view/View;

    move-result-object v4

    iget-object v0, v15, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v0, v0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, v15, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v1, v1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v5, v8

    div-float v24, v2, v5

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float v25, v1, v5

    const v1, 0x7f0a0180

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v5, v7

    div-float v3, v5, v6

    invoke-virtual {v4, v3}, Landroid/view/View;->setPivotX(F)V

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setPivotY(F)V

    const/4 v2, 0x2

    new-array v3, v2, [I

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestLayout()V

    move-object/from16 v6, v22

    invoke-virtual {v13, v6, v3}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    new-array v2, v2, [I

    if-eqz v11, :cond_2

    invoke-virtual {v13, v11, v2}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    goto :goto_2

    :cond_2
    invoke-virtual {v13, v14, v2}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    aget v22, v2, v18

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v28

    add-int v22, v22, v28

    aput v22, v2, v18

    :goto_2
    invoke-virtual {v12}, Lcom/zui/launcher/folder/Folder;->getContentCellWidth()I

    move-result v22

    move-object/from16 v28, v14

    sub-int v14, v7, v8

    int-to-float v14, v14

    const/high16 v27, 0x40000000    # 2.0f

    div-float v14, v14, v27

    float-to-int v14, v14

    sub-int v0, v22, v0

    int-to-float v0, v0

    div-float v0, v0, v27

    float-to-int v0, v0

    int-to-float v0, v0

    int-to-float v14, v14

    mul-float v14, v14, v24

    sub-float/2addr v0, v14

    float-to-int v0, v0

    aget v14, v3, v18

    int-to-float v14, v14

    move/from16 v29, v7

    iget v7, v15, Lcom/zui/launcher/ItemInfo;->cellX:I

    mul-int v7, v7, v22

    int-to-float v7, v7

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v24, v22

    const/high16 v26, 0x40000000    # 2.0f

    div-float v22, v22, v26

    mul-float v5, v5, v22

    add-float/2addr v7, v5

    int-to-float v0, v0

    add-float/2addr v7, v0

    int-to-float v0, v10

    add-float/2addr v7, v0

    add-float/2addr v14, v7

    float-to-int v0, v14

    aput v0, v3, v18

    invoke-virtual {v12}, Lcom/zui/launcher/folder/Folder;->getContentCellHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v5, v9, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    int-to-float v1, v1

    mul-float v1, v1, v25

    sub-float/2addr v5, v1

    float-to-int v1, v5

    if-eqz v10, :cond_3

    add-int v1, v1, v16

    :cond_3
    const/4 v5, 0x1

    aget v7, v3, v5

    int-to-float v7, v7

    iget v14, v15, Lcom/zui/launcher/ItemInfo;->cellY:I

    mul-int/2addr v14, v0

    int-to-float v0, v14

    move/from16 v14, v20

    int-to-float v15, v14

    mul-float v22, v22, v15

    add-float v0, v0, v22

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float/2addr v7, v0

    float-to-int v0, v7

    aput v0, v3, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "src : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v2, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/category/CategoryLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dest : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v3, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v3, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/category/CategoryLog;->i(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v5, v2

    move-object v2, v11

    move-object v7, v3

    move-object v3, v6

    move-object v6, v7

    move/from16 v11, v29

    move/from16 v7, v24

    move v15, v8

    move/from16 v8, v25

    invoke-direct/range {v0 .. v8}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->d(Lcom/zui/launcher/dragndrop/DragLayer;Lcom/zui/launcher/fenlei/FenleiListItem;Landroid/view/View;Landroid/view/View;[I[IFF)V

    add-int/lit8 v4, v19, 0x1

    move/from16 v5, p2

    move v7, v11

    move v6, v14

    move v8, v15

    move-object/from16 v11, v21

    move-object/from16 v15, v23

    move-object/from16 v14, v28

    goto/16 :goto_0

    :cond_4
    move-object/from16 v21, v11

    return-object v21
.end method

.method protected executeOnePageAdd(Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;II)V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zui/launcher/fenlei/FenLeiPanelView$c;-><init>(Lcom/zui/launcher/fenlei/FenLeiPanelView;Ljava/util/ArrayList;II)V

    add-int/lit8 p2, p2, 0x1

    int-to-long p1, p2

    const-wide/16 v1, 0x258

    mul-long/2addr p1, v1

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected getCurrentSize(Lcom/zui/launcher/Launcher;I)I
    .locals 0

    invoke-virtual {p1, p2}, Lcom/zui/launcher/Launcher;->getFolderInfoById(I)Lcom/zui/launcher/FolderInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/FolderInfo;->getCount()I

    move-result p0

    return p0
.end method

.method public getExtendedTouchView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->c:Lcom/zui/launcher/folder/Folder;

    return-object p0
.end method

.method public getLogContainerType()I
    .locals 0

    const/16 p0, 0x16

    return p0
.end method

.method protected handleClose(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a:Lcom/zui/launcher/Launcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->removeFenLeiView()V

    :cond_0
    return-void
.end method

.method protected hideOneself()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->g:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07036d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Lcom/zui/launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/fenlei/FenLeiPanelView$f;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/fenlei/FenLeiPanelView$f;-><init>(Lcom/zui/launcher/fenlei/FenLeiPanelView;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/zui/launcher/fenlei/FenLeiPanelView$g;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/fenlei/FenLeiPanelView$g;-><init>(Lcom/zui/launcher/fenlei/FenLeiPanelView;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->g:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected hideWithAnimate()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/zui/launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/fenlei/FenLeiPanelView$d;

    invoke-direct {v1, p0}, Lcom/zui/launcher/fenlei/FenLeiPanelView$d;-><init>(Lcom/zui/launcher/fenlei/FenLeiPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public isOfType(I)Z
    .locals 0

    const/high16 p0, 0x20000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public logActionCommand(I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->getLogContainerType()I

    move-result v1

    invoke-virtual {v0, p1, p0, v1}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionCommand(ILandroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a017d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/fenlei/FenleiListView;

    const v1, 0x7f0a017c

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->setEnabled(Landroid/widget/TextView;Z)V

    new-instance v3, Lcom/zui/launcher/fenlei/FenLeiPanelView$a;

    invoke-direct {v3, p0, v0}, Lcom/zui/launcher/fenlei/FenLeiPanelView$a;-><init>(Lcom/zui/launcher/fenlei/FenLeiPanelView;Lcom/zui/launcher/fenlei/FenleiListView;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a017a

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, v3, v2}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->setEnabled(Landroid/widget/TextView;Z)V

    new-instance v2, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/zui/launcher/fenlei/FenLeiPanelView$b;-><init>(Lcom/zui/launcher/fenlei/FenLeiPanelView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/zui/launcher/fenlei/FenleiListView;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->g()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-ne p1, p0, :cond_0

    const p1, 0x7f0a017a

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0a017c

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->setEnabled(Landroid/widget/TextView;Z)V

    invoke-virtual {p0, p2, v1}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->setEnabled(Landroid/widget/TextView;Z)V

    const p1, 0x7f0a017d

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/fenlei/FenleiListView;

    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollTo(II)V

    iput-boolean v1, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne v1, p2, :cond_1

    if-ne p1, p0, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setAddEnabled(Z)V
    .locals 1

    const v0, 0x7f0a017a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->setEnabled(Landroid/widget/TextView;Z)V

    return-void
.end method

.method protected setEnabled(Landroid/widget/TextView;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setup(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/folder/Folder;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->c:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p2}, Lcom/zui/launcher/folder/Folder;->getInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->id:I

    iput v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->b:I

    invoke-static {p1}, Lcom/zui/launcher/category/CategorySettings;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/category/CategorySettings;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->e:Lcom/zui/launcher/category/CategorySettings;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-le p1, v1, :cond_0

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1203b0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f0a017b

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->a:Lcom/zui/launcher/Launcher;

    iget p1, p1, Lcom/zui/launcher/Launcher;->mTextColor:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    invoke-virtual {p2}, Lcom/zui/launcher/folder/Folder;->isFirstOpen()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->d:Z

    return-void
.end method

.method protected trackEventAddClick()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackEventAddClick ----- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/category/CategoryLog;->i(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->d:Z

    const/4 v0, 0x1

    const-string v1, "SmartFolder"

    if-eqz p0, :cond_0

    const-string p0, "popofnew"

    const-string v2, "newfolder"

    goto :goto_0

    :cond_0
    const-string p0, "popoffolder"

    const-string v2, "openfolder"

    :goto_0
    invoke-static {v1, p0, v2, v0}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected trackEventIgnoreClick()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackEventIgnoreClick ----- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/category/CategoryLog;->i(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->d:Z

    const/4 v0, 0x2

    const-string v1, "SmartFolder"

    if-eqz p0, :cond_0

    const-string p0, "popofnew"

    const-string v2, "newfolder"

    goto :goto_0

    :cond_0
    const-string p0, "popoffolder"

    const-string v2, "openfolder"

    :goto_0
    invoke-static {v1, p0, v2, v0}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected trackEventSelectedItems(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackEventSelectedItems ----- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/category/CategoryLog;->i(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView;->d:Z

    const-string v0, "SmartFolder"

    if-eqz p0, :cond_0

    const-string p0, "selectallofnew"

    const-string v1, "newfolder"

    goto :goto_0

    :cond_0
    const-string p0, "selectalloffolder"

    const-string v1, "openfolder"

    :goto_0
    invoke-static {v0, p0, v1, p1}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
