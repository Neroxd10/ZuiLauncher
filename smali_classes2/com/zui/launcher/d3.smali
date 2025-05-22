.class public final synthetic Lcom/zui/launcher/d3;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/Workspace;

.field public final synthetic b:Lcom/zui/launcher/FolderInfo;

.field public final synthetic c:Lcom/zui/launcher/folder/FolderIcon;

.field public final synthetic d:Lcom/zui/launcher/category/AllAppsCategory;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/FolderInfo;Lcom/zui/launcher/folder/FolderIcon;Lcom/zui/launcher/category/AllAppsCategory;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/d3;->a:Lcom/zui/launcher/Workspace;

    iput-object p2, p0, Lcom/zui/launcher/d3;->b:Lcom/zui/launcher/FolderInfo;

    iput-object p3, p0, Lcom/zui/launcher/d3;->c:Lcom/zui/launcher/folder/FolderIcon;

    iput-object p4, p0, Lcom/zui/launcher/d3;->d:Lcom/zui/launcher/category/AllAppsCategory;

    iput p5, p0, Lcom/zui/launcher/d3;->e:I

    iput p6, p0, Lcom/zui/launcher/d3;->f:I

    iput-object p7, p0, Lcom/zui/launcher/d3;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/d3;->a:Lcom/zui/launcher/Workspace;

    iget-object v1, p0, Lcom/zui/launcher/d3;->b:Lcom/zui/launcher/FolderInfo;

    iget-object v2, p0, Lcom/zui/launcher/d3;->c:Lcom/zui/launcher/folder/FolderIcon;

    iget-object v3, p0, Lcom/zui/launcher/d3;->d:Lcom/zui/launcher/category/AllAppsCategory;

    iget v4, p0, Lcom/zui/launcher/d3;->e:I

    iget v5, p0, Lcom/zui/launcher/d3;->f:I

    iget-object v6, p0, Lcom/zui/launcher/d3;->g:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/Workspace;->l0(Lcom/zui/launcher/FolderInfo;Lcom/zui/launcher/folder/FolderIcon;Lcom/zui/launcher/category/AllAppsCategory;IILjava/lang/String;)V

    return-void
.end method
