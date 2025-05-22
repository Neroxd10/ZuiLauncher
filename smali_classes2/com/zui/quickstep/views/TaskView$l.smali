.class Lcom/zui/quickstep/views/TaskView$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/views/TaskView;->N(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskView$l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/quickstep/views/TaskView$l;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    sget-boolean p1, Lcom/zui/quickstep/views/TaskView;->g0:Z

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/zui/quickstep/views/TaskView$l;->a:Landroid/content/Context;

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "taskViewDefApp"

    invoke-static {p2, p1, v0}, Lcom/zui/launcher/util/SettingsValue;->setCommonNotShowDialog(Landroid/content/Context;ZLjava/lang/String;)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/zui/quickstep/views/TaskView;->g0:Z

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/views/TaskView$l;->b:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
