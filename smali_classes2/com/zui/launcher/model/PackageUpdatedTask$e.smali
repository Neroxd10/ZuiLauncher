.class Lcom/zui/launcher/model/PackageUpdatedTask$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherModel$CallbackTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/model/PackageUpdatedTask;->execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/launcher/model/PackageUpdatedTask;[Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/model/PackageUpdatedTask$e;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/PackageUpdatedTask$e;->a:[Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->rebindRecommendWidget([Ljava/lang/String;)V

    return-void
.end method
