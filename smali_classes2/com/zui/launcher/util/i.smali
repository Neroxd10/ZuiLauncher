.class public final synthetic Lcom/zui/launcher/util/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/DisplayController;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/DisplayController;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/i;->a:Lcom/zui/launcher/util/DisplayController;

    iput-object p2, p0, Lcom/zui/launcher/util/i;->b:Landroid/content/Context;

    iput p3, p0, Lcom/zui/launcher/util/i;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/util/i;->a:Lcom/zui/launcher/util/DisplayController;

    iget-object v1, p0, Lcom/zui/launcher/util/i;->b:Landroid/content/Context;

    iget p0, p0, Lcom/zui/launcher/util/i;->c:I

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/util/DisplayController;->g(Landroid/content/Context;I)V

    return-void
.end method
