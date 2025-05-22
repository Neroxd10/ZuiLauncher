.class public final synthetic Lcom/zui/launcher/views/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/Launcher;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/zui/launcher/ItemInfo;

.field public final synthetic e:Lcom/zui/launcher/views/FloatingIconView$h;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/Launcher;Landroid/view/View;ZLcom/zui/launcher/ItemInfo;Lcom/zui/launcher/views/FloatingIconView$h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/views/j;->a:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/views/j;->b:Landroid/view/View;

    iput-boolean p3, p0, Lcom/zui/launcher/views/j;->c:Z

    iput-object p4, p0, Lcom/zui/launcher/views/j;->d:Lcom/zui/launcher/ItemInfo;

    iput-object p5, p0, Lcom/zui/launcher/views/j;->e:Lcom/zui/launcher/views/FloatingIconView$h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/views/j;->a:Lcom/zui/launcher/Launcher;

    iget-object v1, p0, Lcom/zui/launcher/views/j;->b:Landroid/view/View;

    iget-boolean v2, p0, Lcom/zui/launcher/views/j;->c:Z

    iget-object v3, p0, Lcom/zui/launcher/views/j;->d:Lcom/zui/launcher/ItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/views/j;->e:Lcom/zui/launcher/views/FloatingIconView$h;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/zui/launcher/views/FloatingIconView;->t(Lcom/zui/launcher/Launcher;Landroid/view/View;ZLcom/zui/launcher/ItemInfo;Lcom/zui/launcher/views/FloatingIconView$h;)V

    return-void
.end method
