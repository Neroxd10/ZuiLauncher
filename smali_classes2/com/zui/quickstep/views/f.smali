.class public final synthetic Lcom/zui/quickstep/views/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/FloatingWidgetView;

.field public final synthetic b:Lcom/zui/launcher/dragndrop/DragLayer;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/FloatingWidgetView;Lcom/zui/launcher/dragndrop/DragLayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/f;->a:Lcom/zui/quickstep/views/FloatingWidgetView;

    iput-object p2, p0, Lcom/zui/quickstep/views/f;->b:Lcom/zui/launcher/dragndrop/DragLayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/f;->a:Lcom/zui/quickstep/views/FloatingWidgetView;

    iget-object p0, p0, Lcom/zui/quickstep/views/f;->b:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/FloatingWidgetView;->e(Lcom/zui/launcher/dragndrop/DragLayer;)V

    return-void
.end method
