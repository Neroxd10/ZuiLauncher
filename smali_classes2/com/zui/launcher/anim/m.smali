.class public final synthetic Lcom/zui/launcher/anim/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:Landroid/view/animation/Interpolator;


# direct methods
.method public synthetic constructor <init>(FFLandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/anim/m;->a:F

    iput p2, p0, Lcom/zui/launcher/anim/m;->b:F

    iput-object p3, p0, Lcom/zui/launcher/anim/m;->c:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    iget v0, p0, Lcom/zui/launcher/anim/m;->a:F

    iget v1, p0, Lcom/zui/launcher/anim/m;->b:F

    iget-object p0, p0, Lcom/zui/launcher/anim/m;->c:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p0, p1}, Lcom/zui/launcher/anim/Interpolators;->a(FFLandroid/view/animation/Interpolator;F)F

    move-result p0

    return p0
.end method
