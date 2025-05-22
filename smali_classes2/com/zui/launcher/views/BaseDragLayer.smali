.class public abstract Lcom/zui/launcher/views/BaseDragLayer;
.super Lcom/zui/launcher/InsettableFrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;,
        Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/zui/launcher/views/ActivityContext;",
        ">",
        "Lcom/zui/launcher/InsettableFrameLayout;"
    }
.end annotation


# static fields
.field public static final LAYOUT_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAYOUT_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private final a:Landroid/graphics/RectF;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private b:I

.field private final c:Lcom/zui/launcher/util/MultiValueAlpha;

.field private d:Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;

.field private e:Lcom/zui/quickstep/RecentsAnimationDeviceState;

.field protected mActiveController:Lcom/zui/launcher/util/TouchController;

.field protected final mActivity:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mControllers:[Lcom/zui/launcher/util/TouchController;

.field protected final mHitRect:Landroid/graphics/Rect;

.field protected mProxyTouchController:Lcom/zui/launcher/util/TouchController;

.field protected final mTmpRectPoints:[F

.field protected final mTmpXY:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/views/BaseDragLayer$a;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "x"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/views/BaseDragLayer$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/views/BaseDragLayer;->LAYOUT_X:Landroid/util/Property;

    new-instance v0, Lcom/zui/launcher/views/BaseDragLayer$b;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "y"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/views/BaseDragLayer$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/views/BaseDragLayer;->LAYOUT_Y:Landroid/util/Property;

    const-class v0, Lcom/zui/launcher/views/BaseDragLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/views/BaseDragLayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/zui/launcher/views/BaseDragLayer;->mTmpXY:[F

    const/4 p2, 0x4

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/zui/launcher/views/BaseDragLayer;->mTmpRectPoints:[F

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/views/BaseDragLayer;->mHitRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/views/BaseDragLayer;->a:Landroid/graphics/RectF;

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/launcher/views/BaseDragLayer;->b:I

    invoke-static {p1}, Lcom/zui/launcher/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    new-instance p1, Lcom/zui/launcher/util/MultiValueAlpha;

    invoke-direct {p1, p0, p3}, Lcom/zui/launcher/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/zui/launcher/views/BaseDragLayer;->c:Lcom/zui/launcher/util/MultiValueAlpha;

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Lcom/zui/launcher/util/TouchController;
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/views/ActivityContext;

    invoke-static {v0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/zui/launcher/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/high16 v1, 0x30000

    invoke-virtual {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->isOfType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v2, Lcom/zui/launcher/views/ActivityContext;

    invoke-static {v2, v1}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenViewExcludeType(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, p1}, Lcom/zui/launcher/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->isOfType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->isEventValidForDragLayer(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/views/ActivityContext;

    invoke-static {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenViewExcludeType(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/zui/launcher/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/views/BaseDragLayer;->isEventTypeTwoProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mControllers:[Lcom/zui/launcher/util/TouchController;

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    invoke-interface {v3, p1}, Lcom/zui/launcher/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object p0, Lcom/zui/launcher/views/BaseDragLayer;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "find controller:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method static synthetic b(Lcom/zui/launcher/AbstractFloatingView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return-void
.end method


# virtual methods
.method protected addAccessibleChildToList(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/views/ActivityContext;

    const v1, 0x7fcbf

    invoke-static {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenViewWithType(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->addAccessibleChildToList(Landroid/view/View;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/views/ActivityContext;

    invoke-static {v0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addFocusables(Ljava/util/ArrayList;II)V

    :goto_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    return p0
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/views/BaseDragLayer;->a:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Insets;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Insets;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Insets;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseDragLayer.dispatchTouchEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b/132900132"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->b:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->b:I

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/zui/launcher/views/BaseDragLayer;->b:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/zui/launcher/views/BaseDragLayer;->b:I

    iget-object v3, p0, Lcom/zui/launcher/views/BaseDragLayer;->a:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/zui/launcher/views/BaseDragLayer;->a:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/zui/launcher/views/BaseDragLayer;->a:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->b:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_0

    :cond_4
    :goto_1
    iget v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->b:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast p0, Lcom/zui/launcher/views/ActivityContext;

    invoke-static {p0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DragLayer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActiveController:Lcom/zui/launcher/util/TouchController;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tactiveController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActiveController:Lcom/zui/launcher/util/TouchController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActiveController:Lcom/zui/launcher/util/TouchController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/zui/launcher/util/TouchController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tdragLayerAlpha : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/views/BaseDragLayer;->c:Lcom/zui/launcher/util/MultiValueAlpha;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected findActiveController(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActiveController:Lcom/zui/launcher/util/TouchController;

    iget v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->b:I

    and-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->a(Landroid/view/MotionEvent;)Lcom/zui/launcher/util/TouchController;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActiveController:Lcom/zui/launcher/util/TouchController;

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/views/BaseDragLayer;->generateDefaultLayoutParams()Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/views/BaseDragLayer;->generateDefaultLayoutParams()Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/views/BaseDragLayer;->generateDefaultLayoutParams()Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;
    .locals 1

    new-instance p0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;
    .locals 1

    new-instance v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;
    .locals 0

    new-instance p0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getActivity()Landroid/content/Context;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    return-object p0
.end method

.method public getAlphaProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/BaseDragLayer;->c:Lcom/zui/launcher/util/MultiValueAlpha;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/MultiValueAlpha;->getProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    return-object p0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    move-result p0

    return p0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F
    .locals 0

    invoke-static {p1, p0, p2, p3}, Lcom/zui/launcher/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    move-result p0

    return p0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mTmpXY:[F

    const/4 v1, 0x0

    aget v2, p2, v1

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, p2, v1

    int-to-float v2, v2

    aput v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mTmpXY:[F

    invoke-static {p0, p2}, Lcom/zui/launcher/Utilities;->roundArray([F[I)V

    return p1
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mTmpRectPoints:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-nez p1, :cond_0

    aput v2, v0, v5

    aput v2, v0, v4

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v5

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mTmpRectPoints:[F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v4

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mTmpRectPoints:[F

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mTmpRectPoints:[F

    aget v2, v0, v1

    aget v0, v0, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mTmpRectPoints:[F

    aget v2, v0, v3

    aget v0, v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mTmpRectPoints:[F

    aget v1, v0, v1

    aget v0, v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mTmpRectPoints:[F

    aget v0, p0, v3

    aget p0, p0, v4

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public getDeviceState()Lcom/zui/quickstep/RecentsAnimationDeviceState;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/BaseDragLayer;->e:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    return-object p0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)F
    .locals 2

    const/4 v0, 0x0

    aput v0, p2, v0

    const/4 v1, 0x1

    aput v0, p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result p0

    return p0
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    const/4 p0, 0x0

    aget v1, v0, p0

    const/4 v2, 0x1

    aget v3, v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget p0, v0, p0

    aget v0, v0, v2

    sub-int/2addr p0, v1

    sub-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, p0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object p0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-virtual {p0, p3, v0}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    iget-object p2, p0, Lcom/zui/launcher/views/BaseDragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object p0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mHitRect:Landroid/graphics/Rect;

    aget p1, v0, v2

    aget p2, v0, v1

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isEventOverViewForDoom(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget-object p0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mHitRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, p0, :cond_0

    if-lt p1, v0, :cond_0

    if-ge p1, v1, :cond_0

    if-lt p2, v2, :cond_0

    if-gt p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract isEventTypeTwoProcess()Z
.end method

.method public mapCoordInSelfToDescendant(Landroid/view/View;[F)V
    .locals 0

    invoke-static {p1, p0, p2}, Lcom/zui/launcher/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    return-void
.end method

.method public mapCoordInSelfToDescendant(Landroid/view/View;[I)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mTmpXY:[F

    const/4 v1, 0x0

    aget v2, p2, v1

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, p2, v1

    int-to-float v2, v2

    aput v2, v0, v1

    invoke-static {p1, p0, v0}, Lcom/zui/launcher/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    iget-object p0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mTmpXY:[F

    invoke-static {p0, p2}, Lcom/zui/launcher/Utilities;->roundArray([F[I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->finishAutoCancelActionMode()Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->d:Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;->onTouchComplete()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->d:Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->findActiveController(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    instance-of p5, p4, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    if-eqz p5, :cond_0

    check-cast p4, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    iget-boolean p5, p4, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    if-eqz p5, :cond_0

    iget p5, p4, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->x:I

    iget v0, p4, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->y:I

    iget v1, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v1, p5

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p4, v0

    invoke-virtual {p3, p5, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/views/ActivityContext;

    invoke-static {v0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/views/ActivityContext;

    const v1, 0x7fcbf

    invoke-static {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenViewWithType(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v1, "b/133009122"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->d:Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;->onTouchComplete()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->d:Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActiveController:Lcom/zui/launcher/util/TouchController;

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_4

    const-string v0, "onTouchEvent 1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActiveController:Lcom/zui/launcher/util/TouchController;

    invoke-interface {p0, p1}, Lcom/zui/launcher/util/TouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->findActiveController(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    instance-of v0, p1, Lcom/zui/launcher/AbstractFloatingView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/AbstractFloatingView;

    invoke-virtual {p1}, Lcom/zui/launcher/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/launcher/views/g;

    invoke-direct {v0, p1}, Lcom/zui/launcher/views/g;-><init>(Lcom/zui/launcher/AbstractFloatingView;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/util/DefaultDisplay;->getSingleFrameMs(Landroid/content/Context;)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public prepareProxyEventStarting(Lcom/zui/quickstep/RecentsAnimationDeviceState;)Z
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mProxyTouchController:Lcom/zui/launcher/util/TouchController;

    iget v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActiveController:Lcom/zui/launcher/util/TouchController;

    if-eqz v1, :cond_0

    and-int/lit8 p1, v0, -0x5

    iput p1, p0, Lcom/zui/launcher/views/BaseDragLayer;->b:I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->b:I

    iput-object p1, p0, Lcom/zui/launcher/views/BaseDragLayer;->e:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    const/4 p0, 0x1

    return p0
.end method

.method public proxyTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mProxyTouchController:Lcom/zui/launcher/util/TouchController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/zui/launcher/util/TouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->a(Landroid/view/MotionEvent;)Lcom/zui/launcher/util/TouchController;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mProxyTouchController:Lcom/zui/launcher/util/TouchController;

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/views/BaseDragLayer;->mProxyTouchController:Lcom/zui/launcher/util/TouchController;

    iget p1, p0, Lcom/zui/launcher/views/BaseDragLayer;->b:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/zui/launcher/views/BaseDragLayer;->b:I

    :cond_3
    return v0
.end method

.method public abstract recreateControllers()V
.end method

.method public setTouchCompleteListener(Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/BaseDragLayer;->d:Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;

    return-void
.end method
