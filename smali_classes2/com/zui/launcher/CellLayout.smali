.class public Lcom/zui/launcher/CellLayout;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Lcom/zui/launcher/views/Transposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/CellLayout$CellInfo;,
        Lcom/zui/launcher/CellLayout$LayoutParams;,
        Lcom/zui/launcher/CellLayout$ItemConfiguration;,
        Lcom/zui/launcher/CellLayout$j;,
        Lcom/zui/launcher/CellLayout$k;,
        Lcom/zui/launcher/CellLayout$ContainerType;
    }
.end annotation


# static fields
.field public static final FOLDER:I = 0x2

.field public static final FOLDER_ACCESSIBILITY_DRAG:I = 0x1

.field public static final HOTSEAT:I = 0x1

.field public static final MODE_ACCEPT_DROP:I = 0x4

.field public static final MODE_DRAG_OVER:I = 0x1

.field public static final MODE_ON_DROP:I = 0x2

.field public static final MODE_ON_DROP_EXTERNAL:I = 0x3

.field public static final MODE_SHOW_REORDER_HINT:I = 0x0

.field public static final WORKSPACE:I = 0x0

.field public static final WORKSPACE_ACCESSIBILITY_DRAG:I = 0x2

.field private static final Y:[I

.field private static final Z:[I

.field private static final a0:[I

.field private static final b0:Landroid/graphics/Paint;

.field private static final c0:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/CellLayout$j;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private final B:[I

.field private C:Z

.field private final D:Landroid/animation/TimeInterpolator;

.field private final E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

.field private final F:I

.field final G:F

.field private final H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final I:Landroid/graphics/Rect;

.field private final J:[I

.field final K:[I

.field private final L:Landroid/graphics/Rect;

.field private M:Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;

.field private N:Z

.field private O:Lcom/zui/launcher/graphics/RotationMode;

.field private final P:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private R:[Landroid/graphics/Rect;

.field private S:[F

.field private T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

.field private U:I

.field private V:I

.field private W:Landroid/animation/ValueAnimator;

.field private X:Z

.field a:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field b:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private f:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Z

.field final j:[I

.field final k:[I

.field private l:Lcom/zui/launcher/util/GridOccupancy;

.field private m:Landroid/view/View$OnTouchListener;

.field protected final mActivity:Lcom/zui/launcher/views/ActivityContext;

.field public mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

.field private final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/folder/PreviewBackground;",
            ">;"
        }
    .end annotation
.end field

.field final o:Lcom/zui/launcher/folder/PreviewBackground;

.field private final p:Landroid/graphics/drawable/Drawable;

.field private q:I

.field private r:I

.field private s:Z

.field final t:[Landroid/graphics/Rect;

.field final u:[F

.field private final v:[Lcom/zui/launcher/InterruptibleInOutAnimator;

.field private w:I

.field private final x:Landroid/graphics/Paint;

.field final y:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/zui/launcher/CellLayout$LayoutParams;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field final z:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/zui/launcher/CellLayout$j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a2

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/zui/launcher/CellLayout;->Y:[I

    new-array v0, v0, [I

    const v1, 0x10100a5

    aput v1, v0, v3

    sput-object v0, Lcom/zui/launcher/CellLayout;->Z:[I

    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    sput-object v0, Lcom/zui/launcher/CellLayout;->a0:[I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/zui/launcher/CellLayout;->b0:Landroid/graphics/Paint;

    new-instance v0, Lcom/zui/launcher/CellLayout$e;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "animationProgress"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/CellLayout$e;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/CellLayout;->c0:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/CellLayout;->i:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/zui/launcher/CellLayout;->j:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/zui/launcher/CellLayout;->k:[I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/zui/launcher/CellLayout;->n:Ljava/util/ArrayList;

    new-instance v2, Lcom/zui/launcher/folder/PreviewBackground;

    invoke-direct {v2}, Lcom/zui/launcher/folder/PreviewBackground;-><init>()V

    iput-object v2, p0, Lcom/zui/launcher/CellLayout;->o:Lcom/zui/launcher/folder/PreviewBackground;

    const/4 v2, -0x1

    iput v2, p0, Lcom/zui/launcher/CellLayout;->q:I

    iput v2, p0, Lcom/zui/launcher/CellLayout;->r:I

    iput-boolean v0, p0, Lcom/zui/launcher/CellLayout;->s:Z

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/zui/launcher/CellLayout;->t:[Landroid/graphics/Rect;

    array-length v4, v3

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/zui/launcher/CellLayout;->u:[F

    array-length v3, v3

    new-array v3, v3, [Lcom/zui/launcher/InterruptibleInOutAnimator;

    iput-object v3, p0, Lcom/zui/launcher/CellLayout;->v:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    iput v0, p0, Lcom/zui/launcher/CellLayout;->w:I

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/zui/launcher/CellLayout;->x:Landroid/graphics/Paint;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/zui/launcher/CellLayout;->y:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/zui/launcher/CellLayout;->z:Landroid/util/ArrayMap;

    iput-boolean v0, p0, Lcom/zui/launcher/CellLayout;->A:Z

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/zui/launcher/CellLayout;->B:[I

    iput-boolean v0, p0, Lcom/zui/launcher/CellLayout;->C:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zui/launcher/CellLayout;->H:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/zui/launcher/CellLayout;->I:Landroid/graphics/Rect;

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/zui/launcher/CellLayout;->J:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/zui/launcher/CellLayout;->K:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/CellLayout;->L:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/zui/launcher/CellLayout;->N:Z

    sget-object v1, Lcom/zui/launcher/graphics/RotationMode;->NORMAL:Lcom/zui/launcher/graphics/RotationMode;

    iput-object v1, p0, Lcom/zui/launcher/CellLayout;->O:Lcom/zui/launcher/graphics/RotationMode;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/CellLayout;->P:Ljava/util/Stack;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/CellLayout;->Q:Ljava/util/List;

    const/16 v1, 0x14

    new-array v1, v1, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/zui/launcher/CellLayout;->R:[Landroid/graphics/Rect;

    array-length v3, v1

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/zui/launcher/CellLayout;->S:[F

    array-length v1, v1

    new-array v1, v1, [Lcom/zui/launcher/InterruptibleInOutAnimator;

    iput-object v1, p0, Lcom/zui/launcher/CellLayout;->T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    iput v0, p0, Lcom/zui/launcher/CellLayout;->U:I

    iput v0, p0, Lcom/zui/launcher/CellLayout;->V:I

    sget-object v1, Lcom/zui/launcher/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/CellLayout;->F:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-static {p1}, Lcom/zui/launcher/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/views/ActivityContext;

    iput-object p2, p0, Lcom/zui/launcher/CellLayout;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {p2}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    iput v2, p0, Lcom/zui/launcher/CellLayout;->b:I

    iput v2, p0, Lcom/zui/launcher/CellLayout;->a:I

    iput v2, p0, Lcom/zui/launcher/CellLayout;->d:I

    iput v2, p0, Lcom/zui/launcher/CellLayout;->c:I

    invoke-virtual {p2}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result p3

    iput-boolean p3, p0, Lcom/zui/launcher/CellLayout;->X:Z

    iget-object p3, p2, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v1, p3, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iput v1, p0, Lcom/zui/launcher/CellLayout;->e:I

    iget p3, p3, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    iput p3, p0, Lcom/zui/launcher/CellLayout;->f:I

    invoke-virtual {p2}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p2, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v1, p3, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderColumns:I

    iget p3, p3, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderRows:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/CellLayout;->h:I

    iput p3, p0, Lcom/zui/launcher/CellLayout;->g:I

    goto :goto_0

    :cond_0
    iget-object p3, p2, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v1, p3, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderColumns:I

    iput v1, p0, Lcom/zui/launcher/CellLayout;->g:I

    iget p3, p3, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderRows:I

    iput p3, p0, Lcom/zui/launcher/CellLayout;->h:I

    :goto_0
    new-instance p3, Lcom/zui/launcher/util/GridOccupancy;

    iget v1, p0, Lcom/zui/launcher/CellLayout;->e:I

    iget v3, p0, Lcom/zui/launcher/CellLayout;->f:I

    invoke-direct {p3, v1, v3}, Lcom/zui/launcher/util/GridOccupancy;-><init>(II)V

    iput-object p3, p0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    new-instance p3, Lcom/zui/launcher/util/GridOccupancy;

    iget v1, p0, Lcom/zui/launcher/CellLayout;->e:I

    iget v3, p0, Lcom/zui/launcher/CellLayout;->f:I

    invoke-direct {p3, v1, v3}, Lcom/zui/launcher/util/GridOccupancy;-><init>(II)V

    iput-object p3, p0, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    iget-object p3, p0, Lcom/zui/launcher/CellLayout;->K:[I

    const/16 v1, -0x64

    aput v1, p3, v0

    const/4 v3, 0x1

    aput v1, p3, v3

    iget-object p3, p0, Lcom/zui/launcher/CellLayout;->o:Lcom/zui/launcher/folder/PreviewBackground;

    iput v2, p3, Lcom/zui/launcher/folder/PreviewBackground;->delegateCellX:I

    iput v2, p3, Lcom/zui/launcher/folder/PreviewBackground;->delegateCellY:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0800ae

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/CellLayout;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v1, 0x3df5c28f    # 0.12f

    iget p2, p2, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    int-to-float p2, p2

    mul-float/2addr p2, v1

    iput p2, p0, Lcom/zui/launcher/CellLayout;->G:F

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_2_5:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/zui/launcher/CellLayout;->D:Landroid/animation/TimeInterpolator;

    iget-object p2, p0, Lcom/zui/launcher/CellLayout;->B:[I

    aput v2, p2, v3

    aput v2, p2, v0

    move p2, v0

    :goto_1
    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->t:[Landroid/graphics/Rect;

    array-length v3, v1

    if-ge p2, v3, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/zui/launcher/CellLayout;->x:Landroid/graphics/Paint;

    const v1, 0x7f040370

    invoke-static {p1, v1}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const p2, 0x7f0b001d

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    const v1, 0x7f0b001e

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-float p3, p3

    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->u:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    :goto_2
    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->v:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    new-instance v1, Lcom/zui/launcher/InterruptibleInOutAnimator;

    int-to-long v3, p2

    invoke-direct {v1, v3, v4, v2, p3}, Lcom/zui/launcher/InterruptibleInOutAnimator;-><init>(JFF)V

    invoke-virtual {v1}, Lcom/zui/launcher/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/CellLayout;->D:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Lcom/zui/launcher/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/zui/launcher/CellLayout$a;

    invoke-direct {v4, p0, v1, v0}, Lcom/zui/launcher/CellLayout$a;-><init>(Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/InterruptibleInOutAnimator;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Lcom/zui/launcher/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/zui/launcher/CellLayout$b;

    invoke-direct {v4, p0, v1}, Lcom/zui/launcher/CellLayout$b;-><init>(Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/InterruptibleInOutAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->v:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0, p2, v2, p3}, Lcom/zui/launcher/CellLayout;->I(IFF)V

    new-instance v3, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    iget p2, p0, Lcom/zui/launcher/CellLayout;->F:I

    invoke-direct {v3, p1, p2}, Lcom/zui/launcher/ShortcutAndWidgetContainer;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    iget v4, p0, Lcom/zui/launcher/CellLayout;->a:I

    iget v5, p0, Lcom/zui/launcher/CellLayout;->b:I

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v6

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v7

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->setCellDimensions(IIIIZ)V

    iget-object p1, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private B(IIIIII[ILandroid/view/View;ZLcom/zui/launcher/CellLayout$ItemConfiguration;)Lcom/zui/launcher/CellLayout$ItemConfiguration;
    .locals 16

    move-object/from16 v8, p0

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    iput-boolean v13, v12, Lcom/zui/launcher/CellLayout$ItemConfiguration;->e:Z

    return-object v12

    :cond_0
    invoke-direct {v8, v12, v13}, Lcom/zui/launcher/CellLayout;->r(Lcom/zui/launcher/CellLayout$ItemConfiguration;Z)V

    iget-object v0, v8, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    iget-object v1, v8, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/GridOccupancy;->copyTo(Lcom/zui/launcher/util/GridOccupancy;)V

    const/4 v0, 0x2

    new-array v5, v0, [I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v14

    aget v1, v14, v13

    const/4 v15, 0x1

    aget v2, v14, v15

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/CellLayout;->R(IIII[ILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-nez v0, :cond_4

    move/from16 v3, p3

    if-le v10, v3, :cond_2

    if-eq v9, v11, :cond_1

    if-eqz p9, :cond_2

    :cond_1
    add-int/lit8 v5, v10, -0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move v9, v10

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/zui/launcher/CellLayout;->B(IIIIII[ILandroid/view/View;ZLcom/zui/launcher/CellLayout$ItemConfiguration;)Lcom/zui/launcher/CellLayout$ItemConfiguration;

    move-result-object v0

    return-object v0

    :cond_2
    if-le v11, v9, :cond_3

    add-int/lit8 v6, v11, -0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move v9, v11

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/zui/launcher/CellLayout;->B(IIIIII[ILandroid/view/View;ZLcom/zui/launcher/CellLayout$ItemConfiguration;)Lcom/zui/launcher/CellLayout$ItemConfiguration;

    move-result-object v0

    return-object v0

    :cond_3
    iput-boolean v13, v12, Lcom/zui/launcher/CellLayout$ItemConfiguration;->e:Z

    goto :goto_0

    :cond_4
    iput-boolean v15, v12, Lcom/zui/launcher/CellLayout$ItemConfiguration;->e:Z

    aget v0, v14, v13

    iput v0, v12, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    aget v0, v14, v15

    iput v0, v12, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iput v10, v12, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iput v11, v12, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    :goto_0
    return-object v12
.end method

.method static C([IIIIILcom/zui/launcher/util/GridOccupancy;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_2

    move v2, v0

    :goto_1
    if-ge v2, p3, :cond_1

    invoke-virtual {p5, v2, v1, p1, p2}, Lcom/zui/launcher/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    aput v2, p0, v0

    const/4 p1, 0x1

    aput v1, p0, p1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static D([I[IIIIILcom/zui/launcher/util/GridOccupancy;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[IIIII",
            "Lcom/zui/launcher/util/GridOccupancy;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    new-instance v7, Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {p6}, Lcom/zui/launcher/util/GridOccupancy;->getCountX()I

    move-result v1

    invoke-virtual {p6}, Lcom/zui/launcher/util/GridOccupancy;->getCountY()I

    move-result v2

    invoke-direct {v7, v1, v2}, Lcom/zui/launcher/util/GridOccupancy;-><init>(II)V

    invoke-virtual {p6, v7}, Lcom/zui/launcher/util/GridOccupancy;->copyTo(Lcom/zui/launcher/util/GridOccupancy;)V

    move p6, v0

    :goto_0
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v1

    if-ge p6, v1, :cond_0

    invoke-interface {p7, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int v2, v1, p4

    div-int v3, v1, p4

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/util/GridOccupancy;->markCells(IIIIZ)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    move-object p6, v7

    :cond_1
    aget p7, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    add-int/lit8 v2, p4, -0x1

    if-ne p7, v2, :cond_2

    add-int/lit8 v3, p5, -0x1

    if-ne p1, v3, :cond_2

    return v0

    :cond_2
    const/4 v3, -0x1

    if-eq p7, v3, :cond_c

    if-ne p1, v3, :cond_3

    goto :goto_6

    :cond_3
    add-int/lit8 v3, p7, 0x1

    if-ne p7, v2, :cond_4

    add-int/lit8 p1, p1, 0x1

    move v3, v0

    :cond_4
    move p7, p1

    move v2, v0

    :goto_1
    if-ge p1, p5, :cond_b

    if-ne p1, p7, :cond_5

    move v4, v3

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    if-ge v4, p4, :cond_9

    add-int v2, v4, p2

    if-gt v2, p4, :cond_8

    add-int v2, p7, p3

    if-le v2, p5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p6, v4, p1, v1, v1}, Lcom/zui/launcher/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v2

    if-eqz v2, :cond_7

    move p7, p1

    move v3, v4

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    return v0

    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_b
    :goto_5
    if-eqz v2, :cond_c

    aput v3, p0, v0

    aput p7, p0, v1

    return v1

    :cond_c
    :goto_6
    return v0
.end method

.method static E([IIIIILcom/zui/launcher/util/GridOccupancy;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IIIII",
            "Lcom/zui/launcher/util/GridOccupancy;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    new-instance v7, Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {p5}, Lcom/zui/launcher/util/GridOccupancy;->getCountX()I

    move-result v1

    invoke-virtual {p5}, Lcom/zui/launcher/util/GridOccupancy;->getCountY()I

    move-result v2

    invoke-direct {v7, v1, v2}, Lcom/zui/launcher/util/GridOccupancy;-><init>(II)V

    invoke-virtual {p5, v7}, Lcom/zui/launcher/util/GridOccupancy;->copyTo(Lcom/zui/launcher/util/GridOccupancy;)V

    move p5, v0

    :goto_0
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    if-ge p5, v1, :cond_0

    invoke-interface {p6, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int v2, v1, p3

    div-int v3, v1, p3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/util/GridOccupancy;->markCells(IIIIZ)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    move-object p5, v7

    :cond_1
    add-int/lit8 p6, p4, -0x1

    :goto_1
    if-ltz p6, :cond_5

    add-int/lit8 v1, p3, -0x1

    :goto_2
    if-ltz v1, :cond_4

    const/4 v2, 0x1

    invoke-virtual {p5, v1, p6, v2, v2}, Lcom/zui/launcher/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int v3, v1, p1

    if-gt v3, p3, :cond_3

    add-int v3, p6, p2

    if-le v3, p4, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p5, v1, p6, p1, p2}, Lcom/zui/launcher/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    aput v1, p0, v0

    aput p6, p0, v2

    return v2

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 p6, p6, -0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method private F(IIIILandroid/view/View;[I)V
    .locals 15

    move-object v8, p0

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    const/4 v0, 0x2

    new-array v6, v0, [I

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/CellLayout;->findNearestArea(IIII[I)[I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v12, 0x0

    aget v1, v6, v12

    const/4 v13, 0x1

    aget v2, v6, v13

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/CellLayout;->V(IIIILandroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    aget v1, v6, v12

    aget v2, v6, v13

    iget-object v7, v8, Lcom/zui/launcher/CellLayout;->H:Ljava/util/ArrayList;

    move-object v0, p0

    move-object/from16 v5, p5

    move-object v6, v14

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/CellLayout;->H(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v1, v14, Landroid/graphics/Rect;->left:I

    iget v2, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/CellLayout;->V(IIIILandroid/graphics/Rect;)V

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, v0, p1

    div-int/2addr v0, v9

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, v1, p2

    div-int/2addr v1, v10

    iget v2, v8, Lcom/zui/launcher/CellLayout;->e:I

    if-eq v6, v2, :cond_0

    if-ne v9, v2, :cond_1

    :cond_0
    move v0, v12

    :cond_1
    iget v2, v8, Lcom/zui/launcher/CellLayout;->f:I

    if-eq v7, v2, :cond_2

    if-ne v10, v2, :cond_3

    :cond_2
    move v1, v12

    :cond_3
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    aput v13, v11, v12

    aput v12, v11, v13

    goto :goto_0

    :cond_4
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {p0, v0, v1, v11}, Lcom/zui/launcher/CellLayout;->q(FF[I)V

    :goto_0
    return-void
.end method

.method private G(Landroid/util/SparseArray;)Lcom/zui/launcher/util/ParcelableSparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/zui/launcher/util/ParcelableSparseArray;"
        }
    .end annotation

    const p0, 0x7f0a00da

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    instance-of p1, p0, Lcom/zui/launcher/util/ParcelableSparseArray;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/zui/launcher/util/ParcelableSparseArray;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/zui/launcher/util/ParcelableSparseArray;

    invoke-direct {p0}, Lcom/zui/launcher/util/ParcelableSparseArray;-><init>()V

    :goto_0
    return-object p0
.end method

.method private H(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p6, :cond_0

    add-int v0, p1, p3

    add-int v1, p2, p4

    invoke-virtual {p6, p1, p2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    invoke-virtual {p7}, Ljava/util/ArrayList;->clear()V

    new-instance p7, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {p7, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p2, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_3

    iget-object p4, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    if-ne p4, p5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v2, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iget v3, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v3, v1

    iget v0, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {p7, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_2

    invoke-virtual {p6, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private I(IFF)V
    .locals 5

    iget v0, p0, Lcom/zui/launcher/CellLayout;->F:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/CellLayout;->R:[Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/zui/launcher/CellLayout;->S:[F

    iput-object p1, p0, Lcom/zui/launcher/CellLayout;->T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    return-void

    :cond_0
    iget v0, p0, Lcom/zui/launcher/CellLayout;->e:I

    iget v1, p0, Lcom/zui/launcher/CellLayout;->f:I

    mul-int/2addr v0, v1

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/zui/launcher/CellLayout;->R:[Landroid/graphics/Rect;

    array-length v1, v0

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/zui/launcher/CellLayout;->S:[F

    array-length v0, v0

    new-array v0, v0, [Lcom/zui/launcher/InterruptibleInOutAnimator;

    iput-object v0, p0, Lcom/zui/launcher/CellLayout;->T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/CellLayout;->R:[Landroid/graphics/Rect;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->S:[F

    invoke-static {v1, p2}, Ljava/util/Arrays;->fill([FF)V

    :goto_1
    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    new-instance v1, Lcom/zui/launcher/InterruptibleInOutAnimator;

    int-to-long v2, p1

    invoke-direct {v1, v2, v3, p2, p3}, Lcom/zui/launcher/InterruptibleInOutAnimator;-><init>(JFF)V

    invoke-virtual {v1}, Lcom/zui/launcher/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->D:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Lcom/zui/launcher/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/zui/launcher/CellLayout$h;

    invoke-direct {v3, p0, v1, v0}, Lcom/zui/launcher/CellLayout$h;-><init>(Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/InterruptibleInOutAnimator;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Lcom/zui/launcher/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/zui/launcher/CellLayout$i;

    invoke-direct {v3, p0, v1}, Lcom/zui/launcher/CellLayout$i;-><init>(Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/InterruptibleInOutAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/zui/launcher/CellLayout;->T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private L()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->P:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/zui/launcher/CellLayout;->e:I

    iget v2, p0, Lcom/zui/launcher/CellLayout;->f:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->P:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Q(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/zui/launcher/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/CellLayout$k;

    invoke-direct {v0, p0, p1, p5}, Lcom/zui/launcher/CellLayout$k;-><init>(Lcom/zui/launcher/CellLayout;Ljava/util/ArrayList;Lcom/zui/launcher/CellLayout$ItemConfiguration;)V

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout$k;->c()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    aget v3, p3, v2

    const/4 v4, 0x1

    if-gez v3, :cond_0

    iget p3, v1, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, p2

    move p2, v4

    goto :goto_2

    :cond_0
    aget v3, p3, v2

    if-lez v3, :cond_1

    const/4 p3, 0x4

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    :goto_0
    sub-int/2addr p2, v1

    :goto_1
    move v6, p3

    move p3, p2

    move p2, v6

    goto :goto_2

    :cond_1
    aget p3, p3, v4

    if-gez p3, :cond_2

    const/4 p3, 0x2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int p2, v1, p2

    goto :goto_1

    :cond_2
    const/16 p3, 0x8

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :goto_2
    if-gtz p3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v3, p5, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/util/CellAndSpan;

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v3, v1, v2}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/util/CellAndSpan;Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {p5}, Lcom/zui/launcher/CellLayout$ItemConfiguration;->e()V

    invoke-virtual {v0, p2}, Lcom/zui/launcher/CellLayout$k;->g(I)V

    move p1, v2

    :goto_4
    if-lez p3, :cond_8

    if-nez p1, :cond_8

    iget-object v1, p5, Lcom/zui/launcher/CellLayout$ItemConfiguration;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v5, v0, Lcom/zui/launcher/CellLayout$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eq v3, p4, :cond_5

    invoke-virtual {v0, v3, p2}, Lcom/zui/launcher/CellLayout$k;->d(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget-boolean v5, v5, Lcom/zui/launcher/CellLayout$LayoutParams;->canReorder:Z

    if-nez v5, :cond_6

    move p1, v4

    goto :goto_6

    :cond_6
    invoke-virtual {v0, v3}, Lcom/zui/launcher/CellLayout$k;->a(Landroid/view/View;)V

    iget-object v5, p5, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/util/CellAndSpan;

    iget-object v5, p0, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v5, v3, v2}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/util/CellAndSpan;Z)V

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0, p2, v4}, Lcom/zui/launcher/CellLayout$k;->f(II)V

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout$k;->c()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountH()I

    move-result p3

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountV()I

    move-result p4

    instance-of v1, p0, Lcom/zui/launcher/HotseatLayout;

    if-eqz v1, :cond_b

    move-object p3, p0

    check-cast p3, Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {p3}, Lcom/zui/launcher/Hotseat;->hasVerticalHotseat()Z

    move-result p4

    if-eqz p4, :cond_9

    iget p4, p0, Lcom/zui/launcher/CellLayout;->e:I

    goto :goto_7

    :cond_9
    invoke-virtual {p3}, Lcom/zui/launcher/HotseatLayout;->getMaxCount()I

    move-result p4

    :goto_7
    invoke-virtual {p3}, Lcom/zui/launcher/Hotseat;->hasVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p3}, Lcom/zui/launcher/HotseatLayout;->getMaxCount()I

    move-result p3

    goto :goto_8

    :cond_a
    iget p3, p0, Lcom/zui/launcher/CellLayout;->f:I

    :goto_8
    move v6, p4

    move p4, p3

    move p3, v6

    :cond_b
    if-nez p1, :cond_c

    iget p1, p2, Landroid/graphics/Rect;->left:I

    if-ltz p1, :cond_c

    iget p1, p2, Landroid/graphics/Rect;->right:I

    if-gt p1, p3, :cond_c

    iget p1, p2, Landroid/graphics/Rect;->top:I

    if-ltz p1, :cond_c

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    if-gt p1, p4, :cond_c

    move v2, v4

    goto :goto_9

    :cond_c
    invoke-virtual {p5}, Lcom/zui/launcher/CellLayout$ItemConfiguration;->d()V

    :goto_9
    iget-object p1, v0, Lcom/zui/launcher/CellLayout$k;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget-object p3, p5, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/util/CellAndSpan;

    iget-object p3, p0, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {p3, p2, v4}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/util/CellAndSpan;Z)V

    goto :goto_a

    :cond_d
    return v2
.end method

.method private R(IIII[ILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Z
    .locals 7

    const/4 v0, 0x0

    if-ltz p1, :cond_c

    if-gez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v4

    invoke-static {p1, p3, v4}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result v4

    iget-object v5, p0, Lcom/zui/launcher/CellLayout;->I:Landroid/graphics/Rect;

    add-int/2addr p4, v3

    add-int/2addr p3, v4

    invoke-virtual {v5, v3, v4, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1, v3, v4, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->I:Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    if-eqz p6, :cond_2

    iget-object p3, p7, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {p3, p6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/launcher/util/CellAndSpan;

    if-eqz p3, :cond_2

    iput p1, p3, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iput p2, p3, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    :cond_2
    iget-object p1, p7, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-ne p2, p6, :cond_4

    goto :goto_1

    :cond_4
    iget-object p3, p7, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/launcher/util/CellAndSpan;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p3, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result v3

    iget v4, p3, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v5, p3, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result v4

    iget v5, p3, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v5, v3

    iget p3, p3, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    goto :goto_2

    :cond_5
    iget v3, p3, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v4, p3, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget v5, p3, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v5, v3

    iget p3, p3, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    :goto_2
    add-int/2addr p3, v4

    invoke-virtual {v2, v3, v4, v5, p3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v1, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-boolean p3, p4, Lcom/zui/launcher/CellLayout$LayoutParams;->canReorder:Z

    if-nez p3, :cond_6

    return v0

    :cond_6
    iget-object p3, p0, Lcom/zui/launcher/CellLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/zui/launcher/CellLayout;->H:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p7, Lcom/zui/launcher/CellLayout$ItemConfiguration;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/zui/launcher/CellLayout;->H:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/CellLayout;->j(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_8

    return p2

    :cond_8
    iget-object v2, p0, Lcom/zui/launcher/CellLayout;->H:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->I:Landroid/graphics/Rect;

    move-object v1, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/CellLayout;->h(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_9

    return p2

    :cond_9
    iget-object p1, p0, Lcom/zui/launcher/CellLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    iget-object p4, p0, Lcom/zui/launcher/CellLayout;->I:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, p5, p7}, Lcom/zui/launcher/CellLayout;->g(Landroid/view/View;Landroid/graphics/Rect;[ILcom/zui/launcher/CellLayout$ItemConfiguration;)Z

    move-result p3

    if-nez p3, :cond_a

    return v0

    :cond_b
    return p2

    :cond_c
    :goto_3
    return v0
.end method

.method private S(Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->P:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a()Landroid/util/Property;
    .locals 1

    sget-object v0, Lcom/zui/launcher/CellLayout;->c0:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic b(Lcom/zui/launcher/CellLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->p:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic c()[I
    .locals 1

    sget-object v0, Lcom/zui/launcher/CellLayout;->Z:[I

    return-object v0
.end method

.method static synthetic d()[I
    .locals 1

    sget-object v0, Lcom/zui/launcher/CellLayout;->a0:[I

    return-object v0
.end method

.method static synthetic e(Lcom/zui/launcher/CellLayout;)[F
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->S:[F

    return-object p0
.end method

.method static synthetic f(Lcom/zui/launcher/CellLayout;)[Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->R:[Landroid/graphics/Rect;

    return-object p0
.end method

.method private g(Landroid/view/View;Landroid/graphics/Rect;[ILcom/zui/launcher/CellLayout$ItemConfiguration;)Z
    .locals 11

    iget-object p4, p4, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/util/CellAndSpan;

    iget-object p4, p0, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    const/4 v0, 0x0

    invoke-virtual {p4, p1, v0}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/util/CellAndSpan;Z)V

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result p4

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result p2

    invoke-static {p4, p2}, Lcom/zui/launcher/Utilities;->transToOriginalRect(Landroid/graphics/Rect;I)V

    iget-object p2, p0, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {p2, p4, v1}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Landroid/graphics/Rect;Z)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {p4, p2, v1}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Landroid/graphics/Rect;Z)V

    :goto_0
    iget v3, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v4, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget v5, p1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget v6, p1, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    iget-object p2, p0, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    iget-object v8, p2, Lcom/zui/launcher/util/GridOccupancy;->cells:[[Z

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/zui/launcher/CellLayout;->k:[I

    move-object v2, p0

    move-object v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/zui/launcher/CellLayout;->z(IIII[I[[Z[[Z[I)[I

    iget-object p2, p0, Lcom/zui/launcher/CellLayout;->k:[I

    aget p3, p2, v0

    if-ltz p3, :cond_1

    aget p3, p2, v1

    if-ltz p3, :cond_1

    aget p3, p2, v0

    iput p3, p1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    aget p2, p2, v1

    iput p2, p1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    move v0, v1

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {p0, p1, v1}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/util/CellAndSpan;Z)V

    return v0
.end method

.method private h(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/zui/launcher/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move-object/from16 v10, p5

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v11, 0x1

    if-nez v1, :cond_0

    return v11

    :cond_0
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v2

    move-object/from16 v13, p1

    invoke-virtual {v10, v13, v12, v1, v2}, Lcom/zui/launcher/CellLayout$ItemConfiguration;->c(Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v14, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, v10, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/util/CellAndSpan;

    iget-object v3, v9, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v3, v2, v14}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/util/CellAndSpan;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v1

    invoke-static {v12, v1}, Lcom/zui/launcher/Utilities;->transToOriginalRect(Landroid/graphics/Rect;I)V

    :cond_2
    new-instance v1, Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/zui/launcher/util/GridOccupancy;-><init>(II)V

    iget v8, v12, Landroid/graphics/Rect;->top:I

    iget v15, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, v10, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/util/CellAndSpan;

    iget v3, v2, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    sub-int/2addr v3, v15

    iget v4, v2, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    sub-int/2addr v4, v8

    iget v5, v2, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget v6, v2, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    const/4 v7, 0x1

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/zui/launcher/util/GridOccupancy;->markCells(IIIIZ)V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v0

    invoke-static {v2, v0}, Lcom/zui/launcher/Utilities;->transToOriginalRect(Landroid/graphics/Rect;I)V

    iget-object v0, v9, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v0, v2, v11}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Landroid/graphics/Rect;Z)V

    goto :goto_2

    :cond_4
    iget-object v2, v9, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v2, v0, v11}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Landroid/graphics/Rect;Z)V

    :goto_2
    iget v2, v12, Landroid/graphics/Rect;->left:I

    iget v3, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v0, v9, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    iget-object v6, v0, Lcom/zui/launcher/util/GridOccupancy;->cells:[[Z

    iget-object v7, v1, Lcom/zui/launcher/util/GridOccupancy;->cells:[[Z

    iget-object v8, v9, Lcom/zui/launcher/CellLayout;->k:[I

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/zui/launcher/CellLayout;->z(IIII[I[[Z[[Z[I)[I

    iget-object v0, v9, Lcom/zui/launcher/CellLayout;->k:[I

    aget v1, v0, v14

    if-ltz v1, :cond_6

    aget v1, v0, v11

    if-ltz v1, :cond_6

    aget v1, v0, v14

    iget v2, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    aget v0, v0, v11

    iget v2, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, v10, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/util/CellAndSpan;

    iget v4, v3, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v4, v3, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    goto :goto_3

    :cond_5
    move v14, v11

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, v10, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/util/CellAndSpan;

    iget-object v2, v9, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v2, v1, v11}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/util/CellAndSpan;Z)V

    goto :goto_4

    :cond_7
    return v14
.end method

.method private j(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/zui/launcher/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    aget v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    if-le v1, v2, :cond_4

    aget v1, p3, v2

    aput v0, p3, v2

    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/CellLayout;->Q(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    aput v1, p3, v2

    aget v1, p3, v0

    aput v0, p3, v0

    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/CellLayout;->Q(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    aput v1, p3, v0

    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    aget v1, p3, v2

    aput v0, p3, v2

    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/CellLayout;->Q(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    aput v1, p3, v2

    aget v1, p3, v0

    aput v0, p3, v0

    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/CellLayout;->Q(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    aput v1, p3, v0

    aget p0, p3, v0

    mul-int/lit8 p0, p0, -0x1

    aput p0, p3, v0

    aget p0, p3, v2

    mul-int/lit8 p0, p0, -0x1

    aput p0, p3, v2

    goto :goto_0

    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/CellLayout;->Q(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/CellLayout;->Q(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    aget v1, p3, v2

    aget v3, p3, v0

    aput v3, p3, v2

    aput v1, p3, v0

    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/CellLayout;->Q(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/CellLayout;->Q(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v2

    :cond_8
    aget p0, p3, v0

    mul-int/lit8 p0, p0, -0x1

    aput p0, p3, v0

    aget p0, p3, v2

    mul-int/lit8 p0, p0, -0x1

    aput p0, p3, v2

    aget p0, p3, v2

    aget p1, p3, v0

    aput p1, p3, v2

    aput p0, p3, v0

    :goto_0
    return v0
.end method

.method private k(Lcom/zui/launcher/CellLayout$ItemConfiguration;Landroid/view/View;II)V
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v0, v10, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-ge v14, v12, :cond_3

    iget-object v0, v10, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v15, p2

    if-ne v2, v15, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v11, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/util/CellAndSpan;

    if-nez p4, :cond_1

    iget-object v1, v11, Lcom/zui/launcher/CellLayout$ItemConfiguration;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v13

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout$LayoutParams;

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    new-instance v16, Lcom/zui/launcher/CellLayout$j;

    iget v4, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iget v6, v0, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v7, v0, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget v8, v0, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget v9, v0, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v3, p4

    invoke-direct/range {v0 .. v9}, Lcom/zui/launcher/CellLayout$j;-><init>(Lcom/zui/launcher/CellLayout;Landroid/view/View;IIIIIII)V

    invoke-virtual/range {v16 .. v16}, Lcom/zui/launcher/CellLayout$j;->b()V

    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private p(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, p0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return p0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return p0
.end method

.method private q(FF[I)V
    .locals 7

    div-float p0, p2, p1

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const/4 p0, 0x0

    aput p0, p3, p0

    const/4 v2, 0x1

    aput p0, p3, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, p3, p0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpl-double p0, p0, v5

    if-lez p0, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    aput p0, p3, v2

    :cond_1
    return-void
.end method

.method private r(Lcom/zui/launcher/CellLayout$ItemConfiguration;Z)V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout$LayoutParams;

    new-instance v4, Lcom/zui/launcher/util/CellAndSpan;

    if-eqz p2, :cond_0

    iget v5, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    iget v7, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v3, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/zui/launcher/util/CellAndSpan;-><init>(IIII)V

    goto :goto_1

    :cond_0
    iget v5, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v6, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iget v7, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v3, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/zui/launcher/util/CellAndSpan;-><init>(IIII)V

    :goto_1
    invoke-virtual {p1, v2, v4}, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a(Landroid/view/View;Lcom/zui/launcher/util/CellAndSpan;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static rectToCell(II[I)[I
    .locals 8

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    goto :goto_0

    :cond_0
    iget v3, v1, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    :goto_0
    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v1, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    goto :goto_1

    :cond_1
    iget v4, v1, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    :goto_1
    iget v5, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    invoke-static {v5, v3}, Lcom/zui/launcher/DeviceProfile;->calculateCellWidth(II)I

    move-result v3

    const/4 v5, 0x0

    sub-int/2addr v3, v5

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    invoke-static {v0, v4}, Lcom/zui/launcher/DeviceProfile;->calculateCellHeight(II)I

    move-result v0

    sub-int/2addr v0, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, v1, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    int-to-double v2, v2

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    float-to-double v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int p0, v2

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    int-to-double v1, v1

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int p1, v0

    const/4 v0, 0x1

    if-nez p2, :cond_2

    const/4 p2, 0x2

    new-array p2, p2, [I

    aput p0, p2, v5

    aput p1, p2, v0

    return-object p2

    :cond_2
    aput p0, p2, v5

    aput p1, p2, v0

    return-object p2
.end method

.method private s(Lcom/zui/launcher/CellLayout$ItemConfiguration;Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/zui/launcher/util/GridOccupancy;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget-object v5, p1, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/util/CellAndSpan;

    if-eqz v3, :cond_1

    iget v5, v3, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iput v5, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    iget v5, v3, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iput v5, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    iget v5, v3, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iput v5, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v3, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    iput v5, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v4, p0, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v4, v3, v2}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/util/CellAndSpan;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {p0, p1, v2}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/util/CellAndSpan;Z)V

    return-void
.end method

.method private u(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    iget v0, p0, Lcom/zui/launcher/CellLayout;->F:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->R:[Landroid/graphics/Rect;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/zui/launcher/CellLayout;->S:[F

    aget v2, v2, v0

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    aget-object v1, v1, v0

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->L:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/zui/launcher/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->L:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private x(IIIIIILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Lcom/zui/launcher/CellLayout$ItemConfiguration;
    .locals 12

    move-object/from16 v0, p8

    const/4 v1, 0x2

    new-array v11, v1, [I

    new-array v1, v1, [I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object v9, v11

    move-object v10, v1

    invoke-virtual/range {v2 .. v10}, Lcom/zui/launcher/CellLayout;->A(IIIIII[I[I)[I

    const/4 v2, 0x0

    aget v3, v11, v2

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    aget v4, v11, v3

    if-ltz v4, :cond_0

    move-object v4, p0

    invoke-direct {p0, v0, v2}, Lcom/zui/launcher/CellLayout;->r(Lcom/zui/launcher/CellLayout$ItemConfiguration;Z)V

    aget v4, v11, v2

    iput v4, v0, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    aget v4, v11, v3

    iput v4, v0, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    aget v2, v1, v2

    iput v2, v0, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    aget v1, v1, v3

    iput v1, v0, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    iput-boolean v3, v0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->e:Z

    goto :goto_0

    :cond_0
    iput-boolean v2, v0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->e:Z

    :goto_0
    return-object v0
.end method

.method private y(IIIIIIZ[I[I)[I
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->L()V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    int-to-float v1, v1

    if-eqz v7, :cond_0

    iget v7, v0, Lcom/zui/launcher/CellLayout;->a:I

    add-int/lit8 v9, v6, -0x1

    mul-int/2addr v7, v9

    int-to-float v7, v7

    div-float/2addr v7, v8

    sub-float/2addr v1, v7

    float-to-int v1, v1

    int-to-float v2, v2

    iget v7, v0, Lcom/zui/launcher/CellLayout;->b:I

    add-int/lit8 v9, v5, -0x1

    mul-int/2addr v7, v9

    int-to-float v7, v7

    div-float/2addr v7, v8

    add-float/2addr v2, v7

    goto :goto_0

    :cond_0
    iget v7, v0, Lcom/zui/launcher/CellLayout;->a:I

    add-int/lit8 v9, v5, -0x1

    mul-int/2addr v7, v9

    int-to-float v7, v7

    div-float/2addr v7, v8

    sub-float/2addr v1, v7

    float-to-int v1, v1

    int-to-float v2, v2

    iget v7, v0, Lcom/zui/launcher/CellLayout;->b:I

    add-int/lit8 v9, v6, -0x1

    mul-int/2addr v7, v9

    int-to-float v7, v7

    div-float/2addr v7, v8

    sub-float/2addr v2, v7

    :goto_0
    float-to-int v2, v2

    if-eqz p8, :cond_1

    move-object/from16 v7, p8

    goto :goto_1

    :cond_1
    const/4 v7, 0x2

    new-array v7, v7, [I

    :goto_1
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Ljava/util/Stack;

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    iget v11, v0, Lcom/zui/launcher/CellLayout;->e:I

    iget v12, v0, Lcom/zui/launcher/CellLayout;->f:I

    if-lez v3, :cond_1e

    if-lez v4, :cond_1e

    if-lez v5, :cond_1e

    if-lez v6, :cond_1e

    if-lt v5, v3, :cond_1e

    if-ge v6, v4, :cond_2

    goto/16 :goto_14

    :cond_2
    const/4 v9, 0x0

    const-wide v17, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_2
    add-int/lit8 v19, v4, -0x1

    sub-int v15, v12, v19

    if-ge v9, v15, :cond_1c

    const/4 v15, 0x0

    :goto_3
    add-int/lit8 v16, v3, -0x1

    sub-int v14, v11, v16

    if-ge v15, v14, :cond_1b

    if-eqz p7, :cond_14

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v3, :cond_5

    const/4 v13, 0x0

    :goto_5
    move-object/from16 v16, v7

    if-ge v13, v4, :cond_4

    iget-object v7, v0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    iget-object v7, v7, Lcom/zui/launcher/util/GridOccupancy;->cells:[[Z

    add-int v19, v15, v14

    aget-object v7, v7, v19

    add-int v19, v9, v13

    aget-boolean v7, v7, v19

    if-eqz v7, :cond_3

    move/from16 v21, v1

    move/from16 v20, v2

    move-object v1, v8

    goto/16 :goto_13

    :cond_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v16

    goto :goto_5

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v16, v7

    if-lt v3, v5, :cond_6

    const/4 v7, 0x1

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    if-lt v4, v6, :cond_7

    const/4 v13, 0x1

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    :goto_7
    move v14, v13

    move v13, v7

    const/4 v7, 0x1

    :goto_8
    if-eqz v13, :cond_9

    if-nez v14, :cond_8

    goto :goto_9

    :cond_8
    move/from16 v21, v1

    move/from16 v20, v2

    move-object/from16 v19, v8

    goto/16 :goto_f

    :cond_9
    :goto_9
    if-eqz v7, :cond_d

    if-nez v13, :cond_d

    move-object/from16 v19, v8

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v4, :cond_c

    move/from16 v20, v2

    add-int v2, v15, v3

    move/from16 v21, v1

    add-int/lit8 v1, v11, -0x1

    if-gt v2, v1, :cond_a

    iget-object v1, v0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    iget-object v1, v1, Lcom/zui/launcher/util/GridOccupancy;->cells:[[Z

    aget-object v1, v1, v2

    add-int v2, v9, v8

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_b

    :cond_a
    const/4 v13, 0x1

    :cond_b
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v20

    move/from16 v1, v21

    goto :goto_a

    :cond_c
    move/from16 v21, v1

    move/from16 v20, v2

    if-nez v13, :cond_11

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_d
    move/from16 v21, v1

    move/from16 v20, v2

    move-object/from16 v19, v8

    if-nez v14, :cond_11

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v3, :cond_10

    add-int v2, v9, v4

    add-int/lit8 v8, v12, -0x1

    if-gt v2, v8, :cond_e

    iget-object v8, v0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    iget-object v8, v8, Lcom/zui/launcher/util/GridOccupancy;->cells:[[Z

    add-int v22, v15, v1

    aget-object v8, v8, v22

    aget-boolean v2, v8, v2

    if-eqz v2, :cond_f

    :cond_e
    const/4 v14, 0x1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_10
    if-nez v14, :cond_11

    add-int/lit8 v4, v4, 0x1

    :cond_11
    :goto_c
    if-lt v3, v5, :cond_12

    const/4 v1, 0x1

    goto :goto_d

    :cond_12
    const/4 v1, 0x0

    :goto_d
    or-int/2addr v13, v1

    if-lt v4, v6, :cond_13

    const/4 v1, 0x1

    goto :goto_e

    :cond_13
    const/4 v1, 0x0

    :goto_e
    or-int/2addr v14, v1

    xor-int/lit8 v7, v7, 0x1

    move-object/from16 v8, v19

    move/from16 v2, v20

    move/from16 v1, v21

    goto :goto_8

    :cond_14
    move/from16 v21, v1

    move/from16 v20, v2

    move-object/from16 v16, v7

    move-object/from16 v19, v8

    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_f
    iget-object v1, v0, Lcom/zui/launcher/CellLayout;->j:[I

    invoke-virtual {v0, v15, v9, v1}, Lcom/zui/launcher/CellLayout;->l(II[I)V

    iget-object v2, v0, Lcom/zui/launcher/CellLayout;->P:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    add-int v7, v15, v3

    add-int v8, v9, v4

    invoke-virtual {v2, v15, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v10}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_15

    const/4 v7, 0x1

    goto :goto_10

    :cond_16
    const/4 v7, 0x0

    :goto_10
    invoke-virtual {v10, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    aget v13, v1, v8

    sub-int v13, v13, v21

    int-to-double v13, v13

    const/4 v8, 0x1

    aget v1, v1, v8

    sub-int v1, v1, v20

    int-to-double v5, v1

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    cmpg-double v1, v5, v17

    if-gtz v1, :cond_18

    if-eqz v7, :cond_17

    goto :goto_11

    :cond_17
    move-object/from16 v1, v19

    goto :goto_12

    :cond_18
    :goto_11
    move-object/from16 v1, v19

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1a

    :goto_12
    const/4 v7, 0x0

    aput v15, v16, v7

    const/4 v8, 0x1

    aput v9, v16, v8

    if-eqz p9, :cond_19

    aput v3, p9, v7

    aput v4, p9, v8

    :cond_19
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-wide/from16 v17, v5

    :cond_1a
    :goto_13
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v8, v1

    move-object/from16 v7, v16

    move/from16 v2, v20

    move/from16 v1, v21

    goto/16 :goto_3

    :cond_1b
    move/from16 v21, v1

    move/from16 v20, v2

    move-object/from16 v16, v7

    move-object v1, v8

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v1, v21

    goto/16 :goto_2

    :cond_1c
    move-object/from16 v16, v7

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v17, v2

    if-nez v1, :cond_1d

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v16, v2

    const/4 v3, 0x1

    aput v1, v16, v3

    :cond_1d
    invoke-direct {v0, v10}, Lcom/zui/launcher/CellLayout;->S(Ljava/util/Stack;)V

    return-object v16

    :cond_1e
    :goto_14
    move-object/from16 v16, v7

    move v1, v9

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v1, v16, v2

    aput v1, v16, v3

    return-object v16
.end method

.method private z(IIII[I[[Z[[Z[I)[I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    if-eqz p8, :cond_0

    move-object/from16 v3, p8

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    :goto_0
    const/high16 v4, -0x80000000

    iget v5, v0, Lcom/zui/launcher/CellLayout;->e:I

    iget v6, v0, Lcom/zui/launcher/CellLayout;->f:I

    const/4 v9, 0x0

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    :goto_1
    add-int/lit8 v11, v2, -0x1

    sub-int v11, v6, v11

    const/4 v12, 0x1

    if-ge v9, v11, :cond_8

    const/4 v11, 0x0

    :goto_2
    add-int/lit8 v13, v1, -0x1

    sub-int v13, v5, v13

    if-ge v11, v13, :cond_7

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v1, :cond_4

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v2, :cond_3

    add-int v15, v11, v13

    aget-object v15, p6, v15

    add-int v16, v9, v14

    aget-boolean v15, v15, v16

    if-eqz v15, :cond_2

    if-eqz p7, :cond_1

    aget-object v15, p7, v13

    aget-boolean v15, v15, v14

    if-eqz v15, :cond_2

    :cond_1
    move/from16 v17, v9

    goto :goto_5

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    sub-int v13, v11, p1

    int-to-double v14, v13

    sub-int v7, v9, p2

    move/from16 v17, v9

    int-to-double v8, v7

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    iget-object v9, v0, Lcom/zui/launcher/CellLayout;->j:[I

    int-to-float v13, v13

    int-to-float v7, v7

    invoke-direct {v0, v13, v7, v9}, Lcom/zui/launcher/CellLayout;->q(FF[I)V

    const/4 v7, 0x0

    aget v13, p5, v7

    aget v14, v9, v7

    mul-int/2addr v13, v14

    aget v7, p5, v12

    aget v9, v9, v12

    mul-int/2addr v7, v9

    add-int/2addr v13, v7

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-ltz v7, :cond_5

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_6

    if-le v13, v4, :cond_6

    :cond_5
    const/4 v4, 0x0

    aput v11, v3, v4

    aput v17, v3, v12

    move v10, v8

    move v4, v13

    :cond_6
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v17

    goto :goto_2

    :cond_7
    move/from16 v17, v9

    add-int/lit8 v9, v17, 0x1

    goto :goto_1

    :cond_8
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v10, v4

    if-nez v0, :cond_9

    const/4 v0, -0x1

    const/4 v1, 0x0

    aput v0, v3, v1

    aput v0, v3, v12

    :cond_9
    return-object v3
.end method


# virtual methods
.method A(IIIIII[I[I)[I
    .locals 10

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/zui/launcher/CellLayout;->y(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method J()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/CellLayout;->A:Z

    return p0
.end method

.method K(IIIILandroid/view/View;[I)Z
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p1

    const/4 p2, 0x0

    aget v1, p1, p2

    const/4 p2, 0x1

    aget v2, p1, p2

    iget-object v7, p0, Lcom/zui/launcher/CellLayout;->H:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/CellLayout;->H(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, p2

    return p0
.end method

.method M()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/CellLayout;->C:Z

    return-void
.end method

.method N()V
    .locals 5

    iget-boolean v0, p0, Lcom/zui/launcher/CellLayout;->C:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/zui/launcher/CellLayout;->C:Z

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->B:[I

    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, v0, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->v:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    iget v2, p0, Lcom/zui/launcher/CellLayout;->w:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/zui/launcher/InterruptibleInOutAnimator;->animateOut()V

    iget v0, p0, Lcom/zui/launcher/CellLayout;->w:I

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/zui/launcher/CellLayout;->v:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/zui/launcher/CellLayout;->w:I

    iget v0, p0, Lcom/zui/launcher/CellLayout;->F:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/zui/launcher/CellLayout;->V:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/CellLayout;->T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    iget v3, p0, Lcom/zui/launcher/CellLayout;->U:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/zui/launcher/CellLayout;->R:[Landroid/graphics/Rect;

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/zui/launcher/InterruptibleInOutAnimator;->animateOut()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/zui/launcher/CellLayout;->U:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/zui/launcher/CellLayout;->T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/zui/launcher/CellLayout;->U:I

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->X()V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/CellLayout;->setIsDragOverlapping(Z)V

    return-void
.end method

.method O(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->dropped:Z

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method P(IIIIIILandroid/view/View;[I[II)[I
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v12, p7

    move/from16 v13, p10

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v14

    const/4 v15, 0x2

    if-nez p9, :cond_0

    new-array v0, v15, [I

    move-object/from16 v16, v0

    goto :goto_0

    :cond_0
    move-object/from16 v16, p9

    :goto_0
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eq v13, v15, :cond_1

    if-eq v13, v10, :cond_1

    const/4 v0, 0x4

    if-ne v13, v0, :cond_3

    :cond_1
    iget-object v0, v11, Lcom/zui/launcher/CellLayout;->K:[I

    aget v1, v0, v8

    const/16 v2, -0x64

    if-eq v1, v2, :cond_3

    iget-object v1, v11, Lcom/zui/launcher/CellLayout;->J:[I

    aget v3, v0, v8

    aput v3, v1, v8

    aget v0, v0, v9

    aput v0, v1, v9

    if-eq v13, v15, :cond_2

    if-ne v13, v10, :cond_4

    :cond_2
    iget-object v0, v11, Lcom/zui/launcher/CellLayout;->K:[I

    aput v2, v0, v8

    aput v2, v0, v9

    goto :goto_1

    :cond_3
    iget-object v6, v11, Lcom/zui/launcher/CellLayout;->J:[I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/CellLayout;->F(IIIILandroid/view/View;[I)V

    iget-object v0, v11, Lcom/zui/launcher/CellLayout;->K:[I

    iget-object v1, v11, Lcom/zui/launcher/CellLayout;->J:[I

    aget v2, v1, v8

    aput v2, v0, v8

    aget v1, v1, v9

    aput v1, v0, v9

    :cond_4
    :goto_1
    iget-object v7, v11, Lcom/zui/launcher/CellLayout;->J:[I

    const/16 v17, 0x1

    new-instance v18, Lcom/zui/launcher/CellLayout$ItemConfiguration;

    invoke-direct/range {v18 .. v18}, Lcom/zui/launcher/CellLayout$ItemConfiguration;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v15, v8

    move-object/from16 v8, p7

    move/from16 v9, v17

    move-object/from16 v10, v18

    invoke-direct/range {v0 .. v10}, Lcom/zui/launcher/CellLayout;->B(IIIIII[ILandroid/view/View;ZLcom/zui/launcher/CellLayout$ItemConfiguration;)Lcom/zui/launcher/CellLayout$ItemConfiguration;

    move-result-object v9

    new-instance v10, Lcom/zui/launcher/CellLayout$ItemConfiguration;

    invoke-direct {v10}, Lcom/zui/launcher/CellLayout$ItemConfiguration;-><init>()V

    move-object/from16 v7, p7

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/zui/launcher/CellLayout;->x(IIIIIILandroid/view/View;Lcom/zui/launcher/CellLayout$ItemConfiguration;)Lcom/zui/launcher/CellLayout$ItemConfiguration;

    const/4 v0, 0x0

    iget-boolean v1, v9, Lcom/zui/launcher/CellLayout$ItemConfiguration;->e:Z

    if-eqz v1, :cond_5

    invoke-virtual {v9}, Lcom/zui/launcher/CellLayout$ItemConfiguration;->b()I

    move-result v1

    invoke-virtual {v10}, Lcom/zui/launcher/CellLayout$ItemConfiguration;->b()I

    move-result v2

    if-lt v1, v2, :cond_5

    goto :goto_2

    :cond_5
    iget-boolean v1, v10, Lcom/zui/launcher/CellLayout$ItemConfiguration;->e:Z

    if-eqz v1, :cond_6

    move-object v9, v10

    goto :goto_2

    :cond_6
    move-object v9, v0

    :goto_2
    const/4 v0, -0x1

    if-nez v13, :cond_8

    if-eqz v9, :cond_7

    invoke-direct {v11, v9, v12, v15, v15}, Lcom/zui/launcher/CellLayout;->k(Lcom/zui/launcher/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    iget v0, v9, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    aput v0, v14, v15

    iget v0, v9, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    const/4 v1, 0x1

    aput v0, v14, v1

    iget v0, v9, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    aput v0, v16, v15

    iget v0, v9, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    aput v0, v16, v1

    goto :goto_3

    :cond_7
    const/4 v1, 0x1

    aput v0, v16, v1

    aput v0, v16, v15

    aput v0, v14, v1

    aput v0, v14, v15

    :goto_3
    return-object v14

    :cond_8
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/zui/launcher/CellLayout;->setUseTempCoords(Z)V

    if-eqz v9, :cond_e

    iget v0, v9, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    aput v0, v14, v15

    iget v0, v9, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    aput v0, v14, v1

    iget v0, v9, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    aput v0, v16, v15

    iget v0, v9, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    aput v0, v16, v1

    const/4 v0, 0x2

    const/4 v2, 0x3

    if-eq v13, v1, :cond_9

    if-eq v13, v0, :cond_9

    if-ne v13, v2, :cond_d

    :cond_9
    invoke-direct {v11, v9, v12}, Lcom/zui/launcher/CellLayout;->s(Lcom/zui/launcher/CellLayout$ItemConfiguration;Landroid/view/View;)V

    invoke-virtual {v11, v1}, Lcom/zui/launcher/CellLayout;->setItemPlacementDirty(Z)V

    if-ne v13, v0, :cond_a

    move v3, v1

    goto :goto_4

    :cond_a
    move v3, v15

    :goto_4
    invoke-virtual {v11, v9, v12, v3}, Lcom/zui/launcher/CellLayout;->i(Lcom/zui/launcher/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    if-eq v13, v0, :cond_c

    if-ne v13, v2, :cond_b

    goto :goto_5

    :cond_b
    const/16 v0, 0x96

    invoke-direct {v11, v9, v12, v0, v1}, Lcom/zui/launcher/CellLayout;->k(Lcom/zui/launcher/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    goto :goto_6

    :cond_c
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->commitTempPlacement()V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->completeAndClearReorderPreviewAnimations()V

    invoke-virtual {v11, v15}, Lcom/zui/launcher/CellLayout;->setItemPlacementDirty(Z)V

    :cond_d
    :goto_6
    move v9, v1

    goto :goto_7

    :cond_e
    aput v0, v16, v1

    aput v0, v16, v15

    aput v0, v14, v1

    aput v0, v14, v15

    move v9, v15

    :goto_7
    const/4 v0, 0x2

    if-eq v13, v0, :cond_f

    if-nez v9, :cond_10

    :cond_f
    invoke-virtual {v11, v15}, Lcom/zui/launcher/CellLayout;->setUseTempCoords(Z)V

    :cond_10
    iget-object v0, v11, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-object v14
.end method

.method T(IIII[I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v2

    invoke-static {p1, p3, v2}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result p1

    iget v2, p0, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr p2, v2

    add-int/2addr v0, p2

    mul-int/2addr p4, v2

    div-int/lit8 p4, p4, 0x2

    add-int/2addr v0, p4

    aput v0, p5, v4

    iget p0, p0, Lcom/zui/launcher/CellLayout;->b:I

    mul-int/2addr p1, p0

    add-int/2addr v1, p1

    mul-int/2addr p3, p0

    div-int/lit8 p3, p3, 0x2

    add-int/2addr v1, p3

    aput v1, p5, v3

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr p1, v2

    add-int/2addr v0, p1

    mul-int/2addr p3, v2

    div-int/lit8 p3, p3, 0x2

    add-int/2addr v0, p3

    aput v0, p5, v4

    iget p0, p0, Lcom/zui/launcher/CellLayout;->b:I

    mul-int/2addr p2, p0

    add-int/2addr v1, p2

    mul-int/2addr p4, p0

    div-int/lit8 p4, p4, 0x2

    add-int/2addr v1, p4

    aput v1, p5, v3

    :goto_0
    return-void
.end method

.method U(IIII[I)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/CellLayout;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v2}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getIconSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v4

    invoke-static {p1, p3, v4}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result p1

    if-gt p3, v6, :cond_2

    if-le p4, v6, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget p4, p0, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr p2, p4

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCellIconPaddingLeft()I

    move-result p2

    add-int/2addr v0, p2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    aput v0, p5, v5

    iget p0, p0, Lcom/zui/launcher/CellLayout;->b:I

    mul-int/2addr p1, p0

    add-int/2addr v1, p1

    mul-int/2addr p3, p0

    div-int/lit8 p3, p3, 0x2

    add-int/2addr v1, p3

    aput v1, p5, v6

    goto/16 :goto_3

    :cond_1
    iget p3, p0, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr p2, p3

    add-int/2addr v0, p2

    mul-int/2addr p4, p3

    div-int/lit8 p4, p4, 0x2

    add-int/2addr v0, p4

    aput v0, p5, v5

    iget p2, p0, Lcom/zui/launcher/CellLayout;->b:I

    mul-int/2addr p1, p2

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCellIconPaddingTop()I

    move-result p0

    add-int/2addr v1, p0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    aput v1, p5, v6

    goto/16 :goto_3

    :cond_2
    :goto_0
    iget v2, p0, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr p2, v2

    add-int/2addr v0, p2

    mul-int/2addr p4, v2

    div-int/lit8 p4, p4, 0x2

    add-int/2addr v0, p4

    aput v0, p5, v5

    iget p0, p0, Lcom/zui/launcher/CellLayout;->b:I

    mul-int/2addr p1, p0

    add-int/2addr v1, p1

    mul-int/2addr p3, p0

    div-int/lit8 p3, p3, 0x2

    add-int/2addr v1, p3

    aput v1, p5, v6

    goto :goto_3

    :cond_3
    if-gt p3, v6, :cond_7

    if-le p4, v6, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p3

    if-eqz p3, :cond_5

    add-int/2addr p1, v6

    iget p3, p0, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr p1, p3

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCellIconPaddingLeft()I

    move-result p1

    sub-int/2addr v0, p1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    aput v0, p5, v5

    goto :goto_1

    :cond_5
    iget p3, p0, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr p1, p3

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCellIconPaddingLeft()I

    move-result p1

    add-int/2addr v0, p1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    aput v0, p5, v5

    :goto_1
    iget p0, p0, Lcom/zui/launcher/CellLayout;->b:I

    mul-int/2addr p2, p0

    add-int/2addr v1, p2

    mul-int/2addr p4, p0

    div-int/lit8 p4, p4, 0x2

    add-int/2addr v1, p4

    aput v1, p5, v6

    goto :goto_3

    :cond_6
    iget p4, p0, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr p1, p4

    add-int/2addr v0, p1

    mul-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    add-int/2addr v0, p3

    aput v0, p5, v5

    iget p1, p0, Lcom/zui/launcher/CellLayout;->b:I

    mul-int/2addr p2, p1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCellIconPaddingTop()I

    move-result p0

    add-int/2addr v1, p0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    aput v1, p5, v6

    goto :goto_3

    :cond_7
    :goto_2
    iget v2, p0, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr p1, v2

    add-int/2addr v0, p1

    mul-int/2addr p3, v2

    div-int/lit8 p3, p3, 0x2

    add-int/2addr v0, p3

    aput v0, p5, v5

    iget p0, p0, Lcom/zui/launcher/CellLayout;->b:I

    mul-int/2addr p2, p0

    add-int/2addr v1, p2

    mul-int/2addr p4, p0

    div-int/lit8 p4, p4, 0x2

    add-int/2addr v1, p4

    aput v1, p5, v6

    :goto_3
    return-void
.end method

.method V(IIIILandroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v2

    invoke-static {p1, p3, v2}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result p1

    iget v2, p0, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr p2, v2

    add-int/2addr v0, p2

    iget p0, p0, Lcom/zui/launcher/CellLayout;->b:I

    mul-int/2addr p1, p0

    add-int/2addr v1, p1

    mul-int/2addr p4, v2

    add-int/2addr p4, v0

    mul-int/2addr p3, p0

    add-int/2addr p3, v1

    invoke-virtual {p5, v0, v1, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr p1, v2

    add-int/2addr v0, p1

    iget p0, p0, Lcom/zui/launcher/CellLayout;->b:I

    mul-int/2addr p2, p0

    add-int/2addr v1, p2

    mul-int/2addr p3, v2

    add-int/2addr p3, v0

    mul-int/2addr p4, p0

    add-int/2addr p4, v1

    invoke-virtual {p5, v0, v1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method W(II)[I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountH()I

    move-result v1

    invoke-static {p1, v1}, Lcom/zui/launcher/DeviceProfile;->calculateCellWidth(II)I

    move-result p1

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountV()I

    move-result p0

    invoke-static {p2, p0}, Lcom/zui/launcher/DeviceProfile;->calculateCellHeight(II)I

    move-result p0

    const/4 p1, 0x1

    aput p0, v0, p1

    return-object v0
.end method

.method X()V
    .locals 13

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->completeAndClearReorderPreviewAnimations()V

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->J()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v4, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    if-ne v4, v6, :cond_0

    iget v4, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    iget v6, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    if-eq v4, v6, :cond_1

    :cond_0
    iget v6, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iput v6, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    iget v7, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iput v7, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    const/16 v8, 0x96

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/zui/launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIILandroid/animation/ValueAnimator;ZZ)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/zui/launcher/CellLayout;->setItemPlacementDirty(Z)V

    :cond_3
    return-void
.end method

.method Y()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->p:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/zui/launcher/CellLayout;->Y:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->W:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->W:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/CellLayout;->W:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->W:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zui/launcher/effect/QuadInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/zui/launcher/effect/QuadInterpolator;-><init>(B)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->W:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zui/launcher/CellLayout$f;

    invoke-direct {v1, p0}, Lcom/zui/launcher/CellLayout$f;-><init>(Lcom/zui/launcher/CellLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->W:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zui/launcher/CellLayout$g;

    invoke-direct {v1, p0}, Lcom/zui/launcher/CellLayout$g;-><init>(Lcom/zui/launcher/CellLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->W:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method Z(Lcom/zui/launcher/graphics/DragPreviewProvider;Ljava/util/List;ZLcom/zui/launcher/DropTarget$DragObject;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/graphics/DragPreviewProvider;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Lcom/zui/launcher/DropTarget$DragObject;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    iget v0, v6, Lcom/zui/launcher/CellLayout;->F:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz v7, :cond_7

    iget-object v0, v7, Lcom/zui/launcher/graphics/DragPreviewProvider;->generatedDragOutlineList:Ljava/util/List;

    if-eqz v0, :cond_7

    if-nez v8, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, v9, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v7, Lcom/zui/launcher/graphics/DragPreviewProvider;->generatedDragOutlineList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v0, v6, Lcom/zui/launcher/CellLayout;->Q:Ljava/util/List;

    invoke-direct {v6, v0, v8}, Lcom/zui/launcher/CellLayout;->p(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v6, Lcom/zui/launcher/CellLayout;->Q:Ljava/util/List;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v6, Lcom/zui/launcher/CellLayout;->V:I

    iget v10, v6, Lcom/zui/launcher/CellLayout;->U:I

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    iget v0, v6, Lcom/zui/launcher/CellLayout;->V:I

    if-ge v12, v0, :cond_6

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, v6, Lcom/zui/launcher/CellLayout;->e:I

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->getCellXYByIndex(II)[I

    move-result-object v0

    aget v1, v0, v11

    const/4 v2, 0x1

    aget v3, v0, v2

    iget-object v0, v7, Lcom/zui/launcher/graphics/DragPreviewProvider;->generatedDragOutlineList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/graphics/Bitmap;

    iget-object v0, v9, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v0

    iget-object v4, v9, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v4}, Lcom/zui/launcher/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, v6, Lcom/zui/launcher/CellLayout;->T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    add-int v14, v10, v12

    iget-object v15, v6, Lcom/zui/launcher/CellLayout;->R:[Landroid/graphics/Rect;

    array-length v15, v15

    rem-int/2addr v14, v15

    aget-object v5, v5, v14

    invoke-virtual {v5}, Lcom/zui/launcher/InterruptibleInOutAnimator;->animateOut()V

    iget v5, v6, Lcom/zui/launcher/CellLayout;->V:I

    add-int/2addr v5, v10

    add-int/2addr v5, v12

    iget-object v14, v6, Lcom/zui/launcher/CellLayout;->R:[Landroid/graphics/Rect;

    array-length v15, v14

    rem-int v15, v5, v15

    aget-object v14, v14, v15

    if-eqz p3, :cond_4

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    iget-object v5, v6, Lcom/zui/launcher/CellLayout;->j:[I

    invoke-virtual {v6, v1, v3, v5}, Lcom/zui/launcher/CellLayout;->o(II[I)V

    aget v1, v5, v11

    aget v3, v5, v2

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v11, v6, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr v11, v2

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v11, v2

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v5, v11

    add-int/2addr v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v2

    const/4 v4, 0x0

    iget v5, v6, Lcom/zui/launcher/CellLayout;->b:I

    sub-int/2addr v5, v2

    int-to-float v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_5
    iget v0, v6, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr v0, v2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iget v0, v6, Lcom/zui/launcher/CellLayout;->b:I

    mul-int/2addr v0, v2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    :goto_1
    add-int/2addr v3, v0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v14, v1, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v14, v0}, Lcom/zui/launcher/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    iget-object v0, v6, Lcom/zui/launcher/CellLayout;->T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    aget-object v0, v0, v15

    invoke-virtual {v0, v13}, Lcom/zui/launcher/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/zui/launcher/CellLayout;->T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    aget-object v0, v0, v15

    invoke-virtual {v0}, Lcom/zui/launcher/InterruptibleInOutAnimator;->animateIn()V

    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_6
    add-int/2addr v10, v0

    iget-object v0, v6, Lcom/zui/launcher/CellLayout;->R:[Landroid/graphics/Rect;

    array-length v0, v0

    rem-int/2addr v10, v0

    iput v10, v6, Lcom/zui/launcher/CellLayout;->U:I

    :cond_7
    :goto_3
    return-void
.end method

.method a0(Landroid/view/View;Lcom/zui/launcher/graphics/DragPreviewProvider;IIIIZLcom/zui/launcher/DropTarget$DragObject;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v3, p5

    move-object/from16 v10, p8

    iget-object v1, v6, Lcom/zui/launcher/CellLayout;->B:[I

    const/4 v2, 0x0

    aget v4, v1, v2

    const/4 v5, 0x1

    aget v1, v1, v5

    if-eqz v0, :cond_f

    iget-object v11, v0, Lcom/zui/launcher/graphics/DragPreviewProvider;->generatedDragOutline:Landroid/graphics/Bitmap;

    if-nez v11, :cond_0

    goto/16 :goto_9

    :cond_0
    if-ne v8, v4, :cond_1

    if-eq v9, v1, :cond_f

    :cond_1
    iget-object v0, v10, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, v10, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v1}, Lcom/zui/launcher/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v4, v6, Lcom/zui/launcher/CellLayout;->B:[I

    aput v8, v4, v2

    aput v9, v4, v5

    iget v4, v6, Lcom/zui/launcher/CellLayout;->w:I

    iget-object v12, v6, Lcom/zui/launcher/CellLayout;->v:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/zui/launcher/InterruptibleInOutAnimator;->animateOut()V

    add-int/2addr v4, v5

    iget-object v12, v6, Lcom/zui/launcher/CellLayout;->t:[Landroid/graphics/Rect;

    array-length v13, v12

    rem-int/2addr v4, v13

    iput v4, v6, Lcom/zui/launcher/CellLayout;->w:I

    aget-object v12, v12, v4

    if-eqz p7, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    instance-of v0, v7, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    if-nez v0, :cond_2

    instance-of v0, v7, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v0, :cond_e

    :cond_2
    iget-object v0, v6, Lcom/zui/launcher/CellLayout;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/zui/launcher/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v12, v1, v0}, Lcom/zui/launcher/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    goto/16 :goto_8

    :cond_3
    iget-object v4, v6, Lcom/zui/launcher/CellLayout;->j:[I

    invoke-virtual {v6, v8, v9, v3, v4}, Lcom/zui/launcher/CellLayout;->n(III[I)V

    aget v13, v4, v2

    aget v4, v4, v5

    if-eqz v7, :cond_5

    if-nez v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v13, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v6, Lcom/zui/launcher/CellLayout;->b:I

    mul-int/2addr v0, v3

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    iget v0, v6, Lcom/zui/launcher/CellLayout;->a:I

    mul-int v0, v0, p6

    goto :goto_0

    :cond_4
    iget v0, v6, Lcom/zui/launcher/CellLayout;->b:I

    mul-int v0, v0, p6

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    iget v0, v6, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr v0, v3

    :goto_0
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v13, v0

    goto/16 :goto_7

    :cond_5
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    iget-object v14, v6, Lcom/zui/launcher/CellLayout;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v14}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v15

    if-eqz v15, :cond_6

    iget v15, v6, Lcom/zui/launcher/CellLayout;->F:I

    if-eq v15, v5, :cond_6

    move v2, v5

    :cond_6
    if-eqz v2, :cond_8

    if-eqz v7, :cond_7

    instance-of v2, v7, Lcom/zui/launcher/WorkspaceIconCompat;

    if-nez v2, :cond_7

    instance-of v2, v7, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v2, :cond_8

    :cond_7
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    :goto_1
    add-int/2addr v2, v3

    :goto_2
    add-int/2addr v13, v2

    goto :goto_3

    :cond_8
    invoke-virtual {v14}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v2

    if-eqz v2, :cond_9

    instance-of v2, v7, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v2, :cond_9

    iget v2, v6, Lcom/zui/launcher/CellLayout;->F:I

    if-ne v2, v5, :cond_9

    iget v2, v6, Lcom/zui/launcher/CellLayout;->a:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-eq v2, v5, :cond_9

    iget v2, v14, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    iget v5, v6, Lcom/zui/launcher/CellLayout;->a:I

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    add-int/2addr v13, v3

    goto :goto_3

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v6, Lcom/zui/launcher/CellLayout;->a:I

    mul-int v3, v3, p6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_a
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v5, v6, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr v5, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_2

    :goto_3
    invoke-virtual {v14}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v2

    if-eqz v2, :cond_b

    instance-of v2, v7, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_4

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v1

    :goto_4
    const/4 v2, 0x0

    iget v3, v6, Lcom/zui/launcher/CellLayout;->b:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    goto :goto_6

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, v6, Lcom/zui/launcher/CellLayout;->a:I

    mul-int v0, v0, p6

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v13, v0

    iget v0, v6, Lcom/zui/launcher/CellLayout;->b:I

    mul-int/2addr v0, v3

    goto :goto_5

    :cond_d
    iget v0, v6, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr v0, v3

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v13, v0

    iget v0, v6, Lcom/zui/launcher/CellLayout;->b:I

    mul-int v0, v0, p6

    :goto_5
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    :goto_6
    add-int/2addr v4, v0

    :goto_7
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, v13

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v12, v13, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_e
    :goto_8
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v12, v0}, Lcom/zui/launcher/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    iget-object v0, v6, Lcom/zui/launcher/CellLayout;->v:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    iget v1, v6, Lcom/zui/launcher/CellLayout;->w:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v11}, Lcom/zui/launcher/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/zui/launcher/CellLayout;->v:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    iget v1, v6, Lcom/zui/launcher/CellLayout;->w:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/zui/launcher/InterruptibleInOutAnimator;->animateIn()V

    iget-object v0, v10, Lcom/zui/launcher/DropTarget$DragObject;->stateAnnouncer:Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_f

    invoke-virtual {v6, v8, v9}, Lcom/zui/launcher/CellLayout;->getItemMoveDescription(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_9
    return-void
.end method

.method public acceptsWidget()Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/CellLayout;->F:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public addFolderBackground(Lcom/zui/launcher/folder/PreviewBackground;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addViewToCellLayout(Landroid/view/View;IILcom/zui/launcher/CellLayout$LayoutParams;Z)Z
    .locals 5

    instance-of v0, p1, Lcom/zui/launcher/WorkspaceIconCompat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/WorkspaceIconCompat;

    iget v3, p0, Lcom/zui/launcher/CellLayout;->F:I

    if-eq v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-interface {v0, v3}, Lcom/zui/launcher/WorkspaceIconCompat;->setTextVisibility(Z)V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget v0, p4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    if-ltz v0, :cond_5

    iget v3, p0, Lcom/zui/launcher/CellLayout;->e:I

    add-int/lit8 v4, v3, -0x1

    if-gt v0, v4, :cond_5

    iget v0, p4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    if-ltz v0, :cond_5

    iget v4, p0, Lcom/zui/launcher/CellLayout;->f:I

    sub-int/2addr v4, v2

    if-gt v0, v4, :cond_5

    iget v0, p4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v0, :cond_2

    iput v3, p4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    :cond_2
    iget v0, p4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/zui/launcher/CellLayout;->f:I

    iput v0, p4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    iget-object p3, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p3, p1, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_4

    invoke-virtual {p0, p1}, Lcom/zui/launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method public animateChildToPosition(Landroid/view/View;IIIILandroid/animation/ValueAnimator;ZZ)Z
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v11, 0x0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/zui/launcher/ItemInfo;

    iget-object v0, v8, Lcom/zui/launcher/CellLayout;->y:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/zui/launcher/CellLayout;->y:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, v8, Lcom/zui/launcher/CellLayout;->y:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v14, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->x:I

    iget v15, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->y:I

    if-eqz p8, :cond_2

    if-eqz p7, :cond_1

    iget-object v0, v8, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    :goto_0
    iget v1, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v2, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iget v3, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    const/16 v21, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    invoke-virtual/range {v16 .. v21}, Lcom/zui/launcher/util/GridOccupancy;->markCells(IIIIZ)V

    iget v3, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz p7, :cond_3

    iput v6, v13, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v6, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iput v7, v13, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput v7, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    goto :goto_1

    :cond_3
    iput v6, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    iput v7, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    :goto_1
    invoke-virtual {v10, v9}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    iput-boolean v11, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget v4, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->x:I

    iget v6, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->y:I

    iput v14, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->x:I

    iput v15, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->y:I

    if-ne v14, v4, :cond_4

    if-ne v15, v6, :cond_4

    iput-boolean v5, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    return v5

    :cond_4
    if-nez p6, :cond_5

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    move-object v10, v0

    move/from16 v0, p4

    goto :goto_2

    :cond_5
    move/from16 v0, p4

    move-object/from16 v10, p6

    :goto_2
    int-to-long v0, v0

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v8, Lcom/zui/launcher/CellLayout;->y:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/zui/launcher/CellLayout$c;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v12

    move v3, v14

    move v13, v5

    move v5, v15

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/CellLayout$c;-><init>(Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/zui/launcher/CellLayout$d;

    invoke-direct {v0, v8, v12, v9}, Lcom/zui/launcher/CellLayout$d;-><init>(Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/CellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move/from16 v0, p5

    int-to-long v0, v0

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    return v13

    :cond_6
    return v11

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public cancelLongPress()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/Rect;)V
    .locals 5

    iget v0, p0, Lcom/zui/launcher/CellLayout;->a:I

    iget v1, p0, Lcom/zui/launcher/CellLayout;->b:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v4

    if-eqz v4, :cond_0

    mul-int/2addr p4, v0

    mul-int v4, p3, v1

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result p0

    invoke-static {p1, p3, p0}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result p0

    mul-int/2addr p2, v0

    add-int/2addr v2, p2

    mul-int/2addr p0, v1

    add-int/2addr v3, p0

    goto :goto_0

    :cond_0
    mul-int p0, p3, v0

    mul-int v4, p4, v1

    mul-int/2addr p1, v0

    add-int/2addr v2, p1

    mul-int/2addr p2, v1

    add-int/2addr v3, p2

    move p4, p0

    :goto_0
    add-int/2addr p4, v2

    add-int/2addr v4, v3

    invoke-virtual {p5, v2, v3, p4, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/zui/launcher/CellLayout$LayoutParams;

    return p0
.end method

.method public clearDragOutlines()V
    .locals 6

    iget v0, p0, Lcom/zui/launcher/CellLayout;->w:I

    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->v:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/zui/launcher/InterruptibleInOutAnimator;->animateOut()V

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->B:[I

    const/4 v1, 0x1

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    iget v0, p0, Lcom/zui/launcher/CellLayout;->F:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/CellLayout;->U:I

    iget v2, p0, Lcom/zui/launcher/CellLayout;->V:I

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    add-int v4, v0, v1

    iget-object v5, p0, Lcom/zui/launcher/CellLayout;->R:[Landroid/graphics/Rect;

    array-length v5, v5

    rem-int/2addr v4, v5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/zui/launcher/InterruptibleInOutAnimator;->animateOut()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->Q:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public clearFolderLeaveBehind()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->o:Lcom/zui/launcher/folder/PreviewBackground;

    const/4 v1, -0x1

    iput v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->delegateCellX:I

    iput v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->delegateCellY:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method protected commitTempPlacement()V
    .locals 14

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/GridOccupancy;->copyTo(Lcom/zui/launcher/util/GridOccupancy;)V

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->cast(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/Workspace;->getIdForScreen(Lcom/zui/launcher/CellLayout;)I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/CellLayout;->F:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, -0x1

    const/16 v1, -0x65

    goto :goto_0

    :cond_0
    const/16 v1, -0x64

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    if-ge v13, v11, :cond_4

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/zui/launcher/ItemInfo;

    if-eqz v5, :cond_3

    iget v3, v5, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    if-ne v3, v6, :cond_2

    iget v3, v5, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v3, v6, :cond_2

    iget v3, v5, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v3, v6, :cond_2

    iget v3, v5, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v3, v6, :cond_1

    goto :goto_2

    :cond_1
    move v3, v12

    goto :goto_3

    :cond_2
    :goto_2
    move v3, v2

    :goto_3
    iget v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellX:I

    iput v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iput v6, v5, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->tmpCellY:I

    iput v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iput v6, v5, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v6, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iput v6, v5, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v4, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iput v4, v5, Lcom/zui/launcher/ItemInfo;->spanY:I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-static {v3}, Lcom/zui/launcher/Launcher;->cast(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v3

    iget v7, v5, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v8, v5, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v9, v5, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v10, v5, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v4, v5

    move v5, v1

    move v6, v0

    invoke-virtual/range {v3 .. v10}, Lcom/zui/launcher/model/ModelWriter;->modifyItemInDatabase(Lcom/zui/launcher/ItemInfo;IIIIII)V

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected completeAndClearReorderPreviewAnimations()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->z:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout$j;

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout$j;->d()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->z:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public copyToTmpOccupied()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/GridOccupancy;->copyTo(Lcom/zui/launcher/util/GridOccupancy;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/CellLayout;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/CellLayout;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/folder/PreviewBackground;

    iget-boolean v3, v2, Lcom/zui/launcher/folder/PreviewBackground;->isClipping:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/zui/launcher/folder/PreviewBackground;->delegateCellX:I

    iget v4, v2, Lcom/zui/launcher/folder/PreviewBackground;->delegateCellY:I

    iget-object v5, p0, Lcom/zui/launcher/CellLayout;->k:[I

    invoke-virtual {p0, v3, v4, v5}, Lcom/zui/launcher/CellLayout;->o(II[I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->k:[I

    aget v4, v3, v0

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, p1}, Lcom/zui/launcher/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/CellLayout;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->M:Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zui/launcher/CellLayout;->G(Landroid/util/SparseArray;)Lcom/zui/launcher/util/ParcelableSparseArray;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zui/launcher/CellLayout;->G(Landroid/util/SparseArray;)Lcom/zui/launcher/util/ParcelableSparseArray;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    const p0, 0x7f0a00da

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public enableAccessibleDrag(ZI)V
    .locals 2

    iput-boolean p1, p0, Lcom/zui/launcher/CellLayout;->N:Z

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_0
    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/CellLayout;->M:Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;

    instance-of p1, p1, Lcom/zui/launcher/accessibility/WorkspaceAccessibilityHelper;

    if-nez p1, :cond_1

    new-instance p1, Lcom/zui/launcher/accessibility/WorkspaceAccessibilityHelper;

    invoke-direct {p1, p0}, Lcom/zui/launcher/accessibility/WorkspaceAccessibilityHelper;-><init>(Lcom/zui/launcher/CellLayout;)V

    :goto_1
    iput-object p1, p0, Lcom/zui/launcher/CellLayout;->M:Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;

    goto :goto_2

    :cond_1
    if-ne p2, v1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/CellLayout;->M:Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;

    instance-of p1, p1, Lcom/zui/launcher/accessibility/FolderAccessibilityHelper;

    if-nez p1, :cond_2

    new-instance p1, Lcom/zui/launcher/accessibility/FolderAccessibilityHelper;

    invoke-direct {p1, p0}, Lcom/zui/launcher/accessibility/FolderAccessibilityHelper;-><init>(Lcom/zui/launcher/CellLayout;)V

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/zui/launcher/CellLayout;->M:Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/CellLayout;->M:Lcom/zui/launcher/accessibility/DragAndDropAccessibilityDelegate;

    goto :goto_0

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p0, p0, v1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    :cond_3
    return-void
.end method

.method public enableHardwareLayer(Z)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/zui/launcher/CellLayout;->b0:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public findCellForSpan([III)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [I

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/util/GridOccupancy;->findVacantCell([III)Z

    move-result p0

    return p0
.end method

.method public findNearestArea(IIII[I)[I
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/zui/launcher/CellLayout;->y(IIIIIIZ[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public findNextUnOccupiedCell([I[IIILjava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget v4, p0, Lcom/zui/launcher/CellLayout;->e:I

    iget v5, p0, Lcom/zui/launcher/CellLayout;->f:I

    iget-object v6, p0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/zui/launcher/CellLayout;->D([I[IIIIILcom/zui/launcher/util/GridOccupancy;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public findPreviousUnOccupiedCell([IIILjava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget v3, p0, Lcom/zui/launcher/CellLayout;->e:I

    iget v4, p0, Lcom/zui/launcher/CellLayout;->f:I

    iget-object v5, p0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/zui/launcher/CellLayout;->E([IIIIILcom/zui/launcher/util/GridOccupancy;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    new-instance p0, Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/zui/launcher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getCellHeight()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/CellLayout;->b:I

    return p0
.end method

.method public getCellIconPaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget p0, p0, Lcom/zui/launcher/CellLayout;->F:I

    if-nez p0, :cond_0

    iget p0, v0, Lcom/zui/launcher/DeviceProfile;->workspaceCellPaddingXPx:I

    goto :goto_0

    :cond_0
    iget p0, v0, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method public getCellIconPaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v0

    iget p0, p0, Lcom/zui/launcher/CellLayout;->b:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getCellWidth()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/CellLayout;->a:I

    return p0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getCountH()I
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getCountV()I
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getCountX()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/CellLayout;->e:I

    return p0
.end method

.method public getCountY()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/CellLayout;->f:I

    return p0
.end method

.method public getDesiredHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zui/launcher/CellLayout;->h:I

    iget p0, p0, Lcom/zui/launcher/CellLayout;->b:I

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zui/launcher/CellLayout;->g:I

    iget p0, p0, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public getDistanceFromCell(FF[I)F
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/CellLayout;->F:I

    if-eq v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    aget v0, p3, v1

    aget p3, p3, v2

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->j:[I

    invoke-virtual {p0, v0, p3, v3}, Lcom/zui/launcher/CellLayout;->m(II[I)V

    goto :goto_1

    :cond_1
    aget v0, p3, v1

    aget p3, p3, v2

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->j:[I

    invoke-virtual {p0, v0, p3, v3}, Lcom/zui/launcher/CellLayout;->l(II[I)V

    :goto_1
    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->j:[I

    aget p3, p0, v1

    int-to-float p3, p3

    sub-float/2addr p1, p3

    float-to-double v0, p1

    aget p0, p0, v2

    int-to-float p0, p0

    sub-float/2addr p2, p0

    float-to-double p0, p2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public getIconSize()I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget p0, p0, Lcom/zui/launcher/CellLayout;->F:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    iget p0, v0, Lcom/zui/launcher/DeviceProfile;->folderChildIconSizePx:I

    return p0

    :cond_0
    iget p0, v0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    return p0
.end method

.method public getIsDragOverlapping()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/CellLayout;->s:Z

    return p0
.end method

.method public getItemChildCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getItemMoveDescription(II)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    iget v0, p0, Lcom/zui/launcher/CellLayout;->F:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1204e9

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v0

    const/4 v3, 0x2

    const v4, 0x7f1204e8

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v0

    invoke-static {p1, v2, v0}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result p1

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    add-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    add-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRotationMode()Lcom/zui/launcher/graphics/RotationMode;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->O:Lcom/zui/launcher/graphics/RotationMode;

    return-object p0
.end method

.method public getScrimBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->p:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    return-object p0
.end method

.method public getUnusedHorizontalSpace()I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->O:Lcom/zui/launcher/graphics/RotationMode;

    iget-boolean v0, v0, Lcom/zui/launcher/graphics/RotationMode;->isTransposed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountH()I

    move-result v1

    iget p0, p0, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method public hasReorderSolution(Lcom/zui/launcher/ItemInfo;)Z
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const/4 v0, 0x2

    new-array v13, v0, [I

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v0

    if-ge v15, v0, :cond_2

    move v10, v14

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v0

    if-ge v10, v0, :cond_1

    invoke-virtual {v11, v15, v10, v13}, Lcom/zui/launcher/CellLayout;->o(II[I)V

    aget v1, v13, v14

    const/16 v16, 0x1

    aget v2, v13, v16

    iget v3, v12, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iget v4, v12, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iget v5, v12, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v6, v12, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget-object v7, v11, Lcom/zui/launcher/CellLayout;->J:[I

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-instance v17, Lcom/zui/launcher/CellLayout$ItemConfiguration;

    invoke-direct/range {v17 .. v17}, Lcom/zui/launcher/CellLayout$ItemConfiguration;-><init>()V

    move-object/from16 v0, p0

    move/from16 v18, v10

    move-object/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Lcom/zui/launcher/CellLayout;->B(IIIIII[ILandroid/view/View;ZLcom/zui/launcher/CellLayout$ItemConfiguration;)Lcom/zui/launcher/CellLayout$ItemConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->e:Z

    if-eqz v0, :cond_0

    return v16

    :cond_0
    add-int/lit8 v10, v18, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    return v14
.end method

.method i(Lcom/zui/launcher/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget-object v11, v9, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v11}, Lcom/zui/launcher/util/GridOccupancy;->clear()V

    iget-object v0, v9, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v0, 0x0

    move v13, v0

    :goto_0
    if-ge v13, v12, :cond_2

    iget-object v0, v9, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v15, p2

    if-ne v1, v15, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v10, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/zui/launcher/util/CellAndSpan;

    if-eqz v8, :cond_1

    iget v2, v8, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v3, v8, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    const/16 v4, 0x96

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v14, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIILandroid/animation/ValueAnimator;ZZ)Z

    const/4 v0, 0x1

    invoke-virtual {v11, v14, v0}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/util/CellAndSpan;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-eqz p3, :cond_3

    invoke-virtual {v11, v10, v0}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/util/CellAndSpan;Z)V

    :cond_3
    return-void
.end method

.method public isDropPending()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/CellLayout;->i:Z

    return p0
.end method

.method public isHardwareLayerEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayerType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHaveItemForCell(II)Z
    .locals 2

    iget v0, p0, Lcom/zui/launcher/CellLayout;->e:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/zui/launcher/CellLayout;->f:I

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/zui/launcher/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    return v1
.end method

.method public isOccupied(II)Z
    .locals 1

    iget v0, p0, Lcom/zui/launcher/CellLayout;->e:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/CellLayout;->f:I

    if-ge p2, v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    iget-object p0, p0, Lcom/zui/launcher/util/GridOccupancy;->cells:[[Z

    aget-object p0, p0, p1

    aget-boolean p0, p0, p2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isRegionVacant(IIII)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/launcher/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result p0

    return p0
.end method

.method public isReordering()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->y:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method l(II[I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/CellLayout;->T(IIII[I)V

    return-void
.end method

.method m(II[I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/CellLayout;->U(IIII[I)V

    return-void
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;Lcom/zui/launcher/util/GridOccupancy;)V

    return-void
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;Lcom/zui/launcher/util/GridOccupancy;)V
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v1, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iget v3, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;Lcom/zui/launcher/util/GridOccupancy;)V

    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;Lcom/zui/launcher/util/GridOccupancy;)V
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v1, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iget v3, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, p0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method n(III[I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v2

    invoke-static {p1, p3, v2}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result p1

    iget p3, p0, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr p2, p3

    add-int/2addr v0, p2

    aput v0, p4, v4

    iget p0, p0, Lcom/zui/launcher/CellLayout;->b:I

    mul-int/2addr p1, p0

    add-int/2addr v1, p1

    aput v1, p4, v3

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/zui/launcher/CellLayout;->a:I

    mul-int/2addr p1, p3

    add-int/2addr v0, p1

    aput v0, p4, v4

    iget p0, p0, Lcom/zui/launcher/CellLayout;->b:I

    mul-int/2addr p2, p0

    add-int/2addr v1, p2

    aput v1, p4, v3

    :goto_0
    return-void
.end method

.method o(II[I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/zui/launcher/CellLayout;->n(III[I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget v0, p0, Lcom/zui/launcher/CellLayout;->F:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/zui/launcher/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v2, p0, Lcom/zui/launcher/CellLayout;->R:[Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/zui/launcher/CellLayout;->S:[F

    iput-object v2, p0, Lcom/zui/launcher/CellLayout;->T:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    :cond_1
    return-void
.end method

.method public onDragStartedWithDockItem(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/ItemInfo;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/CellLayout;->Y:[I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->identifyWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/CellLayout;->Z:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zui/launcher/CellLayout;->a0:[I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->p:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/zui/launcher/CellLayout;->a0:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_1
    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->x:Landroid/graphics/Paint;

    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->t:[Landroid/graphics/Rect;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->u:[F

    aget v3, v3, v2

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/zui/launcher/CellLayout;->v:[Lcom/zui/launcher/InterruptibleInOutAnimator;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/zui/launcher/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/zui/launcher/CellLayout;->t:[Landroid/graphics/Rect;

    aget-object v5, v5, v2

    invoke-virtual {p1, v4, v3, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/CellLayout;->u(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_5
    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/zui/launcher/CellLayout;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/zui/launcher/CellLayout;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/folder/PreviewBackground;

    iget v4, v2, Lcom/zui/launcher/folder/PreviewBackground;->delegateCellX:I

    iget v5, v2, Lcom/zui/launcher/folder/PreviewBackground;->delegateCellY:I

    iget-object v6, p0, Lcom/zui/launcher/CellLayout;->k:[I

    invoke-virtual {p0, v4, v5, v6}, Lcom/zui/launcher/CellLayout;->o(II[I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, p0, Lcom/zui/launcher/CellLayout;->k:[I

    aget v5, v4, v1

    int-to-float v5, v5

    aget v3, v4, v3

    int-to-float v3, v3

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, p1}, Lcom/zui/launcher/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    iget-boolean v3, v2, Lcom/zui/launcher/folder/PreviewBackground;->isClipping:Z

    if-nez v3, :cond_6

    invoke-virtual {v2, p1}, Lcom/zui/launcher/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->o:Lcom/zui/launcher/folder/PreviewBackground;

    iget v2, v0, Lcom/zui/launcher/folder/PreviewBackground;->delegateCellX:I

    if-ltz v2, :cond_8

    iget v0, v0, Lcom/zui/launcher/folder/PreviewBackground;->delegateCellY:I

    if-ltz v0, :cond_8

    iget-object v4, p0, Lcom/zui/launcher/CellLayout;->k:[I

    invoke-virtual {p0, v2, v0, v4}, Lcom/zui/launcher/CellLayout;->o(II[I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->k:[I

    aget v1, v0, v1

    int-to-float v1, v1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->o:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/PreviewBackground;->drawLeaveBehind(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/CellLayout;->N:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->m:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getUnusedHorizontalSpace()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr p1, v0

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getUnusedHorizontalSpace()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iget-object p3, p0, Lcom/zui/launcher/CellLayout;->p:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->L:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object p3, p0, Lcom/zui/launcher/CellLayout;->p:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->L:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->L:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/zui/launcher/CellLayout;->L:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->L:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p3, p0, Lcom/zui/launcher/CellLayout;->O:Lcom/zui/launcher/graphics/RotationMode;

    iget-boolean p3, p3, Lcom/zui/launcher/graphics/RotationMode;->isTransposed:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, p4

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p5

    div-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    sub-int p4, p1, p3

    sub-int p5, p2, v0

    add-int/2addr p1, p3

    add-int/2addr p2, v0

    invoke-virtual {p0, p4, p5, p1, p2}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1, p2, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v3, p2, v3

    iget-object v4, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    iget-object v5, p0, Lcom/zui/launcher/CellLayout;->O:Lcom/zui/launcher/graphics/RotationMode;

    iget v5, v5, Lcom/zui/launcher/graphics/RotationMode;->surfaceRotation:F

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setRotation(F)V

    iget-object v4, p0, Lcom/zui/launcher/CellLayout;->O:Lcom/zui/launcher/graphics/RotationMode;

    iget-boolean v4, v4, Lcom/zui/launcher/graphics/RotationMode;->isTransposed:Z

    if-eqz v4, :cond_0

    move v12, v3

    move v3, v2

    move v2, v12

    :cond_0
    iget v4, p0, Lcom/zui/launcher/CellLayout;->c:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/zui/launcher/CellLayout;->d:I

    if-gez v4, :cond_3

    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/zui/launcher/CellLayout;->W(II)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v7, v4, v5

    const/4 v5, 0x1

    aget v8, v4, v5

    iget v4, p0, Lcom/zui/launcher/CellLayout;->a:I

    if-ne v7, v4, :cond_2

    iget v4, p0, Lcom/zui/launcher/CellLayout;->b:I

    if-eq v8, v4, :cond_3

    :cond_2
    iput v7, p0, Lcom/zui/launcher/CellLayout;->a:I

    iput v8, p0, Lcom/zui/launcher/CellLayout;->b:I

    iget-object v6, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v9

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v10

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v11

    invoke-virtual/range {v6 .. v11}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->setCellDimensions(IIIIZ)V

    :cond_3
    iget v4, p0, Lcom/zui/launcher/CellLayout;->q:I

    if-lez v4, :cond_4

    iget v5, p0, Lcom/zui/launcher/CellLayout;->r:I

    if-lez v5, :cond_4

    move v2, v4

    move v3, v5

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/CellLayout;->q:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/zui/launcher/CellLayout;->r:I

    if-lez v2, :cond_5

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_1
    return-void

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pointToCellExact(II[I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/zui/launcher/CellLayout;->b:I

    div-int/2addr p2, v1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v1

    invoke-static {p2, v4, v1}, Lcom/zui/launcher/Utilities;->getOriginalCellX(III)I

    move-result p2

    aput p2, p3, v3

    sub-int/2addr p1, v0

    iget p2, p0, Lcom/zui/launcher/CellLayout;->a:I

    div-int/2addr p1, p2

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getOriginalCellY(I)I

    move-result p1

    aput p1, p3, v4

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    iget v0, p0, Lcom/zui/launcher/CellLayout;->a:I

    div-int/2addr p1, v0

    aput p1, p3, v3

    sub-int/2addr p2, v1

    iget p1, p0, Lcom/zui/launcher/CellLayout;->b:I

    div-int/2addr p2, p1

    aput p2, p3, v4

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result p0

    aget p2, p3, v3

    if-gez p2, :cond_1

    aput v3, p3, v3

    :cond_1
    aget p2, p3, v3

    if-lt p2, p1, :cond_2

    sub-int/2addr p1, v4

    aput p1, p3, v3

    :cond_2
    aget p1, p3, v4

    if-gez p1, :cond_3

    aput v3, p3, v4

    :cond_3
    aget p1, p3, v4

    if-lt p1, p0, :cond_4

    sub-int/2addr p0, v4

    aput p0, p3, v4

    :cond_4
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/zui/launcher/util/GridOccupancy;->clear()V

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/zui/launcher/util/GridOccupancy;->clear()V

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_0
    return-void
.end method

.method public removeFolderBackground(Lcom/zui/launcher/folder/PreviewBackground;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/WorkspaceItemInfo;->removeRecommendConn(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public removeViewAt(II)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeViewAt, view:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", getCaller:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CellLayout"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    return-object p1
.end method

.method public removeViewAt(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeViewAt, index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getCaller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CellLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeViewInLayout, view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getCaller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CellLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeViews, start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getCaller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CellLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zui/launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeViewsInLayout, start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getCaller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CellLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zui/launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    return-void
.end method

.method public resetDragOutlinePaintColor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->x:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060282

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060283

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->x:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method public restoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CellLayout"

    const-string v0, "Ignoring an error while restoring a view instance state"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setCellDimensions(II)V
    .locals 6

    iput p1, p0, Lcom/zui/launcher/CellLayout;->a:I

    iput p1, p0, Lcom/zui/launcher/CellLayout;->c:I

    iput p2, p0, Lcom/zui/launcher/CellLayout;->b:I

    iput p2, p0, Lcom/zui/launcher/CellLayout;->d:I

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v3

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v4

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v5

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->setCellDimensions(IIIIZ)V

    return-void
.end method

.method public setDropPending(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/CellLayout;->i:Z

    return-void
.end method

.method public setExchangeXYFlag(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/CellLayout;->X:Z

    return-void
.end method

.method public setFixedSize(II)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/CellLayout;->q:I

    iput p2, p0, Lcom/zui/launcher/CellLayout;->r:I

    return-void
.end method

.method public setFolderLeaveBehindCell(II)V
    .locals 11

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/CellLayout;->o:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/CellLayout;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/zui/launcher/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/zui/launcher/views/ActivityContext;Landroid/view/View;IIIIZI)V

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->o:Lcom/zui/launcher/folder/PreviewBackground;

    iput p1, v0, Lcom/zui/launcher/folder/PreviewBackground;->delegateCellX:I

    iput p2, v0, Lcom/zui/launcher/folder/PreviewBackground;->delegateCellY:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setGridSize(II)V
    .locals 6

    iput p1, p0, Lcom/zui/launcher/CellLayout;->e:I

    iput p2, p0, Lcom/zui/launcher/CellLayout;->f:I

    new-instance v0, Lcom/zui/launcher/util/GridOccupancy;

    invoke-direct {v0, p1, p2}, Lcom/zui/launcher/util/GridOccupancy;-><init>(II)V

    iput-object v0, p0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    new-instance p1, Lcom/zui/launcher/util/GridOccupancy;

    iget p2, p0, Lcom/zui/launcher/CellLayout;->e:I

    iget v0, p0, Lcom/zui/launcher/CellLayout;->f:I

    invoke-direct {p1, p2, v0}, Lcom/zui/launcher/util/GridOccupancy;-><init>(II)V

    iput-object p1, p0, Lcom/zui/launcher/CellLayout;->mTmpOccupied:Lcom/zui/launcher/util/GridOccupancy;

    iget-object p1, p0, Lcom/zui/launcher/CellLayout;->P:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/zui/launcher/CellLayout;->a:I

    iget v2, p0, Lcom/zui/launcher/CellLayout;->b:I

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v3

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v4

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->setCellDimensions(IIIIZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setInvertIfRtl(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->setInvertIfRtl(Z)V

    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/CellLayout;->s:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/zui/launcher/CellLayout;->s:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method setItemPlacementDirty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/CellLayout;->A:Z

    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/CellLayout;->m:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->O:Lcom/zui/launcher/graphics/RotationMode;

    iget-object v5, p0, Lcom/zui/launcher/CellLayout;->L:Landroid/graphics/Rect;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/graphics/RotationMode;->mapRect(IIIILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/zui/launcher/CellLayout;->L:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget p4, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, p2, p3, p4, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public setRotationMode(Lcom/zui/launcher/graphics/RotationMode;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->O:Lcom/zui/launcher/graphics/RotationMode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/zui/launcher/CellLayout;->O:Lcom/zui/launcher/graphics/RotationMode;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected setUseTempCoords(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/CellLayout$LayoutParams;

    iput-boolean p1, v2, Lcom/zui/launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldExchangeXY()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/CellLayout;->X:Z

    return p0
.end method

.method t(IIIILandroid/view/View;[IZ)Z
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v13, p7

    const/4 v0, 0x2

    new-array v6, v0, [I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/CellLayout;->T(IIII[I)V

    const/4 v14, 0x0

    aget v1, v6, v14

    const/4 v15, 0x1

    aget v2, v6, v15

    new-instance v10, Lcom/zui/launcher/CellLayout$ItemConfiguration;

    invoke-direct {v10}, Lcom/zui/launcher/CellLayout$ItemConfiguration;-><init>()V

    const/4 v9, 0x1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Lcom/zui/launcher/CellLayout;->B(IIIIII[ILandroid/view/View;ZLcom/zui/launcher/CellLayout$ItemConfiguration;)Lcom/zui/launcher/CellLayout$ItemConfiguration;

    move-result-object v0

    invoke-virtual {v11, v15}, Lcom/zui/launcher/CellLayout;->setUseTempCoords(Z)V

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->e:Z

    if-eqz v1, :cond_1

    invoke-direct {v11, v0, v12}, Lcom/zui/launcher/CellLayout;->s(Lcom/zui/launcher/CellLayout$ItemConfiguration;Landroid/view/View;)V

    invoke-virtual {v11, v15}, Lcom/zui/launcher/CellLayout;->setItemPlacementDirty(Z)V

    invoke-virtual {v11, v0, v12, v13}, Lcom/zui/launcher/CellLayout;->i(Lcom/zui/launcher/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->commitTempPlacement()V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/CellLayout;->completeAndClearReorderPreviewAnimations()V

    invoke-virtual {v11, v14}, Lcom/zui/launcher/CellLayout;->setItemPlacementDirty(Z)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x96

    invoke-direct {v11, v0, v12, v1, v15}, Lcom/zui/launcher/CellLayout;->k(Lcom/zui/launcher/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    :goto_0
    iget-object v1, v11, Lcom/zui/launcher/CellLayout;->E:Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    iget-boolean v0, v0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->e:Z

    return v0
.end method

.method v([IIILjava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-object v7, p0, Lcom/zui/launcher/CellLayout;->l:Lcom/zui/launcher/util/GridOccupancy;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/CellLayout;->w([IIIIILandroid/view/View;Lcom/zui/launcher/util/GridOccupancy;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/CellLayout;->p:Landroid/graphics/drawable/Drawable;

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

.method w([IIIIILandroid/view/View;Lcom/zui/launcher/util/GridOccupancy;Ljava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IIIII",
            "Landroid/view/View;",
            "Lcom/zui/launcher/util/GridOccupancy;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    new-instance v12, Lcom/zui/launcher/util/GridOccupancy;

    invoke-virtual/range {p7 .. p7}, Lcom/zui/launcher/util/GridOccupancy;->getCountX()I

    move-result v6

    invoke-virtual/range {p7 .. p7}, Lcom/zui/launcher/util/GridOccupancy;->getCountY()I

    move-result v7

    invoke-direct {v12, v6, v7}, Lcom/zui/launcher/util/GridOccupancy;-><init>(II)V

    move-object/from16 v6, p7

    invoke-virtual {v6, v12}, Lcom/zui/launcher/util/GridOccupancy;->copyTo(Lcom/zui/launcher/util/GridOccupancy;)V

    move v13, v5

    :goto_0
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v6

    if-ge v13, v6, :cond_1

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v0, Lcom/zui/launcher/CellLayout;->e:I

    rem-int v8, v6, v7

    div-int v9, v6, v7

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v14, 0x1

    move-object v6, v12

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v14

    invoke-virtual/range {v6 .. v11}, Lcom/zui/launcher/util/GridOccupancy;->markCells(IIIIZ)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p7

    move-object v12, v6

    :cond_1
    invoke-virtual {v0, v3, v12}, Lcom/zui/launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;Lcom/zui/launcher/util/GridOccupancy;)V

    const/4 v4, -0x1

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, v5

    :goto_1
    if-ltz v6, :cond_2

    add-int/lit8 v9, v1, -0x1

    sub-int v9, v6, v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_2

    :cond_2
    move v9, v5

    :goto_2
    iget v10, v0, Lcom/zui/launcher/CellLayout;->e:I

    add-int/lit8 v11, v1, -0x1

    sub-int/2addr v10, v11

    const/4 v13, 0x1

    if-ltz v6, :cond_4

    add-int/2addr v11, v6

    if-ne v1, v13, :cond_3

    move v14, v13

    goto :goto_3

    :cond_3
    move v14, v5

    :goto_3
    add-int/2addr v11, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_4
    if-ltz v7, :cond_5

    add-int/lit8 v11, v2, -0x1

    sub-int v11, v7, v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_4

    :cond_5
    move v11, v5

    :goto_4
    iget v14, v0, Lcom/zui/launcher/CellLayout;->f:I

    add-int/lit8 v15, v2, -0x1

    sub-int/2addr v14, v15

    if-ltz v7, :cond_7

    add-int/2addr v15, v7

    if-ne v2, v13, :cond_6

    move/from16 v16, v13

    goto :goto_5

    :cond_6
    move/from16 v16, v5

    :goto_5
    add-int v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    :cond_7
    :goto_6
    if-ge v11, v14, :cond_b

    if-nez v8, :cond_b

    move v15, v9

    :goto_7
    if-ge v15, v10, :cond_a

    invoke-virtual {v12, v15, v11, v1, v2}, Lcom/zui/launcher/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v16

    if-nez v16, :cond_8

    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_8
    if-eqz p1, :cond_9

    aput v15, p1, v5

    aput v11, p1, v13

    :cond_9
    move v8, v13

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_b
    if-ne v6, v4, :cond_c

    if-ne v7, v4, :cond_c

    invoke-virtual {v0, v3, v12}, Lcom/zui/launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;Lcom/zui/launcher/util/GridOccupancy;)V

    return v8

    :cond_c
    move v6, v4

    move v7, v6

    goto :goto_1
.end method
