.class public final synthetic Lcom/zui/launcher/util/e0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/ViewPool;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/ViewPool;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/e0;->a:Lcom/zui/launcher/util/ViewPool;

    iput-object p2, p0, Lcom/zui/launcher/util/e0;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/e0;->a:Lcom/zui/launcher/util/ViewPool;

    iget-object p0, p0, Lcom/zui/launcher/util/e0;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/ViewPool;->d(Landroid/view/View;)V

    return-void
.end method
