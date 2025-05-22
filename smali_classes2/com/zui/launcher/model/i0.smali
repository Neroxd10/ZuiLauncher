.class public final synthetic Lcom/zui/launcher/model/i0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/i0;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/i0;->a:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/zui/launcher/model/LoaderResults;->o(Ljava/util/List;Lcom/zui/launcher/LauncherModel$Callbacks;)V

    return-void
.end method
