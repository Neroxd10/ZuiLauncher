.class public Lcom/zui/launcher/graphics/Scrim;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SCRIM_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/zui/launcher/graphics/Scrim;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mRoot:Landroid/view/View;

.field protected mScrimAlpha:I

.field protected mScrimColor:I

.field protected mScrimProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/graphics/Scrim$a;

    const-string v1, "scrimProgress"

    invoke-direct {v0, v1}, Lcom/zui/launcher/graphics/Scrim$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/graphics/Scrim;->mScrimAlpha:I

    iput-object p1, p0, Lcom/zui/launcher/graphics/Scrim;->mRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060393

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/graphics/Scrim;->mScrimColor:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/graphics/Scrim;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/graphics/Scrim;->b(F)V

    return-void
.end method

.method private b(F)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/graphics/Scrim;->mScrimProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/zui/launcher/graphics/Scrim;->mScrimProgress:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/graphics/Scrim;->mScrimAlpha:I

    iget-object p0, p0, Lcom/zui/launcher/graphics/Scrim;->mRoot:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/graphics/Scrim;->mScrimColor:I

    iget p0, p0, Lcom/zui/launcher/graphics/Scrim;->mScrimAlpha:I

    invoke-static {v0, p0}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method
