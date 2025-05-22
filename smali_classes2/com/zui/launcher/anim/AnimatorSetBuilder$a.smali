.class Lcom/zui/launcher/anim/AnimatorSetBuilder$a;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/anim/AnimatorSetBuilder;


# direct methods
.method constructor <init>(Lcom/zui/launcher/anim/AnimatorSetBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder$a;->a:Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder$a;->a:Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-static {p1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->a(Lcom/zui/launcher/anim/AnimatorSetBuilder;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder$a;->a:Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-static {p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->a(Lcom/zui/launcher/anim/AnimatorSetBuilder;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
