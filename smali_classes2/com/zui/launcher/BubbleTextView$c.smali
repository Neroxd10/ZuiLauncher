.class Lcom/zui/launcher/BubbleTextView$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/BubbleTextView;->c([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/BubbleTextView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/BubbleTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/BubbleTextView$c;->a:Lcom/zui/launcher/BubbleTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/BubbleTextView$c;->a:Lcom/zui/launcher/BubbleTextView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/BubbleTextView;->b(Lcom/zui/launcher/BubbleTextView;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
