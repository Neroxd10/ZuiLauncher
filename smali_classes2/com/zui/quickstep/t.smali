.class public final synthetic Lcom/zui/quickstep/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/ImageActionsApi;

.field public final synthetic b:Landroid/graphics/Rect;

.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/ImageActionsApi;Landroid/graphics/Rect;Landroid/content/Intent;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/t;->a:Lcom/zui/quickstep/ImageActionsApi;

    iput-object p2, p0, Lcom/zui/quickstep/t;->b:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/zui/quickstep/t;->c:Landroid/content/Intent;

    iput-boolean p4, p0, Lcom/zui/quickstep/t;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/t;->a:Lcom/zui/quickstep/ImageActionsApi;

    iget-object v1, p0, Lcom/zui/quickstep/t;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/zui/quickstep/t;->c:Landroid/content/Intent;

    iget-boolean p0, p0, Lcom/zui/quickstep/t;->d:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/zui/quickstep/ImageActionsApi;->c(Landroid/graphics/Rect;Landroid/content/Intent;Z)V

    return-void
.end method
