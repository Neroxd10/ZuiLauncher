.class Lcom/zui/launcher/folder/e$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/e;-><init>(Lcom/zui/launcher/folder/PreviewItemManager;Lcom/zui/launcher/folder/f;IIIIILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/zui/launcher/folder/f;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/e;Ljava/lang/Runnable;Lcom/zui/launcher/folder/f;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/folder/e$b;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/zui/launcher/folder/e$b;->b:Lcom/zui/launcher/folder/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/folder/e$b;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/folder/e$b;->b:Lcom/zui/launcher/folder/f;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/folder/f;->e:Lcom/zui/launcher/folder/e;

    return-void
.end method
