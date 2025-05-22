.class Lcom/zui/launcher/folder/FolderPagedView$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/FolderPagedView;->realTimeReorderAfterRemove(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/zui/launcher/folder/FolderPagedView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/FolderPagedView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderPagedView$e;->b:Lcom/zui/launcher/folder/FolderPagedView;

    iput-object p2, p0, Lcom/zui/launcher/folder/FolderPagedView$e;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderPagedView$e;->b:Lcom/zui/launcher/folder/FolderPagedView;

    iget-object v0, v0, Lcom/zui/launcher/folder/FolderPagedView;->q:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderPagedView$e;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderPagedView$e;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderPagedView$e;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderPagedView$e;->b:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-static {p0}, Lcom/zui/launcher/folder/FolderPagedView;->s(Lcom/zui/launcher/folder/FolderPagedView;)Lcom/zui/launcher/folder/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->saveOrderAfterRemove()V

    return-void
.end method
