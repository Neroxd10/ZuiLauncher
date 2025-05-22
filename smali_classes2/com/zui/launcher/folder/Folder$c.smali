.class Lcom/zui/launcher/folder/Folder$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/Folder;->getViewForInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/WorkspaceItemInfo;

.field final synthetic b:Lcom/zui/launcher/folder/Folder;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/Folder;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder$c;->b:Lcom/zui/launcher/folder/Folder;

    iput-object p2, p0, Lcom/zui/launcher/folder/Folder$c;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$c;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
