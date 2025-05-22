.class public abstract Lcom/zui/launcher/ButtonDropTarget;
.super Landroid/widget/TextView;
.source ""

# interfaces
.implements Lcom/zui/launcher/DropTarget;
.implements Lcom/zui/launcher/dragndrop/DragController$DragListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TOOLTIP_DEFAULT:I = 0x0

.field public static final TOOLTIP_LEFT:I = 0x1

.field public static final TOOLTIP_RIGHT:I = 0x2

.field private static final j:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/ButtonDropTarget;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:[I


# instance fields
.field private a:I

.field private b:Z

.field private final c:I

.field private d:Landroid/widget/PopupWindow;

.field private e:I

.field private f:Landroid/animation/AnimatorSet;

.field g:Landroid/graphics/ColorMatrix;

.field h:Landroid/graphics/ColorMatrix;

.field i:Landroid/graphics/ColorMatrix;

.field protected mActive:Z

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDropTargetBar:Lcom/zui/launcher/DropTargetBar;

.field protected mHoverColor:I

.field protected final mLauncher:Lcom/zui/launcher/Launcher;

.field protected mOriginalTextColor:Landroid/content/res/ColorStateList;

.field protected mText:Ljava/lang/CharSequence;

.field protected mTextVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/ButtonDropTarget$a;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "textColor"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/ButtonDropTarget$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/ButtonDropTarget;->j:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/zui/launcher/ButtonDropTarget;->k:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/launcher/ButtonDropTarget;->mHoverColor:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/zui/launcher/ButtonDropTarget;->mTextVisible:Z

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702c0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/ButtonDropTarget;->a:I

    const p2, 0x7f0702bb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/ButtonDropTarget;->c:I

    return-void
.end method

.method private hideTooltip()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->d:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->d:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->f:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->f:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->g:Landroid/graphics/ColorMatrix;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->g:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->h:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->i:Landroid/graphics/ColorMatrix;

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/ButtonDropTarget;->getTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/ButtonDropTarget;->g:Landroid/graphics/ColorMatrix;

    invoke-static {v0, v1, v2}, Lcom/zui/launcher/util/Themes;->setColorChangeOnMatrix(IILandroid/graphics/ColorMatrix;)V

    iget-object v1, p0, Lcom/zui/launcher/ButtonDropTarget;->h:Landroid/graphics/ColorMatrix;

    invoke-static {v0, p1, v1}, Lcom/zui/launcher/util/Themes;->setColorChangeOnMatrix(IILandroid/graphics/ColorMatrix;)V

    new-instance v0, Landroid/animation/FloatArrayEvaluator;

    iget-object v1, p0, Lcom/zui/launcher/ButtonDropTarget;->i:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/zui/launcher/ButtonDropTarget;->g:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/zui/launcher/ButtonDropTarget;->h:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/m;

    invoke-direct {v1, p0}, Lcom/zui/launcher/m;-><init>(Lcom/zui/launcher/ButtonDropTarget;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/zui/launcher/ButtonDropTarget;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->f:Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/zui/launcher/ButtonDropTarget;->j:Landroid/util/Property;

    new-array v2, v4, [I

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/zui/launcher/ButtonDropTarget;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final acceptDrop(Lcom/zui/launcher/DropTarget$DragObject;)Z
    .locals 0

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ButtonDropTarget;->supportsDrop(Lcom/zui/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/zui/launcher/ButtonDropTarget;->i:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public synthetic c(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ButtonDropTarget;->completeDrop(Lcom/zui/launcher/DropTarget$DragObject;)V

    iget-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mDropTargetBar:Lcom/zui/launcher/DropTargetBar;

    invoke-virtual {p1}, Lcom/zui/launcher/DropTargetBar;->onDragEnd()V

    iget-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    :cond_0
    return-void
.end method

.method public abstract completeDrop(Lcom/zui/launcher/DropTarget$DragObject;)V
.end method

.method public enterDraggingMode()V
    .locals 0

    return-void
.end method

.method public exitDraggingMode()V
    .locals 0

    return-void
.end method

.method public abstract getAccessibilityAction()I
.end method

.method public abstract getDropTargetForLogging()Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/zui/launcher/ButtonDropTarget;->a:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    sget-object v0, Lcom/zui/launcher/ButtonDropTarget;->k:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aput v2, v0, v2

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    sget-object v3, Lcom/zui/launcher/ButtonDropTarget;->k:[I

    invoke-virtual {v0, p0, v3}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    sget-object p0, Lcom/zui/launcher/ButtonDropTarget;->k:[I

    aget v0, p0, v2

    aget p0, p0, v1

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method

.method public getIconRect(Lcom/zui/launcher/DropTarget$DragObject;)Landroid/graphics/Rect;
    .locals 7

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object v2, p0, Lcom/zui/launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, p0, v4}, Lcom/zui/launcher/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v3, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, p1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int v5, v3, p1

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v6, p0

    add-int p0, v6, v2

    invoke-virtual {v4, v3, v6, v5, p0}, Landroid/graphics/Rect;->set(IIII)V

    sub-int/2addr v0, p1

    neg-int p0, v0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, v2

    neg-int p1, v1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v4, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-object v4
.end method

.method public getTextColor()I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public isDropEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mActive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/launcher/ButtonDropTarget;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->getDistanceDragged()F

    move-result v0

    iget p0, p0, Lcom/zui/launcher/ButtonDropTarget;->c:I

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTextTruncated(I)Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    int-to-float p1, p1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, p1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public abstract onAccessibilityDrop(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAccessibilityDelegate()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V

    return-void
.end method

.method public onDragEnd()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mActive:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDragEnter(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 4

    iget-boolean v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->accessibleDrag:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mTextVisible:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/zui/launcher/ButtonDropTarget;->hideTooltip()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zui/launcher/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/zui/launcher/ButtonDropTarget;->d:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/zui/launcher/ButtonDropTarget;->e:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v2}, Landroid/widget/TextView;->measure(II)V

    iget v2, p0, Lcom/zui/launcher/ButtonDropTarget;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0, v2, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_2
    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/zui/launcher/ButtonDropTarget;->mHoverColor:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/dragndrop/DragView;->setColor(I)V

    :cond_3
    iget v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mHoverColor:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/ButtonDropTarget;->a(I)V

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->stateAnnouncer:Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->cancel()V

    :cond_4
    invoke-virtual {p0}, Lcom/zui/launcher/ButtonDropTarget;->enterDraggingMode()V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public onDragExit(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/ButtonDropTarget;->hideTooltip()V

    iget-boolean v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragComplete:Z

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/dragndrop/DragView;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/ButtonDropTarget;->resetHoverColor()V

    invoke-virtual {p0}, Lcom/zui/launcher/ButtonDropTarget;->exitDraggingMode()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget p0, p0, Lcom/zui/launcher/ButtonDropTarget;->mHoverColor:I

    invoke-virtual {p1, p0}, Lcom/zui/launcher/dragndrop/DragView;->setColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDragOver(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 1

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ButtonDropTarget;->supportsDrop(Lcom/zui/launcher/ItemInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mActive:Z

    iget-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->f:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->f:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-boolean p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mActive:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/ButtonDropTarget;->startDragging()V

    iget-boolean p1, p2, Lcom/zui/launcher/dragndrop/DragOptions;->isAccessibleDrag:Z

    iput-boolean p1, p0, Lcom/zui/launcher/ButtonDropTarget;->b:Z

    if-eqz p1, :cond_2

    move-object v0, p0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDrop(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v2, v2, Lcom/zui/launcher/dragndrop/DragOptions;->isFlingToDelete:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v3

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, v1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v3, v2, v5}, Lcom/zui/launcher/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p1}, Lcom/zui/launcher/ButtonDropTarget;->getIconRect(Lcom/zui/launcher/DropTarget$DragObject;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v7, v2, v4

    iget-object v2, v0, Lcom/zui/launcher/ButtonDropTarget;->mDropTargetBar:Lcom/zui/launcher/DropTargetBar;

    invoke-virtual {v2}, Lcom/zui/launcher/DropTargetBar;->deferOnDragEnd()V

    new-instance v15, Lcom/zui/launcher/n;

    invoke-direct {v15, v0, v1}, Lcom/zui/launcher/n;-><init>(Lcom/zui/launcher/ButtonDropTarget;Lcom/zui/launcher/DropTarget$DragObject;)V

    iget-object v4, v1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3dcccccd    # 0.1f

    const/16 v12, 0x11d

    sget-object v13, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    sget-object v14, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v3 .. v17}, Lcom/zui/launcher/dragndrop/DragLayer;->animateView(Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 0

    return-void
.end method

.method protected resetHoverColor()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/ButtonDropTarget;->a(I)V

    return-void
.end method

.method public setDrawable(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mTextVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDropTargetBar(Lcom/zui/launcher/DropTargetBar;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mDropTargetBar:Lcom/zui/launcher/DropTargetBar;

    return-void
.end method

.method public setTextVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-boolean v1, p0, Lcom/zui/launcher/ButtonDropTarget;->mTextVisible:Z

    if-ne v1, p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iput-boolean p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mTextVisible:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mTextVisible:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setToolTipLocation(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/ButtonDropTarget;->e:I

    invoke-direct {p0}, Lcom/zui/launcher/ButtonDropTarget;->hideTooltip()V

    return-void
.end method

.method public startDragging()V
    .locals 0

    return-void
.end method

.method public abstract supportsAccessibilityDrop(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
.end method

.method protected abstract supportsDrop(Lcom/zui/launcher/ItemInfo;)Z
.end method

.method protected updateText(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
