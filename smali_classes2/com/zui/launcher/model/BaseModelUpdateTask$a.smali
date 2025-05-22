.class Lcom/zui/launcher/model/BaseModelUpdateTask$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherModel$CallbackTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/model/BaseModelUpdateTask;->bindUpdatedWidgets(Lcom/zui/launcher/model/BgDataModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/zui/launcher/model/BaseModelUpdateTask;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/model/BaseModelUpdateTask$a;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/BaseModelUpdateTask$a;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindAllWidgets(Ljava/util/List;)V

    return-void
.end method
