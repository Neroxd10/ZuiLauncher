.class Lcom/zui/launcher/widget/LauncherAppWidgetHostView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView$a;->a:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView$a;->a:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->switchToErrorView()V

    return-void
.end method
