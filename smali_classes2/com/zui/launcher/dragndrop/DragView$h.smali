.class Lcom/zui/launcher/dragndrop/DragView$h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/dragndrop/DragView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# static fields
.field private static final e:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/zui/launcher/dragndrop/DragView$h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final c:F

.field private d:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/dragndrop/DragView$h$a;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/zui/launcher/dragndrop/DragView$h$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/dragndrop/DragView$h;->e:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView$h;->a:Landroid/view/View;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/zui/launcher/dragndrop/DragView$h;->e:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    neg-float v1, p2

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p2

    check-cast p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x457a0000    # 4000.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragView$h;->b:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41000000    # 8.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragView$h;->c:F

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/dragndrop/DragView$h;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragView$h;->d:F

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/dragndrop/DragView$h;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragView$h;->d:F

    return p1
.end method

.method static synthetic c(Lcom/zui/launcher/dragndrop/DragView$h;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView$h;->a:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public d(F)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView$h;->b:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragView$h;->c:F

    neg-float v1, p0

    invoke-static {p1, v1, p0}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method
