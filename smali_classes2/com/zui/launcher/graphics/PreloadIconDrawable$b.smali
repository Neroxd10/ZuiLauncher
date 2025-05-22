.class Lcom/zui/launcher/graphics/PreloadIconDrawable$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/graphics/PreloadIconDrawable;->j(FZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/graphics/PreloadIconDrawable;


# direct methods
.method constructor <init>(Lcom/zui/launcher/graphics/PreloadIconDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable$b;->a:Lcom/zui/launcher/graphics/PreloadIconDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable$b;->a:Lcom/zui/launcher/graphics/PreloadIconDrawable;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/zui/launcher/graphics/PreloadIconDrawable;->f(Lcom/zui/launcher/graphics/PreloadIconDrawable;Z)Z

    return-void
.end method
