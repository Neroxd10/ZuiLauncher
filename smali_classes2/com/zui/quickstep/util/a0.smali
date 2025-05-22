.class public final synthetic Lcom/zui/quickstep/util/a0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/util/RectFSpringAnim;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/util/RectFSpringAnim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/a0;->a:Lcom/zui/quickstep/util/RectFSpringAnim;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/a0;->a:Lcom/zui/quickstep/util/RectFSpringAnim;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/quickstep/util/RectFSpringAnim;->i(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
