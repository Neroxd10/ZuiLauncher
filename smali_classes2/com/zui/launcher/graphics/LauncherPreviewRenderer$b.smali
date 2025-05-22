.class Lcom/zui/launcher/graphics/LauncherPreviewRenderer$b;
.super Landroid/widget/TextClock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/graphics/LauncherPreviewRenderer;


# direct methods
.method constructor <init>(Lcom/zui/launcher/graphics/LauncherPreviewRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$b;->a:Lcom/zui/launcher/graphics/LauncherPreviewRenderer;

    invoke-direct {p0, p2, p3}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$b;->a:Lcom/zui/launcher/graphics/LauncherPreviewRenderer;

    invoke-static {p0}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer;->a(Lcom/zui/launcher/graphics/LauncherPreviewRenderer;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
