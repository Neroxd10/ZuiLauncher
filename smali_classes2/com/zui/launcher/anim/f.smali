.class public final synthetic Lcom/zui/launcher/anim/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/anim/FlingSpringAnim;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field public final synthetic d:F

.field public final synthetic e:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/anim/FlingSpringAnim;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/anim/f;->a:Lcom/zui/launcher/anim/FlingSpringAnim;

    iput-object p2, p0, Lcom/zui/launcher/anim/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/zui/launcher/anim/f;->c:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iput p4, p0, Lcom/zui/launcher/anim/f;->d:F

    iput-object p5, p0, Lcom/zui/launcher/anim/f;->e:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 9

    iget-object v0, p0, Lcom/zui/launcher/anim/f;->a:Lcom/zui/launcher/anim/FlingSpringAnim;

    iget-object v1, p0, Lcom/zui/launcher/anim/f;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/zui/launcher/anim/f;->c:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget v3, p0, Lcom/zui/launcher/anim/f;->d:F

    iget-object v4, p0, Lcom/zui/launcher/anim/f;->e:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/anim/FlingSpringAnim;->a(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
