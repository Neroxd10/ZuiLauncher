.class Lcom/zui/launcher/CellLayout$j$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/CellLayout$j;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/CellLayout$j;


# direct methods
.method constructor <init>(Lcom/zui/launcher/CellLayout$j;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/CellLayout$j$a;->a:Lcom/zui/launcher/CellLayout$j;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$j$a;->a:Lcom/zui/launcher/CellLayout$j;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/CellLayout$j;->f(Z)V

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$j$a;->a:Lcom/zui/launcher/CellLayout$j;

    iput-boolean v0, p0, Lcom/zui/launcher/CellLayout$j;->i:Z

    return-void
.end method
