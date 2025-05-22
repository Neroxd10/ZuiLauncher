.class Lcom/zui/launcher/globalsearch/VerticalScrollTextView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->setViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/VerticalScrollTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$a;->a:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$a;->a:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->a(Lcom/zui/launcher/globalsearch/VerticalScrollTextView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$a;->a:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->a(Lcom/zui/launcher/globalsearch/VerticalScrollTextView;Z)Z

    return-void
.end method
