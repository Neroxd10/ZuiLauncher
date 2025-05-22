.class public final synthetic Lcom/zui/launcher/model/v0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/ModelWriter$ModelVerifier;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/ModelWriter$ModelVerifier;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/v0;->a:Lcom/zui/launcher/model/ModelWriter$ModelVerifier;

    iput p2, p0, Lcom/zui/launcher/model/v0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/v0;->a:Lcom/zui/launcher/model/ModelWriter$ModelVerifier;

    iget p0, p0, Lcom/zui/launcher/model/v0;->b:I

    invoke-virtual {v0, p0}, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;->a(I)V

    return-void
.end method
