.class public final synthetic Lcom/zui/launcher/m2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/WorkspaceItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/m2;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/m2;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->n(Lcom/zui/launcher/WorkspaceItemInfo;)Lcom/zui/launcher/ItemInfoWithIcon;

    return-object p0
.end method
