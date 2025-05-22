.class Lcom/zui/launcher/folder/FolderIcon$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/FolderIcon;->animateDotScale([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/folder/FolderIcon;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/FolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon$d;->a:Lcom/zui/launcher/folder/FolderIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon$d;->a:Lcom/zui/launcher/folder/FolderIcon;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/folder/FolderIcon;->d(Lcom/zui/launcher/folder/FolderIcon;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
