.class abstract Lcom/zui/launcher/graphics/IconShape$c;
.super Lcom/zui/launcher/graphics/IconShape;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/graphics/IconShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/graphics/IconShape;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/graphics/IconShape$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/graphics/IconShape$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lcom/zui/launcher/views/ClipPathView;",
            ">(TT;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "FZ)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    new-instance v6, Lcom/zui/launcher/graphics/IconShape$c$a;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/graphics/IconShape$c;->getStartRadius(Landroid/graphics/Rect;)F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/graphics/IconShape$c$a;-><init>(Lcom/zui/launcher/graphics/IconShape$c;FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v6, p1, p5}, Lcom/zui/launcher/anim/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getStartRadius(Landroid/graphics/Rect;)F
.end method
