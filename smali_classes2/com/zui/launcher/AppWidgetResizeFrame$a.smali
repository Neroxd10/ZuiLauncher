.class Lcom/zui/launcher/AppWidgetResizeFrame$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/AppWidgetResizeFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/AppWidgetResizeFrame;


# direct methods
.method constructor <init>(Lcom/zui/launcher/AppWidgetResizeFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame$a;->a:Lcom/zui/launcher/AppWidgetResizeFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame$a;->a:Lcom/zui/launcher/AppWidgetResizeFrame;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    iget-object p0, p0, Lcom/zui/launcher/AppWidgetResizeFrame$a;->a:Lcom/zui/launcher/AppWidgetResizeFrame;

    invoke-static {p0}, Lcom/zui/launcher/AppWidgetResizeFrame;->a(Lcom/zui/launcher/AppWidgetResizeFrame;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    return-void
.end method
