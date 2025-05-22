.class public final synthetic Lcom/zui/launcher/util/d0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/ViewPool;

.field public final synthetic b:I

.field public final synthetic c:Landroid/view/LayoutInflater;

.field public final synthetic d:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/ViewPool;ILandroid/view/LayoutInflater;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/d0;->a:Lcom/zui/launcher/util/ViewPool;

    iput p2, p0, Lcom/zui/launcher/util/d0;->b:I

    iput-object p3, p0, Lcom/zui/launcher/util/d0;->c:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/zui/launcher/util/d0;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/util/d0;->a:Lcom/zui/launcher/util/ViewPool;

    iget v1, p0, Lcom/zui/launcher/util/d0;->b:I

    iget-object v2, p0, Lcom/zui/launcher/util/d0;->c:Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/zui/launcher/util/d0;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Lcom/zui/launcher/util/ViewPool;->e(ILandroid/view/LayoutInflater;Landroid/os/Handler;)V

    return-void
.end method
