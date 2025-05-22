.class Lcom/zui/quickstep/FallbackActivityControllerHelper$a$a;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/FallbackActivityControllerHelper$a;->createActivityAnimationToHome()Lcom/zui/launcher/anim/AnimatorPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/FallbackActivityControllerHelper$a;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/FallbackActivityControllerHelper$a;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$a$a;->a:Lcom/zui/quickstep/FallbackActivityControllerHelper$a;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$a$a;->a:Lcom/zui/quickstep/FallbackActivityControllerHelper$a;

    iget-object p0, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$a;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->startHome()V

    return-void
.end method
