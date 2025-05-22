.class Lcom/zui/launcher/folder/Folder$l;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/Folder;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/folder/Folder;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder$l;->a:Lcom/zui/launcher/folder/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$l;->a:Lcom/zui/launcher/folder/Folder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/launcher/folder/Folder;->h(Lcom/zui/launcher/folder/Folder;Z)V

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$l;->a:Lcom/zui/launcher/folder/Folder;

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->i(Lcom/zui/launcher/folder/Folder;)V

    return-void
.end method
