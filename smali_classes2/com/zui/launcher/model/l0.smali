.class public final synthetic Lcom/zui/launcher/model/l0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/LoaderCursor;

.field public final synthetic b:Lcom/zui/launcher/WorkspaceItemInfo;

.field public final synthetic c:Lcom/zui/launcher/icons/LauncherIcons;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/LoaderCursor;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/LauncherIcons;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/l0;->a:Lcom/zui/launcher/model/LoaderCursor;

    iput-object p2, p0, Lcom/zui/launcher/model/l0;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iput-object p3, p0, Lcom/zui/launcher/model/l0;->c:Lcom/zui/launcher/icons/LauncherIcons;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/model/l0;->a:Lcom/zui/launcher/model/LoaderCursor;

    iget-object v1, p0, Lcom/zui/launcher/model/l0;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/model/l0;->c:Lcom/zui/launcher/icons/LauncherIcons;

    invoke-static {v0, v1, p0}, Lcom/zui/launcher/model/LoaderTask;->k(Lcom/zui/launcher/model/LoaderCursor;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/LauncherIcons;)Lcom/zui/launcher/ItemInfoWithIcon;

    move-result-object p0

    return-object p0
.end method
