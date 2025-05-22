.class public Lcom/zui/quickstep/views/LongSwipeView;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/Insettable;
.implements Lcom/zui/launcher/util/DefaultDisplay$DisplayInfoChangeListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:F

.field private f:Ljava/lang/Runnable;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/Runnable;

.field private j:Landroid/view/WindowManager;

.field private k:Landroid/view/WindowManager$LayoutParams;

.field protected mHoverColor:I

.field protected mOriginalTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/quickstep/views/LongSwipeView$a;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "textColor"

    invoke-direct {v0, v1, v2}, Lcom/zui/quickstep/views/LongSwipeView$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/zui/quickstep/views/j;

    invoke-direct {p1, p0}, Lcom/zui/quickstep/views/j;-><init>(Lcom/zui/quickstep/views/LongSwipeView;)V

    iput-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->f:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->g:Z

    iput-boolean p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/views/LongSwipeView;->i:Ljava/lang/Runnable;

    iput p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->mHoverColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/zui/quickstep/views/j;

    invoke-direct {p1, p0}, Lcom/zui/quickstep/views/j;-><init>(Lcom/zui/quickstep/views/LongSwipeView;)V

    iput-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->f:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->g:Z

    iput-boolean p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->h:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/zui/quickstep/views/LongSwipeView;->i:Ljava/lang/Runnable;

    iput p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->mHoverColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/zui/quickstep/views/j;

    invoke-direct {p1, p0}, Lcom/zui/quickstep/views/j;-><init>(Lcom/zui/quickstep/views/LongSwipeView;)V

    iput-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->f:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->g:Z

    iput-boolean p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->h:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/zui/quickstep/views/LongSwipeView;->i:Ljava/lang/Runnable;

    iput p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->mHoverColor:I

    return-void
.end method

.method private static a(Landroid/content/Context;I)Landroid/content/Context;
    .locals 2

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/LongSwipeView;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/views/LongSwipeView;->g:Z

    invoke-virtual {p0, v0, v0}, Landroid/widget/RelativeLayout;->performHapticFeedback(II)Z

    :cond_0
    return-void
.end method

.method private setMode(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/zui/quickstep/views/LongSwipeView;->d:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/zui/quickstep/views/LongSwipeView;->a:Landroid/view/View;

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->a:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->d:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f07083f

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/zui/quickstep/views/LongSwipeView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object p0, p0, Lcom/zui/quickstep/views/LongSwipeView;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/zui/quickstep/views/LongSwipeView;->a:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->a:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setViewPercent(F)V
    .locals 9

    const v0, 0x3e851eb8    # 0.26f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/LongSwipeView;->setMode(I)V

    return-void

    :cond_0
    const v1, 0x3efd70a4    # 0.495f

    cmpg-float v2, p1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_1

    invoke-direct {p0, v3}, Lcom/zui/quickstep/views/LongSwipeView;->setMode(I)V

    iget-boolean v5, p0, Lcom/zui/quickstep/views/LongSwipeView;->g:Z

    if-eqz v5, :cond_2

    iput-boolean v3, p0, Lcom/zui/quickstep/views/LongSwipeView;->g:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4}, Lcom/zui/quickstep/views/LongSwipeView;->setMode(I)V

    :cond_2
    :goto_0
    const v5, 0x3ba3d700    # 0.004999995f

    const/high16 v6, 0x3f800000    # 1.0f

    if-gez v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    :cond_3
    sub-float v2, p1, v1

    div-float/2addr v2, v5

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v7, 0x43320000    # 178.0f

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    const v3, 0x3d23d710    # 0.04000002f

    const v7, 0x3e99999a    # 0.3f

    if-ge v2, v4, :cond_5

    cmpg-float v2, p1, v7

    if-gtz v2, :cond_4

    iget-object v2, p0, Lcom/zui/quickstep/views/LongSwipeView;->b:Landroid/widget/ImageView;

    sub-float v8, p1, v0

    div-float/2addr v8, v3

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/zui/quickstep/views/LongSwipeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_2
    const v2, 0x4059df51

    sub-float v8, p1, v0

    mul-float/2addr v8, v2

    add-float/2addr v8, v6

    iget-object v2, p0, Lcom/zui/quickstep/views/LongSwipeView;->b:Landroid/widget/ImageView;

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/zui/quickstep/views/LongSwipeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, p0, Lcom/zui/quickstep/views/LongSwipeView;->b:Landroid/widget/ImageView;

    const v8, 0x3fe66666    # 1.8f

    :goto_3
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v2, p0, Lcom/zui/quickstep/views/LongSwipeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-ge v2, v4, :cond_7

    cmpg-float v2, p1, v7

    if-gtz v2, :cond_6

    iget-object v2, p0, Lcom/zui/quickstep/views/LongSwipeView;->c:Landroid/view/View;

    sub-float v0, p1, v0

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    const v0, 0x3fa57eb5

    mul-float/2addr v0, p1

    add-float/2addr v0, v6

    iget-object v2, p0, Lcom/zui/quickstep/views/LongSwipeView;->c:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/zui/quickstep/views/LongSwipeView;->c:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/zui/quickstep/views/LongSwipeView;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    cmpl-float v0, p1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    if-ltz v0, :cond_8

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_8

    sub-float/2addr p1, v1

    div-float/2addr p1, v5

    iget-object v0, p0, Lcom/zui/quickstep/views/LongSwipeView;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    mul-float/2addr p1, v2

    add-float/2addr p1, v6

    iget-object v0, p0, Lcom/zui/quickstep/views/LongSwipeView;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/zui/quickstep/views/LongSwipeView;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_5

    :cond_8
    cmpl-float p1, p1, v2

    if-lez p1, :cond_9

    iget-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->a:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->a:Landroid/view/View;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/LongSwipeView;->c()V

    :cond_9
    :goto_5
    return-void
.end method


# virtual methods
.method public attached()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/views/LongSwipeView;->h:Z

    return p0
.end method

.method public synthetic b()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/zui/quickstep/views/LongSwipeView;->setMode(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  hashcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zui/quickstep/views/LongSwipeView;->h:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->d:Landroid/view/View;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/zui/launcher/util/DefaultDisplay;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {p1}, Lcom/zui/launcher/util/DefaultDisplay;->getInfo()Lcom/zui/launcher/util/DefaultDisplay$Info;

    move-result-object p1

    iget p1, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->rotation:I

    invoke-static {p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->isRotationLandscape(I)Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f070841

    goto :goto_0

    :cond_0
    const p1, 0x7f070840

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/zui/quickstep/views/LongSwipeView;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    const p1, 0x7f0a0251

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_2

    const p1, 0x7f1206de

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method

.method public onDisplayInfoChanged(Lcom/zui/launcher/util/DefaultDisplay$Info;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/LongSwipeView;->updateLayoutParams()V

    return-void
.end method

.method public onDragEnter()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public onDragExit()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0250

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/quickstep/views/LongSwipeView;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a024f

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/views/LongSwipeView;->c:Landroid/view/View;

    const v0, 0x7f0a0252

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/views/LongSwipeView;->d:Landroid/view/View;

    const v0, 0x7f0a0253

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/views/LongSwipeView;->a:Landroid/view/View;

    return-void
.end method

.method public postAttachIfNeeded(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/LongSwipeView;->h:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->i:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public setAttached(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->h:Z

    sget-object v0, Lcom/zui/launcher/util/DefaultDisplay;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/util/DefaultDisplay;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/DefaultDisplay;->addChangeListener(Lcom/zui/launcher/util/DefaultDisplay$DisplayInfoChangeListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/DefaultDisplay;->removeChangeListener(Lcom/zui/launcher/util/DefaultDisplay$DisplayInfoChangeListener;)V

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->i:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setValue(FF)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/LongSwipeView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/LongSwipeView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    div-float/2addr p1, p2

    iput p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->e:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/LongSwipeView;->updateLayoutParams()V

    iget p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->e:F

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/LongSwipeView;->setViewPercent(F)V

    :cond_0
    return-void
.end method

.method public setup(Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->j:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/zui/quickstep/views/LongSwipeView;->k:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public showDelayed(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "long swipe view, showDelayed---show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchInteractionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->f:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->i:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->i:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/views/LongSwipeView;->g:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateLayoutParams()V
    .locals 5

    sget-object v0, Lcom/zui/launcher/util/DefaultDisplay;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {v0}, Lcom/zui/launcher/util/DefaultDisplay;->getInfo()Lcom/zui/launcher/util/DefaultDisplay$Info;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/util/DefaultDisplay$Info;->rotation:I

    invoke-static {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->isRotationLandscape(I)Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v1, v2}, Lcom/zui/quickstep/views/LongSwipeView;->a(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/quickstep/views/LongSwipeView;->j:Landroid/view/WindowManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zui/quickstep/views/LongSwipeView;->k:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    sget-object v3, Lcom/zui/launcher/util/DefaultDisplay;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {v3}, Lcom/zui/launcher/util/DefaultDisplay;->getInfo()Lcom/zui/launcher/util/DefaultDisplay$Info;

    move-result-object v3

    iget-object v3, v3, Lcom/zui/launcher/util/DefaultDisplay$Info;->realSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, p0, Lcom/zui/quickstep/views/LongSwipeView;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07083e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/zui/quickstep/views/LongSwipeView;->j:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/zui/quickstep/views/LongSwipeView;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, p0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/zui/quickstep/views/LongSwipeView;->d:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_2

    const v0, 0x7f070841

    goto :goto_1

    :cond_2
    const v0, 0x7f070840

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object p0, p0, Lcom/zui/quickstep/views/LongSwipeView;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    return-void
.end method
