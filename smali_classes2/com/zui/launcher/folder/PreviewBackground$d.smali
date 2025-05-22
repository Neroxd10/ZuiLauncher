.class Lcom/zui/launcher/folder/PreviewBackground$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/PreviewBackground;->fadeInBackgroundShadow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/folder/PreviewBackground;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/PreviewBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/PreviewBackground$d;->a:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewBackground$d;->a:Lcom/zui/launcher/folder/PreviewBackground;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/folder/PreviewBackground;->g(Lcom/zui/launcher/folder/PreviewBackground;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method
