.class public final synthetic Lcom/zui/launcher/model/y0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/ModelWriter;

.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:Lcom/zui/launcher/model/ModelWriter$ModelVerifier;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/ModelWriter;Ljava/lang/Iterable;Lcom/zui/launcher/model/ModelWriter$ModelVerifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/y0;->a:Lcom/zui/launcher/model/ModelWriter;

    iput-object p2, p0, Lcom/zui/launcher/model/y0;->b:Ljava/lang/Iterable;

    iput-object p3, p0, Lcom/zui/launcher/model/y0;->c:Lcom/zui/launcher/model/ModelWriter$ModelVerifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/model/y0;->a:Lcom/zui/launcher/model/ModelWriter;

    iget-object v1, p0, Lcom/zui/launcher/model/y0;->b:Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/zui/launcher/model/y0;->c:Lcom/zui/launcher/model/ModelWriter$ModelVerifier;

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/model/ModelWriter;->o(Ljava/lang/Iterable;Lcom/zui/launcher/model/ModelWriter$ModelVerifier;)V

    return-void
.end method
