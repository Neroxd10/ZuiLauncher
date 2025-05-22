.class public Lcom/zui/launcher/BubbleTextView;
.super Landroid/widget/TextView;
.source ""

# interfaces
.implements Lcom/zui/launcher/icons/IconCache$ItemInfoUpdateReceiver;
.implements Lcom/zui/launcher/Launcher$OnResumeCallback;
.implements Lcom/zui/launcher/WorkspaceIconCompat;


# static fields
.field private static final G:[I

.field private static final H:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/BubbleTextView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static I:Landroid/graphics/Paint; = null

.field public static final PADDING_V:F = 3.0f

.field public static final TEXT_ALPHA_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Lcom/zui/launcher/graphics/HolographicOutlineHelper;

.field private B:I

.field private C:Landroid/graphics/Bitmap;

.field private D:Z

.field E:Z

.field private F:F

.field private final a:Lcom/zui/launcher/Launcher;

.field private final b:Lcom/zui/launcher/views/ActivityContext;

.field private c:Landroid/graphics/drawable/Drawable;

.field private final d:Z

.field private final e:Lcom/zui/launcher/CheckLongPressHelper;

.field private final f:Lcom/zui/launcher/StylusEventHelper;

.field private final g:F

.field private h:Z

.field private final i:I

.field private j:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private k:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private l:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private m:Lcom/zui/launcher/dot/DotInfo;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private n:Lcom/zui/launcher/icons/DotRenderer;

.field private o:Lcom/zui/launcher/icons/DotRenderer$DrawParams;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        deepExport = true
    .end annotation
.end field

.field private p:Landroid/animation/Animator;

.field private q:Z

.field private r:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private s:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private t:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final u:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private v:Lcom/zui/launcher/icons/cache/HandlerRunnable;

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Lcom/zui/launcher/WorkspaceItemInfo$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lcom/zui/launcher/BubbleTextView;->G:[I

    new-instance v0, Lcom/zui/launcher/BubbleTextView$a;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "dotScale"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/BubbleTextView$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/BubbleTextView;->H:Landroid/util/Property;

    new-instance v0, Lcom/zui/launcher/BubbleTextView$b;

    const-class v1, Ljava/lang/Float;

    const-string v2, "textAlpha"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/BubbleTextView$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    const/4 v0, 0x0

    sput-object v0, Lcom/zui/launcher/BubbleTextView;->I:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->j:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/zui/launcher/BubbleTextView;->l:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zui/launcher/BubbleTextView;->t:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/zui/launcher/BubbleTextView;->w:I

    const-string v4, ""

    iput-object v4, p0, Lcom/zui/launcher/BubbleTextView;->x:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/zui/launcher/BubbleTextView;->y:Z

    iput v3, p0, Lcom/zui/launcher/BubbleTextView;->B:I

    iput-boolean v2, p0, Lcom/zui/launcher/BubbleTextView;->D:Z

    iput-boolean v2, p0, Lcom/zui/launcher/BubbleTextView;->E:Z

    invoke-static {p1}, Lcom/zui/launcher/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/views/ActivityContext;

    iput-object v3, p0, Lcom/zui/launcher/BubbleTextView;->b:Lcom/zui/launcher/views/ActivityContext;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/zui/launcher/BubbleTextView;->g:F

    sget-object v3, Lcom/zui/launcher/R$styleable;->BubbleTextView:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/zui/launcher/BubbleTextView;->h:Z

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/BubbleTextView;->w:I

    const/4 v3, 0x2

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/zui/launcher/BubbleTextView;->b:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {p3}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p3

    iget v4, p3, Lcom/zui/launcher/DeviceProfile;->iconTextSizePx:I

    int-to-float v4, v4

    invoke-virtual {p0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v4, p3, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget p3, p3, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    :goto_0
    iput-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->u:Z

    goto :goto_1

    :cond_0
    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lcom/zui/launcher/BubbleTextView;->b:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {p3}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p3

    iget v4, p3, Lcom/zui/launcher/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-virtual {p0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v4, p3, Lcom/zui/launcher/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget p3, p3, Lcom/zui/launcher/DeviceProfile;->allAppsIconSizePx:I

    goto :goto_0

    :cond_1
    if-ne p3, v3, :cond_2

    iget-object p3, p0, Lcom/zui/launcher/BubbleTextView;->b:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {p3}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p3

    iget v4, p3, Lcom/zui/launcher/DeviceProfile;->folderChildTextSizePx:I

    int-to-float v4, v4

    invoke-virtual {p0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v4, p3, Lcom/zui/launcher/DeviceProfile;->folderChildDrawablePaddingPx:I

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget p3, p3, Lcom/zui/launcher/DeviceProfile;->folderChildIconSizePx:I

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/zui/launcher/BubbleTextView;->b:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {p3}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p3

    iget p3, p3, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    iput-boolean v2, p0, Lcom/zui/launcher/BubbleTextView;->u:Z

    :goto_1
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->d:Z

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/BubbleTextView;->i:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lcom/zui/launcher/CheckLongPressHelper;

    invoke-direct {p2, p0}, Lcom/zui/launcher/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/zui/launcher/BubbleTextView;->e:Lcom/zui/launcher/CheckLongPressHelper;

    new-instance p2, Lcom/zui/launcher/StylusEventHelper;

    new-instance p3, Lcom/zui/launcher/SimpleOnStylusPressListener;

    invoke-direct {p3, p0}, Lcom/zui/launcher/SimpleOnStylusPressListener;-><init>(Landroid/view/View;)V

    invoke-direct {p2, p3, p0}, Lcom/zui/launcher/StylusEventHelper;-><init>(Lcom/zui/launcher/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V

    iput-object p2, p0, Lcom/zui/launcher/BubbleTextView;->f:Lcom/zui/launcher/StylusEventHelper;

    new-instance p2, Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    invoke-direct {p2}, Lcom/zui/launcher/icons/DotRenderer$DrawParams;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/BubbleTextView;->o:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p2, p0, Lcom/zui/launcher/BubbleTextView;->b:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {p2}, Lcom/zui/launcher/views/ActivityContext;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/zui/launcher/BubbleTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/BubbleTextView;->setTextAlpha(F)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/graphics/HolographicOutlineHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/BubbleTextView;->A:Lcom/zui/launcher/graphics/HolographicOutlineHelper;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/BubbleTextView;->a:Lcom/zui/launcher/Launcher;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/BubbleTextView;)Lcom/zui/launcher/icons/DotRenderer$DrawParams;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/BubbleTextView;->o:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/BubbleTextView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/BubbleTextView;->p:Landroid/animation/Animator;

    return-object p1
.end method

.method private varargs c([F)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/BubbleTextView;->f()V

    sget-object v0, Lcom/zui/launcher/BubbleTextView;->H:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/BubbleTextView;->p:Landroid/animation/Animator;

    new-instance v0, Lcom/zui/launcher/BubbleTextView$c;

    invoke-direct {v0, p0}, Lcom/zui/launcher/BubbleTextView$c;-><init>(Lcom/zui/launcher/BubbleTextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/zui/launcher/BubbleTextView;->p:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private e(Lcom/zui/launcher/ItemInfoWithIcon;)V
    .locals 7

    iget-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->h:Z

    iget-object v1, p0, Lcom/zui/launcher/BubbleTextView;->b:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v1}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->h:Z

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->b:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/BubbleTextView;->w:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->folderChildDrawablePaddingPx:I

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_1

    :cond_0
    if-ne v1, v2, :cond_1

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    goto :goto_0

    :goto_1
    sget-object v1, Lcom/zui/launcher/graphics/DrawableFactory;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/graphics/DrawableFactory;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/zui/launcher/graphics/DrawableFactory;->newIcon(Landroid/content/Context;Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/launcher/BubbleTextView;->o:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060064

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, v3, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->color:I

    invoke-virtual {p0, v1}, Lcom/zui/launcher/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f120322

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    iget p1, p0, Lcom/zui/launcher/BubbleTextView;->w:I

    if-ne p1, v2, :cond_6

    invoke-virtual {p0}, Lcom/zui/launcher/BubbleTextView;->isLayoutHorizontal()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->allAppsIconPaddingPx:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4

    :cond_4
    iget p1, v0, Lcom/zui/launcher/DeviceProfile;->allAppsIconPaddingPx:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p1

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->allAppsIconPaddingPx:I

    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_6
    :goto_4
    return-void
.end method

.method private f()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/BubbleTextView;->p:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public static getIconBounds(Landroid/view/View;Landroid/graphics/Rect;IZ)V
    .locals 1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p3, p2

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    sub-int p0, v0, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    sub-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x2

    :goto_0
    add-int v0, p0, p2

    :goto_1
    add-int/2addr p2, p3

    invoke-virtual {p1, p0, p3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getModifiedColor()I
    .locals 2

    iget v0, p0, Lcom/zui/launcher/BubbleTextView;->l:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/BubbleTextView;->k:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget p0, p0, Lcom/zui/launcher/BubbleTextView;->l:F

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v0, p0}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result p0

    return p0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->C:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/BubbleTextView;->C:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private i(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->C:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->A:Lcom/zui/launcher/graphics/HolographicOutlineHelper;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/BubbleTextView;->C:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->createBitmapWithDownloadMask(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private j()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/BubbleTextView;->h()V

    return-void
.end method

.method private k(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/BubbleTextView;->m(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private l(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/BubbleTextView;->s(Z)V

    return-void
.end method

.method private m(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean p1, p0, Lcom/zui/launcher/BubbleTextView;->y:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v0, p0, Lcom/zui/launcher/BubbleTextView;->B:I

    const/4 v1, -0x1

    const/16 v2, 0x64

    if-lt v0, v1, :cond_0

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/BubbleTextView;->C:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/zui/launcher/BubbleTextView;->B:I

    if-lt p1, v2, :cond_1

    invoke-direct {p0}, Lcom/zui/launcher/BubbleTextView;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method private n()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/zui/launcher/ItemInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v2, -0x65

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    return p0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    if-eqz p0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private o()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/BubbleTextView;->m:Lcom/zui/launcher/dot/DotInfo;

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->showDot(Landroid/content/Context;Lcom/zui/launcher/dot/DotInfo;)Z

    move-result p0

    return p0
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->z:Lcom/zui/launcher/WorkspaceItemInfo$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/BubbleRecommendListener;

    invoke-direct {v0, p0}, Lcom/zui/launcher/BubbleRecommendListener;-><init>(Lcom/zui/launcher/WorkspaceIconCompat;)V

    iput-object v0, p0, Lcom/zui/launcher/BubbleTextView;->z:Lcom/zui/launcher/WorkspaceItemInfo$b;

    :cond_0
    return-void
.end method

.method private r(Lcom/zui/launcher/ItemInfoWithIcon;I)V
    .locals 5

    iget v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-double v1, p2

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    iget v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v1, v0, 0x400

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12009e

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12009a

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private s(Z)V
    .locals 5

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/BubbleTextView;->y:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->y:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->z:Lcom/zui/launcher/WorkspaceItemInfo$b;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/zui/launcher/BubbleTextView;->p()V

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->z:Lcom/zui/launcher/WorkspaceItemInfo$b;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->a(Lcom/zui/launcher/WorkspaceItemInfo$b;)V

    :cond_1
    sget-object v0, Lcom/zui/launcher/BubbleTextView;->I:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/zui/launcher/BubbleTextView;->I:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/zui/launcher/BubbleTextView;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/zui/launcher/BubbleTextView;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lcom/zui/launcher/BubbleTextView;->I:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    sget-object v1, Lcom/zui/launcher/BubbleTextView;->I:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    :cond_2
    iget v0, p0, Lcom/zui/launcher/BubbleTextView;->B:I

    iget-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/ItemInfo;->getDownloadProgressWithState(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/BubbleTextView;->B:I

    iget-object v1, p0, Lcom/zui/launcher/BubbleTextView;->c:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v2, v1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/zui/launcher/BubbleTextView;->C:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/zui/launcher/BubbleTextView;->B:I

    if-eq v1, v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->A:Lcom/zui/launcher/graphics/HolographicOutlineHelper;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/zui/launcher/BubbleTextView;->I:Landroid/graphics/Paint;

    iget v4, p0, Lcom/zui/launcher/BubbleTextView;->B:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->createDownloadMask(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/BubbleTextView;->C:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/zui/launcher/BubbleTextView;->i(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/BubbleTextView;->d(Landroid/graphics/Bitmap;Lcom/zui/launcher/ItemInfoWithIcon;)V

    :cond_5
    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1205bc

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isReadyDownload()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1205bd

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1205be

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1205b8

    goto :goto_0

    :cond_9
    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/BubbleTextView;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->z:Lcom/zui/launcher/WorkspaceItemInfo$b;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->e(Lcom/zui/launcher/WorkspaceItemInfo$b;)V

    iput-object v2, p0, Lcom/zui/launcher/BubbleTextView;->z:Lcom/zui/launcher/WorkspaceItemInfo$b;

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/BubbleTextView;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_1
    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/zui/launcher/BubbleTextView;->setTextString(Ljava/lang/CharSequence;)V

    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    nop

    :cond_c
    :goto_3
    return-void
.end method

.method private setCompoundDrawable(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->createIconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->c:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->t:Z

    iget v0, p0, Lcom/zui/launcher/BubbleTextView;->i:I

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/zui/launcher/BubbleTextView;->isLayoutHorizontal()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2, p1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iput-boolean v1, p0, Lcom/zui/launcher/BubbleTextView;->t:Z

    return-void
.end method

.method public applyDotState(Lcom/zui/launcher/ItemInfo;Z)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->c:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/BubbleTextView;->m:Lcom/zui/launcher/dot/DotInfo;

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->showDot(Landroid/content/Context;Lcom/zui/launcher/dot/DotInfo;)Z

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/BubbleTextView;->b:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v1, p1}, Lcom/zui/launcher/views/ActivityContext;->getDotInfoForItem(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/dot/DotInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/BubbleTextView;->m:Lcom/zui/launcher/dot/DotInfo;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/BubbleTextView;->m:Lcom/zui/launcher/dot/DotInfo;

    invoke-static {v1, v2}, Lcom/zui/launcher/Utilities;->showDot(Landroid/content/Context;Lcom/zui/launcher/dot/DotInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/BubbleTextView;->b:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v3}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/zui/launcher/DeviceProfile;->mDotRenderer:Lcom/zui/launcher/icons/DotRenderer;

    iput-object v3, p0, Lcom/zui/launcher/BubbleTextView;->n:Lcom/zui/launcher/icons/DotRenderer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_5

    :cond_1
    if-eqz p2, :cond_2

    xor-int p2, v0, v1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result p2

    if-eqz p2, :cond_2

    iput v2, p0, Lcom/zui/launcher/BubbleTextView;->F:F

    new-array p2, v4, [F

    aput v2, p2, v3

    invoke-direct {p0, p2}, Lcom/zui/launcher/BubbleTextView;->c([F)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/zui/launcher/BubbleTextView;->p:Landroid/animation/Animator;

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/zui/launcher/BubbleTextView;->F:F

    cmpl-float p2, v2, p2

    if-eqz p2, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/zui/launcher/BubbleTextView;->f()V

    iget-object p2, p0, Lcom/zui/launcher/BubbleTextView;->o:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    iput v2, p2, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->scale:F

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_5
    :goto_1
    iget-object p2, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isDisabled()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120322

    new-array v1, v4, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    aput-object p1, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/zui/launcher/BubbleTextView;->o()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->isZuiDotShown(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/zui/launcher/BubbleTextView;->m:Lcom/zui/launcher/dot/DotInfo;

    invoke-virtual {p2}, Lcom/zui/launcher/dot/DotInfo;->getZuiDotCount()I

    move-result p2

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lcom/zui/launcher/BubbleTextView;->m:Lcom/zui/launcher/dot/DotInfo;

    invoke-virtual {p2}, Lcom/zui/launcher/dot/DotInfo;->getNotificationCount()I

    move-result p2

    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f100000

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_8
    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_9
    :goto_4
    return-void
.end method

.method public applyFromApplicationInfo(Lcom/zui/launcher/AppInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zui/launcher/BubbleTextView;->e(Lcom/zui/launcher/ItemInfoWithIcon;)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/zui/launcher/BubbleTextView;->verifyHighRes()V

    instance-of v0, p1, Lcom/zui/launcher/PromiseAppInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/PromiseAppInfo;

    iget v0, v0, Lcom/zui/launcher/PromiseAppInfo;->level:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BubbleTextView;->applyProgressLevel(I)Lcom/zui/launcher/graphics/PreloadIconDrawable;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/BubbleTextView;->applyDotState(Lcom/zui/launcher/ItemInfo;Z)V

    return-void
.end method

.method public applyFromPackageItemInfo(Lcom/zui/launcher/model/PackageItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/BubbleTextView;->e(Lcom/zui/launcher/ItemInfoWithIcon;)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/zui/launcher/BubbleTextView;->verifyHighRes()V

    return-void
.end method

.method public applyFromWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/BubbleTextView;->applyFromWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public applyFromWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zui/launcher/BubbleTextView;->e(Lcom/zui/launcher/ItemInfoWithIcon;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/zui/launcher/BubbleTextView;->applyPromiseState(Z)V

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/BubbleTextView;->applyDotState(Lcom/zui/launcher/ItemInfo;Z)V

    invoke-direct {p0}, Lcom/zui/launcher/BubbleTextView;->j()V

    invoke-direct {p0, p2}, Lcom/zui/launcher/BubbleTextView;->l(Z)V

    return-void
.end method

.method public applyProgressLevel(I)Lcom/zui/launcher/graphics/PreloadIconDrawable;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfoWithIcon;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfoWithIcon;

    if-gez p1, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->getProgressLevel()I

    move-result p1

    :cond_1
    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt p1, v2, :cond_3

    iget-object v2, v0, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_0

    :cond_3
    if-lez p1, :cond_4

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/BubbleTextView;->r(Lcom/zui/launcher/ItemInfoWithIcon;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f1200a5

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, p0, Lcom/zui/launcher/BubbleTextView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    instance-of v1, v2, Lcom/zui/launcher/graphics/PreloadIconDrawable;

    if-eqz v1, :cond_5

    check-cast v2, Lcom/zui/launcher/graphics/PreloadIconDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->isAppStartable()Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-virtual {v2, p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/zui/launcher/BubbleTextView;->makePreloadIcon()Lcom/zui/launcher/graphics/PreloadIconDrawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zui/launcher/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-object v2

    :cond_6
    return-object v1
.end method

.method public applyPromiseState(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/zui/launcher/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/WorkspaceItemInfo;->getInstallProgress()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zui/launcher/BubbleTextView;->applyProgressLevel(I)Lcom/zui/launcher/graphics/PreloadIconDrawable;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/PreloadIconDrawable;->maybePerformFinishedAnimation()V

    :cond_2
    return-void
.end method

.method public cancelLongPress()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->cancelLongPress()V

    iget-object p0, p0, Lcom/zui/launcher/BubbleTextView;->e:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/BubbleTextView;->shouldTextBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/zui/launcher/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method d(Landroid/graphics/Bitmap;Lcom/zui/launcher/ItemInfoWithIcon;)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/graphics/DrawableFactory;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/graphics/DrawableFactory;

    invoke-virtual {v0, p1, p2}, Lcom/zui/launcher/graphics/DrawableFactory;->newIcon(Landroid/graphics/Bitmap;Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public doUpdateRecommendStatus()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->a:Lcom/zui/launcher/Launcher;

    new-instance v1, Lcom/zui/launcher/l;

    invoke-direct {v1, p0}, Lcom/zui/launcher/l;-><init>(Lcom/zui/launcher/BubbleTextView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected drawDotIfNecessary(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->q:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/zui/launcher/BubbleTextView;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->o:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    iget v0, v0, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isZuiDotShown(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/BubbleTextView;->m:Lcom/zui/launcher/dot/DotInfo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/zui/launcher/dot/DotInfo;->getZuiDotCount()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/BubbleTextView;->o:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    iget-object v2, v2, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/zui/launcher/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/zui/launcher/BubbleTextView;->n:Lcom/zui/launcher/icons/DotRenderer;

    iget-object p0, p0, Lcom/zui/launcher/BubbleTextView;->o:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    invoke-virtual {v4, p1, p0, v0, v1}, Lcom/zui/launcher/icons/DotRenderer;->draw(Landroid/graphics/Canvas;Lcom/zui/launcher/icons/DotRenderer$DrawParams;ZI)V

    neg-int p0, v2

    int-to-float p0, p0

    neg-int v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    return-void
.end method

.method protected drawWithoutDot(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public forceHideDot(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->q:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/zui/launcher/BubbleTextView;->q:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/BubbleTextView;->o()Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/zui/launcher/BubbleTextView;->F:F

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/BubbleTextView;->c([F)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method g()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPressed(Z)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BubbleTextView;->setStayPressed(Z)V

    return-void
.end method

.method public getCompoundTopDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/BubbleTextView;->isLayoutHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getDisplayType()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/BubbleTextView;->w:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/BubbleTextView;->c:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/BubbleTextView;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lcom/zui/launcher/BubbleTextView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getIconBounds(Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/BubbleTextView;->i:I

    invoke-virtual {p0}, Lcom/zui/launcher/BubbleTextView;->isLayoutHorizontal()Z

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/zui/launcher/BubbleTextView;->getIconBounds(Landroid/view/View;Landroid/graphics/Rect;IZ)V

    return-void
.end method

.method public getIconSize()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/BubbleTextView;->i:I

    return p0
.end method

.method public getTextAlpha()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/BubbleTextView;->l:F

    return p0
.end method

.method public isActive()Z
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isInViewTree(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public isLayoutHorizontal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/BubbleTextView;->h:Z

    return p0
.end method

.method public makePreloadIcon()Lcom/zui/launcher/graphics/PreloadIconDrawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfoWithIcon;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->getProgressLevel()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/zui/launcher/graphics/PreloadIconDrawable;->newPendingIcon(Landroid/content/Context;Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/graphics/PreloadIconDrawable;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->isAppStartable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/launcher/BubbleTextView;->y:Z

    if-nez v1, :cond_0

    iget v1, v0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/BubbleTextView;->p()V

    iget-object v1, p0, Lcom/zui/launcher/BubbleTextView;->z:Lcom/zui/launcher/WorkspaceItemInfo$b;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/WorkspaceItemInfo;->a(Lcom/zui/launcher/WorkspaceItemInfo$b;)V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/launcher/BubbleTextView;->l(Z)V

    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-boolean p0, p0, Lcom/zui/launcher/BubbleTextView;->r:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/zui/launcher/BubbleTextView;->G:[I

    invoke-static {p1, p0}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v1, v0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/BubbleTextView;->z:Lcom/zui/launcher/WorkspaceItemInfo$b;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/WorkspaceItemInfo;->e(Lcom/zui/launcher/WorkspaceItemInfo$b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/BubbleTextView;->z:Lcom/zui/launcher/WorkspaceItemInfo$b;

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-direct {p0}, Lcom/zui/launcher/BubbleTextView;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/BluePoint;->isPackageNew(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int v5, v0, v1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v7

    invoke-virtual {p0}, Lcom/zui/launcher/BubbleTextView;->isLayoutHorizontal()Z

    move-result v8

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/zui/launcher/BluePoint;->drawBluePoint(Landroid/graphics/Canvas;Landroid/widget/TextView;Ljava/lang/String;IIIZZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/BubbleTextView;->shouldTextBeVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->D:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->a:Lcom/zui/launcher/Launcher;

    iget-boolean v0, v0, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x3a000000

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const v3, 0x3affffff

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BubbleTextView;->drawDotIfNecessary(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v0, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/zui/launcher/BubbleTextView;->k(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->s:Z

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/BubbleTextView;->s:Z

    invoke-virtual {p0}, Lcom/zui/launcher/BubbleTextView;->refreshDrawableState()V

    return p1
.end method

.method public onLauncherResume()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BubbleTextView;->setStayPressed(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/BubbleTextView;->i:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr v1, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BubbleTextView onTouchEvent, event:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIgnorePaddingTouch :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/launcher/BubbleTextView;->u:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/testing/TestProtocol;->eventDispatchLog(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->u:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " paddingTop : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", paddingLeft:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getHeight() - getPaddingBottom():"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getWidth() - getPaddingRight():"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/testing/TestProtocol;->eventDispatchLog(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->u:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    :cond_3
    return v2

    :cond_4
    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BubbleTextView.onTouchEvent "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "b/132900132"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/testing/TestProtocol;->eventDispatchLog(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, p0, v3, v4}, Lcom/zui/launcher/CheckLongPressHelper;->isContentRect(Landroid/content/Context;Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BubbleTextView, ignore this event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/testing/TestProtocol;->eventDispatchLog(Ljava/lang/String;)V

    return v2

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_9

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BubbleTextView, after super call result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/testing/TestProtocol;->eventDispatchLog(Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lcom/zui/launcher/BubbleTextView;->f:Lcom/zui/launcher/StylusEventHelper;

    invoke-virtual {v2, p1}, Lcom/zui/launcher/StylusEventHelper;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->e:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    move v0, v1

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_d

    if-eq v2, v1, :cond_c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_c

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/zui/launcher/BubbleTextView;->g:F

    invoke-static {p0, v2, v3, v4}, Lcom/zui/launcher/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    iget-object p0, p0, Lcom/zui/launcher/BubbleTextView;->e:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    :cond_d
    iget-object v2, p0, Lcom/zui/launcher/BubbleTextView;->f:Lcom/zui/launcher/StylusEventHelper;

    invoke-virtual {v2}, Lcom/zui/launcher/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object p0, p0, Lcom/zui/launcher/BubbleTextView;->e:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->postCheckForLongPress()V

    :cond_e
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-eqz p0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-ne p0, v1, :cond_10

    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "BubbleTextView, before return, result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/testing/TestProtocol;->eventDispatchLog(Ljava/lang/String;)V

    :cond_10
    return v0
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    iget-object p0, p0, Lcom/zui/launcher/BubbleTextView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    return-void
.end method

.method public synthetic q()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/BubbleTextView;->l(Z)V

    return-void
.end method

.method public reapplyItemInfo(Lcom/zui/launcher/ItemInfoWithIcon;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/BubbleTextView;->v:Lcom/zui/launcher/icons/cache/HandlerRunnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->t:Z

    iget-object v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v0, v0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    instance-of v0, p1, Lcom/zui/launcher/AppInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/AppInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BubbleTextView;->applyFromApplicationInfo(Lcom/zui/launcher/AppInfo;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BubbleTextView;->applyFromWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->b:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v0, p1}, Lcom/zui/launcher/views/ActivityContext;->invalidateParent(Lcom/zui/launcher/ItemInfo;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/zui/launcher/model/PackageItemInfo;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/zui/launcher/model/PackageItemInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BubbleTextView;->applyFromPackageItemInfo(Lcom/zui/launcher/model/PackageItemInfo;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/BubbleTextView;->t:Z

    :cond_3
    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->s:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public refreshIcon()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v1, v0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/BubbleTextView;->d(Landroid/graphics/Bitmap;Lcom/zui/launcher/ItemInfoWithIcon;)V

    iget-object v1, v0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v1, v1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->createIconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v0

    const/16 v0, 0xff

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public replaceReal(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "replaceReal "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BubbleTextView;->applyFromWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    iget-boolean p1, p0, Lcom/zui/launcher/BubbleTextView;->E:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BubbleTextView;->setShadowsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->t:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/BubbleTextView;->m:Lcom/zui/launcher/dot/DotInfo;

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->o:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->color:I

    invoke-direct {p0}, Lcom/zui/launcher/BubbleTextView;->f()V

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->o:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    const/4 v2, 0x0

    iput v2, v0, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->scale:F

    iput-boolean v1, p0, Lcom/zui/launcher/BubbleTextView;->q:Z

    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    instance-of v0, p1, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method public setDrawableVisibility(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/BubbleTextView;->getCompoundTopDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/BubbleTextView;->q:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0xff

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iput-boolean v2, p0, Lcom/zui/launcher/BubbleTextView;->q:Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BubbleTextView;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/BubbleTextView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    invoke-virtual {p1, p0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method public setIconVisible(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/zui/launcher/BubbleTextView;->j:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/BubbleTextView;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/BubbleTextView;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setInDock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/BubbleTextView;->E:Z

    return-void
.end method

.method public setLongPressTimeoutFactor(F)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/BubbleTextView;->e:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/CheckLongPressHelper;->setLongPressTimeoutFactor(F)V

    return-void
.end method

.method public setShadowsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/BubbleTextView;->D:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->clearShadowLayer()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setStayPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/BubbleTextView;->r:Z

    invoke-virtual {p0}, Lcom/zui/launcher/BubbleTextView;->refreshDrawableState()V

    return-void
.end method

.method public setTextAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/BubbleTextView;->l:F

    invoke-direct {p0}, Lcom/zui/launcher/BubbleTextView;->getModifiedColor()I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/BubbleTextView;->k:I

    invoke-direct {p0}, Lcom/zui/launcher/BubbleTextView;->getModifiedColor()I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/BubbleTextView;->k:I

    iget v0, p0, Lcom/zui/launcher/BubbleTextView;->l:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/BubbleTextView;->getModifiedColor()I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public setTextString(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/BubbleTextView;->x:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/BubbleTextView;->setTextAlpha(F)V

    return-void
.end method

.method public shouldTextBeVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->a:Lcom/zui/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/XDockViewLayout;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    instance-of v0, p0, Lcom/zui/launcher/ItemInfo;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/zui/launcher/ItemInfo;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v0, -0x65

    if-eq p0, v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public verifyHighRes()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/BubbleTextView;->v:Lcom/zui/launcher/icons/cache/HandlerRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/icons/cache/HandlerRunnable;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/BubbleTextView;->v:Lcom/zui/launcher/icons/cache/HandlerRunnable;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfoWithIcon;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/zui/launcher/icons/IconCache;->updateIconInBackground(Lcom/zui/launcher/icons/IconCache$ItemInfoUpdateReceiver;Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/icons/cache/HandlerRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/BubbleTextView;->v:Lcom/zui/launcher/icons/cache/HandlerRunnable;

    :cond_1
    return-void
.end method
