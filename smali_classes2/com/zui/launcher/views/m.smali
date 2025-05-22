.class public final synthetic Lcom/zui/launcher/views/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/views/FloatingIconView;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lcom/zui/launcher/dragndrop/DragLayer;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/views/FloatingIconView;ZZLandroid/view/View;Lcom/zui/launcher/dragndrop/DragLayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/views/m;->a:Lcom/zui/launcher/views/FloatingIconView;

    iput-boolean p2, p0, Lcom/zui/launcher/views/m;->b:Z

    iput-boolean p3, p0, Lcom/zui/launcher/views/m;->c:Z

    iput-object p4, p0, Lcom/zui/launcher/views/m;->d:Landroid/view/View;

    iput-object p5, p0, Lcom/zui/launcher/views/m;->e:Lcom/zui/launcher/dragndrop/DragLayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/views/m;->a:Lcom/zui/launcher/views/FloatingIconView;

    iget-boolean v1, p0, Lcom/zui/launcher/views/m;->b:Z

    iget-boolean v2, p0, Lcom/zui/launcher/views/m;->c:Z

    iget-object v3, p0, Lcom/zui/launcher/views/m;->d:Landroid/view/View;

    iget-object p0, p0, Lcom/zui/launcher/views/m;->e:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/zui/launcher/views/FloatingIconView;->u(Lcom/zui/launcher/views/FloatingIconView;ZZLandroid/view/View;Lcom/zui/launcher/dragndrop/DragLayer;)V

    return-void
.end method
