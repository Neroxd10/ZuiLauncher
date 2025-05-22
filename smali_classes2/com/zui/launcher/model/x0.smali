.class public final synthetic Lcom/zui/launcher/model/x0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Iterable;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Iterable;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/x0;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/zui/launcher/model/x0;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/x0;->a:Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/zui/launcher/model/x0;->b:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/zui/launcher/model/ModelWriter;->s(Ljava/lang/Iterable;Landroid/content/Context;)V

    return-void
.end method
