.class Lcom/zui/launcher/folder/Folder$j;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/Folder;->w(Landroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/zui/launcher/CellLayout;

.field final synthetic c:Landroid/animation/AnimatorSet;

.field final synthetic d:Z

.field final synthetic e:Lcom/zui/launcher/folder/Folder;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/Folder;ZLcom/zui/launcher/CellLayout;Landroid/animation/AnimatorSet;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder$j;->e:Lcom/zui/launcher/folder/Folder;

    iput-boolean p2, p0, Lcom/zui/launcher/folder/Folder$j;->a:Z

    iput-object p3, p0, Lcom/zui/launcher/folder/Folder$j;->b:Lcom/zui/launcher/CellLayout;

    iput-object p4, p0, Lcom/zui/launcher/folder/Folder$j;->c:Landroid/animation/AnimatorSet;

    iput-boolean p5, p0, Lcom/zui/launcher/folder/Folder$j;->d:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lcom/zui/launcher/folder/Folder$j;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$j;->b:Lcom/zui/launcher/CellLayout;

    iget-boolean v0, p0, Lcom/zui/launcher/folder/Folder$j;->d:Z

    invoke-virtual {p1, v0}, Lcom/zui/launcher/CellLayout;->enableHardwareLayer(Z)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$j;->e:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p1}, Lcom/zui/launcher/AbstractFloatingView;->isOpen()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$j;->e:Lcom/zui/launcher/folder/Folder;

    iget-object p1, p1, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$j;->e:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->getItemCount()I

    move-result p1

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder$j;->e:Lcom/zui/launcher/folder/Folder;

    iget-object v1, v1, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/zui/launcher/folder/FolderPagedView;->itemsPerPage()I

    move-result v1

    if-le p1, v1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$j;->e:Lcom/zui/launcher/folder/Folder;

    invoke-static {p1}, Lcom/zui/launcher/folder/Folder;->d(Lcom/zui/launcher/folder/Folder;)Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$j;->e:Lcom/zui/launcher/folder/Folder;

    invoke-static {p1}, Lcom/zui/launcher/folder/Folder;->e(Lcom/zui/launcher/folder/Folder;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$j;->e:Lcom/zui/launcher/folder/Folder;

    iget-object p1, p1, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/Launcher;->playFolderAnimExtraOutPro(Z)V

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$j;->e:Lcom/zui/launcher/folder/Folder;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/folder/Folder;->c(Lcom/zui/launcher/folder/Folder;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lcom/zui/launcher/folder/Folder$j;->a:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$j;->b:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/CellLayout;->enableHardwareLayer(Z)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$j;->e:Lcom/zui/launcher/folder/Folder;

    iput v0, p1, Lcom/zui/launcher/folder/Folder;->x:I

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder$j;->c:Landroid/animation/AnimatorSet;

    invoke-static {p1, v0}, Lcom/zui/launcher/folder/Folder;->c(Lcom/zui/launcher/folder/Folder;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$j;->e:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p1}, Lcom/zui/launcher/AbstractFloatingView;->isOpen()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$j;->e:Lcom/zui/launcher/folder/Folder;

    iget-object p1, p1, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$j;->e:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->getItemCount()I

    move-result p1

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder$j;->e:Lcom/zui/launcher/folder/Folder;

    iget-object v1, v1, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/zui/launcher/folder/FolderPagedView;->itemsPerPage()I

    move-result v1

    if-le p1, v1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$j;->e:Lcom/zui/launcher/folder/Folder;

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->d(Lcom/zui/launcher/folder/Folder;)Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
