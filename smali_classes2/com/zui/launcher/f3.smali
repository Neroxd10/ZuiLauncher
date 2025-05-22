.class public final synthetic Lcom/zui/launcher/f3;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/ModelWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/ModelWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/f3;->a:Lcom/zui/launcher/model/ModelWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/f3;->a:Lcom/zui/launcher/model/ModelWriter;

    invoke-virtual {p0}, Lcom/zui/launcher/model/ModelWriter;->commitDelete()V

    return-void
.end method
