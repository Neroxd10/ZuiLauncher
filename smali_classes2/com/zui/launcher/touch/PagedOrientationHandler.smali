.class public interface abstract Lcom/zui/launcher/touch/PagedOrientationHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/touch/PagedOrientationHandler$ChildBounds;,
        Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;,
        Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;
    }
.end annotation


# static fields
.field public static final CANVAS_TRANSLATE:Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field public static final LANDSCAPE:Lcom/zui/launcher/touch/PagedOrientationHandler;

.field public static final MATRIX_POST_TRANSLATE:Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORTRAIT:Lcom/zui/launcher/touch/PagedOrientationHandler;

.field public static final SEASCAPE:Lcom/zui/launcher/touch/PagedOrientationHandler;

.field public static final SPLIT_TRANSLATE_PRIMARY_NEGATIVE:I = 0x1

.field public static final SPLIT_TRANSLATE_PRIMARY_POSITIVE:I = 0x0

.field public static final SPLIT_TRANSLATE_SECONDARY_NEGATIVE:I = 0x2

.field public static final VIEW_SCROLL_BY:Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEW_SCROLL_TO:Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/touch/PortraitPagedViewHandler;

    invoke-direct {v0}, Lcom/zui/launcher/touch/PortraitPagedViewHandler;-><init>()V

    sput-object v0, Lcom/zui/launcher/touch/PagedOrientationHandler;->PORTRAIT:Lcom/zui/launcher/touch/PagedOrientationHandler;

    new-instance v0, Lcom/zui/launcher/touch/LandscapePagedViewHandler;

    invoke-direct {v0}, Lcom/zui/launcher/touch/LandscapePagedViewHandler;-><init>()V

    sput-object v0, Lcom/zui/launcher/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/zui/launcher/touch/PagedOrientationHandler;

    new-instance v0, Lcom/zui/launcher/touch/SeascapePagedViewHandler;

    invoke-direct {v0}, Lcom/zui/launcher/touch/SeascapePagedViewHandler;-><init>()V

    sput-object v0, Lcom/zui/launcher/touch/PagedOrientationHandler;->SEASCAPE:Lcom/zui/launcher/touch/PagedOrientationHandler;

    sget-object v0, Lcom/zui/launcher/touch/a;->a:Lcom/zui/launcher/touch/a;

    sput-object v0, Lcom/zui/launcher/touch/PagedOrientationHandler;->VIEW_SCROLL_BY:Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;

    sget-object v0, Lcom/zui/launcher/touch/l;->a:Lcom/zui/launcher/touch/l;

    sput-object v0, Lcom/zui/launcher/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;

    sget-object v0, Lcom/zui/launcher/touch/k;->a:Lcom/zui/launcher/touch/k;

    sput-object v0, Lcom/zui/launcher/touch/PagedOrientationHandler;->CANVAS_TRANSLATE:Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;

    sget-object v0, Lcom/zui/launcher/touch/b;->a:Lcom/zui/launcher/touch/b;

    sput-object v0, Lcom/zui/launcher/touch/PagedOrientationHandler;->MATRIX_POST_TRANSLATE:Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;

    return-void
.end method


# virtual methods
.method public abstract adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V
.end method

.method public abstract getAdditionalInsetForTaskMenu(F)Landroid/graphics/PointF;
.end method

.method public abstract getCenterForPage(Landroid/view/View;Landroid/graphics/Rect;)I
.end method

.method public abstract getChildBounds(Landroid/view/View;IIZ)Lcom/zui/launcher/touch/PagedOrientationHandler$ChildBounds;
.end method

.method public abstract getChildStart(Landroid/view/View;)I
.end method

.method public abstract getChildStartWithTranslation(Landroid/view/View;)F
.end method

.method public abstract getClearAllSidePadding(Landroid/view/View;Z)I
.end method

.method public abstract getDegreesRotated()F
.end method

.method public abstract getDistanceToBottomOfRect(Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)I
.end method

.method public abstract getEnd(Landroid/graphics/RectF;)F
.end method

.method public abstract getMeasuredSize(Landroid/view/View;)I
.end method

.method public abstract getPrimaryDirection(Landroid/view/MotionEvent;I)F
.end method

.method public abstract getPrimaryScale(Landroid/view/View;)F
.end method

.method public abstract getPrimaryScroll(Landroid/view/View;)I
.end method

.method public abstract getPrimarySize(Landroid/graphics/RectF;)F
.end method

.method public abstract getPrimarySize(Landroid/view/View;)I
.end method

.method public abstract getPrimaryTranslationDirectionFactor()I
.end method

.method public abstract getPrimaryValue(FF)F
.end method

.method public abstract getPrimaryValue(II)I
.end method

.method public abstract getPrimaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getPrimaryVelocity(Landroid/view/VelocityTracker;I)F
.end method

.method public abstract getPrimaryViewTranslate()Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecentsRtlSetting(Landroid/content/res/Resources;)Z
.end method

.method public abstract getRotation()I
.end method

.method public abstract getScrollOffsetEnd(Landroid/view/View;Landroid/graphics/Rect;)I
.end method

.method public abstract getScrollOffsetStart(Landroid/view/View;Landroid/graphics/Rect;)I
.end method

.method public abstract getSecondaryDimension(Landroid/view/View;)I
.end method

.method public abstract getSecondaryTranslationDirectionFactor()I
.end method

.method public abstract getSecondaryValue(FF)F
.end method

.method public abstract getSecondaryValue(II)I
.end method

.method public abstract getSecondaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getSecondaryViewTranslate()Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSplitAnimationTranslation(ILcom/zui/launcher/DeviceProfile;)I
.end method

.method public abstract getSplitPositionOptions(Lcom/zui/launcher/DeviceProfile;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/DeviceProfile;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSplitSelectTaskOffset(Landroid/util/FloatProperty;Landroid/util/FloatProperty;Lcom/zui/launcher/DeviceProfile;)Landroid/util/FloatProperty;
.end method

.method public abstract getSplitTaskViewDismissDirection(Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;Lcom/zui/launcher/DeviceProfile;)I
.end method

.method public abstract getSplitTranslationDirectionFactor(I)I
.end method

.method public abstract getStart(Landroid/graphics/RectF;)F
.end method

.method public abstract getTaskDragDisplacementFactor(Z)I
.end method

.method public abstract getTaskMenuWidth(Landroid/view/View;)I
.end method

.method public abstract getTaskMenuX(FLandroid/view/View;I)F
.end method

.method public abstract getTaskMenuY(FLandroid/view/View;I)F
.end method

.method public abstract getUpDirection(Z)I
.end method

.method public abstract getUpDownSwipeDirection()Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;
.end method

.method public abstract isGoingUp(FZ)Z
.end method

.method public abstract isLayoutNaturalToLauncher()Z
.end method

.method public abstract measureGroupedTaskViewThumbnailBounds(Landroid/view/View;Landroid/view/View;IILcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;Lcom/zui/launcher/DeviceProfile;)V
.end method

.method public abstract set(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction<",
            "TT;>;F)V"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction<",
            "TT;>;I)V"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction<",
            "TT;>;II)V"
        }
    .end annotation
.end method

.method public abstract setLayoutParamsForTaskMenuOptionItem(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout;Lcom/zui/launcher/DeviceProfile;)V
.end method

.method public abstract setMaxScroll(Landroid/view/accessibility/AccessibilityEvent;I)V
.end method

.method public abstract setSecondary(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction<",
            "TT;>;F)V"
        }
    .end annotation
.end method

.method public abstract setSplitIconParams(Landroid/view/View;Landroid/view/View;IIIZLcom/zui/launcher/DeviceProfile;Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;)V
.end method

.method public abstract setTaskMenuAroundTaskView(Landroid/widget/LinearLayout;F)V
.end method

.method public abstract setTaskOptionsMenuLayoutOrientation(Lcom/zui/launcher/DeviceProfile;Landroid/widget/LinearLayout;)V
.end method
