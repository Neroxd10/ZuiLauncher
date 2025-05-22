.class public final synthetic Lcom/zui/launcher/model/w0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/ModelWriter;

.field public final synthetic b:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/ModelWriter;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/w0;->a:Lcom/zui/launcher/model/ModelWriter;

    iput-object p2, p0, Lcom/zui/launcher/model/w0;->b:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/w0;->a:Lcom/zui/launcher/model/ModelWriter;

    iget-object p0, p0, Lcom/zui/launcher/model/w0;->b:Ljava/lang/Iterable;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/model/ModelWriter;->m(Ljava/lang/Iterable;)V

    return-void
.end method
