.class public final synthetic Lcom/zui/launcher/touch/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/ActivityTaskManager$RootTaskInfo;

.field public final synthetic b:Lcom/zui/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityTaskManager$RootTaskInfo;Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/touch/h;->a:Landroid/app/ActivityTaskManager$RootTaskInfo;

    iput-object p2, p0, Lcom/zui/launcher/touch/h;->b:Lcom/zui/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/touch/h;->a:Landroid/app/ActivityTaskManager$RootTaskInfo;

    iget-object p0, p0, Lcom/zui/launcher/touch/h;->b:Lcom/zui/launcher/Launcher;

    invoke-static {v0, p0}, Lcom/zui/launcher/touch/ItemClickHandler;->h(Landroid/app/ActivityTaskManager$RootTaskInfo;Lcom/zui/launcher/Launcher;)V

    return-void
.end method
