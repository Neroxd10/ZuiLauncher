.class public final synthetic Lcom/zui/launcher/model/f0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/ItemInstallQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/ItemInstallQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/f0;->a:Lcom/zui/launcher/model/ItemInstallQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/f0;->a:Lcom/zui/launcher/model/ItemInstallQueue;

    invoke-static {p0}, Lcom/zui/launcher/model/ItemInstallQueue;->p(Lcom/zui/launcher/model/ItemInstallQueue;)V

    return-void
.end method
