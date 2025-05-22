.class public final synthetic Lcom/zui/quickstep/util/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/util/function/Supplier;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:Landroid/content/Intent;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/quickstep/util/m;->b:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/zui/quickstep/util/m;->c:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/zui/quickstep/util/m;->d:Landroid/content/Intent;

    iput-object p5, p0, Lcom/zui/quickstep/util/m;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/util/m;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/quickstep/util/m;->b:Ljava/util/function/Supplier;

    iget-object v2, p0, Lcom/zui/quickstep/util/m;->c:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/zui/quickstep/util/m;->d:Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/quickstep/util/m;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/zui/quickstep/util/ImageActionUtils;->h(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
