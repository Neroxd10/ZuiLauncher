.class Lcom/zui/launcher/views/FloatingIconView$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/views/FloatingIconView;->k(Landroid/view/View;Lcom/zui/launcher/dragndrop/DragLayer;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/folder/FolderIcon;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/zui/launcher/views/FloatingIconView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/views/FloatingIconView;Lcom/zui/launcher/folder/FolderIcon;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/FloatingIconView$g;->c:Lcom/zui/launcher/views/FloatingIconView;

    iput-object p2, p0, Lcom/zui/launcher/views/FloatingIconView$g;->a:Lcom/zui/launcher/folder/FolderIcon;

    iput-object p3, p0, Lcom/zui/launcher/views/FloatingIconView$g;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/views/FloatingIconView$g;->a:Lcom/zui/launcher/folder/FolderIcon;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/folder/FolderIcon;->forceHideDot(Z)V

    iget-object p0, p0, Lcom/zui/launcher/views/FloatingIconView$g;->b:Landroid/view/View;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/zui/launcher/views/FloatingIconView;->A(Landroid/view/View;Z)V

    return-void
.end method
