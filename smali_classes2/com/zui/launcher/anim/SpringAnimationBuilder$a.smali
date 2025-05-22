.class Lcom/zui/launcher/anim/SpringAnimationBuilder$a;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/anim/SpringAnimationBuilder;->build(Ljava/lang/Object;Landroid/util/FloatProperty;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/FloatProperty;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/zui/launcher/anim/SpringAnimationBuilder;


# direct methods
.method constructor <init>(Lcom/zui/launcher/anim/SpringAnimationBuilder;Landroid/util/FloatProperty;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder$a;->c:Lcom/zui/launcher/anim/SpringAnimationBuilder;

    iput-object p2, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder$a;->a:Landroid/util/FloatProperty;

    iput-object p3, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder$a;->a:Landroid/util/FloatProperty;

    iget-object v0, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder$a;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder$a;->c:Lcom/zui/launcher/anim/SpringAnimationBuilder;

    invoke-static {p0}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->a(Lcom/zui/launcher/anim/SpringAnimationBuilder;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method
