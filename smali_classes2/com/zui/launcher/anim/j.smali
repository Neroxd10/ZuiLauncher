.class public final synthetic Lcom/zui/launcher/anim/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Landroid/view/animation/Interpolator;

.field public final synthetic c:Landroid/view/animation/Interpolator;


# direct methods
.method public synthetic constructor <init>(FLandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/anim/j;->a:F

    iput-object p2, p0, Lcom/zui/launcher/anim/j;->b:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/zui/launcher/anim/j;->c:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    iget v0, p0, Lcom/zui/launcher/anim/j;->a:F

    iget-object v1, p0, Lcom/zui/launcher/anim/j;->b:Landroid/view/animation/Interpolator;

    iget-object p0, p0, Lcom/zui/launcher/anim/j;->c:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p0, p1}, Lcom/zui/launcher/anim/Interpolators$OvershootParams;->a(FLandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;F)F

    move-result p0

    return p0
.end method
