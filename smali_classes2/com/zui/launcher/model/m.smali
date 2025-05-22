.class public final synthetic Lcom/zui/launcher/model/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/m;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/m;->a:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/zui/launcher/model/BaseModelUpdateTask;->d(Ljava/util/ArrayList;Lcom/zui/launcher/LauncherModel$Callbacks;)V

    return-void
.end method
