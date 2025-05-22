.class Lcom/zui/launcher/folder/FolderAnimationManager$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/FolderAnimationManager;->getAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/folder/FolderAnimationManager;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/FolderAnimationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager$a;->a:Lcom/zui/launcher/folder/FolderAnimationManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager$a;->a:Lcom/zui/launcher/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/zui/launcher/folder/FolderAnimationManager;->a(Lcom/zui/launcher/folder/FolderAnimationManager;)Lcom/zui/launcher/folder/Folder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager$a;->a:Lcom/zui/launcher/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/zui/launcher/folder/FolderAnimationManager;->a(Lcom/zui/launcher/folder/FolderAnimationManager;)Lcom/zui/launcher/folder/Folder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager$a;->a:Lcom/zui/launcher/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/zui/launcher/folder/FolderAnimationManager;->a(Lcom/zui/launcher/folder/FolderAnimationManager;)Lcom/zui/launcher/folder/Folder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationZ(F)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderAnimationManager$a;->a:Lcom/zui/launcher/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/zui/launcher/folder/FolderAnimationManager;->a(Lcom/zui/launcher/folder/FolderAnimationManager;)Lcom/zui/launcher/folder/Folder;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderAnimationManager$a;->a:Lcom/zui/launcher/folder/FolderAnimationManager;

    invoke-static {p0}, Lcom/zui/launcher/folder/FolderAnimationManager;->a(Lcom/zui/launcher/folder/FolderAnimationManager;)Lcom/zui/launcher/folder/Folder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setScaleY(F)V

    return-void
.end method
