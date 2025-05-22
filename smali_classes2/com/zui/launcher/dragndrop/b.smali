.class public final synthetic Lcom/zui/launcher/dragndrop/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/dragndrop/AddItemActivity;

.field public final synthetic b:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/dragndrop/AddItemActivity;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/b;->a:Lcom/zui/launcher/dragndrop/AddItemActivity;

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/b;->b:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/b;->a:Lcom/zui/launcher/dragndrop/AddItemActivity;

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/b;->b:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/dragndrop/AddItemActivity;->j(Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)Lcom/zui/launcher/model/WidgetItem;

    move-result-object p0

    return-object p0
.end method
