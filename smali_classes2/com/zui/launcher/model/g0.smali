.class public final synthetic Lcom/zui/launcher/model/g0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/ItemInstallQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/ItemInstallQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/g0;->a:Lcom/zui/launcher/model/ItemInstallQueue;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/g0;->a:Lcom/zui/launcher/model/ItemInstallQueue;

    check-cast p1, Lcom/zui/launcher/model/ItemInstallQueue$a;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/ItemInstallQueue;->k(Lcom/zui/launcher/model/ItemInstallQueue$a;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
