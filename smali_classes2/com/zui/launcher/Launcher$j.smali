.class Lcom/zui/launcher/Launcher$j;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->finishFirstPageBind(Lcom/zui/launcher/util/ViewOnDrawExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/util/ViewOnDrawExecutor;

.field final synthetic b:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/util/ViewOnDrawExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$j;->b:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/Launcher$j;->a:Lcom/zui/launcher/util/ViewOnDrawExecutor;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher$j;->a:Lcom/zui/launcher/util/ViewOnDrawExecutor;

    invoke-virtual {p0}, Lcom/zui/launcher/util/ViewOnDrawExecutor;->onLoadAnimationCompleted()V

    return-void
.end method
