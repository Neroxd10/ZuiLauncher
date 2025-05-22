.class public final synthetic Lcom/zui/launcher/model/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/f;->a:Ljava/util/ArrayList;

    iput p2, p0, Lcom/zui/launcher/model/f;->b:I

    iput p3, p0, Lcom/zui/launcher/model/f;->c:I

    return-void
.end method


# virtual methods
.method public final execute(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/model/f;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/zui/launcher/model/f;->b:I

    iget p0, p0, Lcom/zui/launcher/model/f;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/zui/launcher/model/BaseLoaderResults;->j(Ljava/util/ArrayList;IILcom/zui/launcher/LauncherModel$Callbacks;)V

    return-void
.end method
