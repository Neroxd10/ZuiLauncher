.class Lcom/zui/quickstep/RecentsActivity$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/RecentsActivity;->j()Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/RecentsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/RecentsActivity$c;->a:Lcom/zui/quickstep/RecentsActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsActivity$c;->a:Lcom/zui/quickstep/RecentsActivity;

    invoke-static {p0}, Lcom/zui/quickstep/RecentsActivity;->h(Lcom/zui/quickstep/RecentsActivity;)Lcom/zui/quickstep/fallback/FallbackRecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->resetTaskVisuals()V

    return-void
.end method
