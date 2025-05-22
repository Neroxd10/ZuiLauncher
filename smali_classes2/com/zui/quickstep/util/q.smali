.class public final synthetic Lcom/zui/quickstep/util/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:[Landroid/content/Intent;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;[Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/q;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/quickstep/util/q;->b:[Landroid/content/Intent;

    iput-object p3, p0, Lcom/zui/quickstep/util/q;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/util/q;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/quickstep/util/q;->b:[Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/quickstep/util/q;->c:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/zui/quickstep/util/ImageActionUtils;->g(Landroid/content/Context;[Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
