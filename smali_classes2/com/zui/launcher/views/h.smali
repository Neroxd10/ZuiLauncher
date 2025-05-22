.class public final synthetic Lcom/zui/launcher/views/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/folder/FolderIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/folder/FolderIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/views/h;->a:Lcom/zui/launcher/folder/FolderIcon;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/h;->a:Lcom/zui/launcher/folder/FolderIcon;

    invoke-static {p0, p1}, Lcom/zui/launcher/views/FloatingIconView;->s(Lcom/zui/launcher/folder/FolderIcon;Landroid/animation/ValueAnimator;)V

    return-void
.end method
