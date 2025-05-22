.class public final synthetic Lcom/zui/launcher/globalsearch/utils/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/zui/launcher/WorkspaceItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/utils/c;->a:Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/utils/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/utils/c;->c:Lcom/zui/launcher/WorkspaceItemInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/utils/c;->a:Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/utils/c;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/utils/c;->c:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->e(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)V

    return-void
.end method
