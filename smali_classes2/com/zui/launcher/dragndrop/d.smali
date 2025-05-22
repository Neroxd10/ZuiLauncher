.class public final synthetic Lcom/zui/launcher/dragndrop/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/dragndrop/AddItemActivity2;

.field public final synthetic b:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/dragndrop/AddItemActivity2;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/d;->a:Lcom/zui/launcher/dragndrop/AddItemActivity2;

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/d;->b:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/d;->a:Lcom/zui/launcher/dragndrop/AddItemActivity2;

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/d;->b:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/dragndrop/AddItemActivity2;->f(Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)Lcom/zui/launcher/model/WidgetItem;

    move-result-object p0

    return-object p0
.end method
