.class Lcom/zui/launcher/ActiveIconView$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/ActiveIconView;->d([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/ActiveIconView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/ActiveIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/ActiveIconView$c;->a:Lcom/zui/launcher/ActiveIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView$c;->a:Lcom/zui/launcher/ActiveIconView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/ActiveIconView;->c(Lcom/zui/launcher/ActiveIconView;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
