.class public final synthetic Lcom/zui/launcher/uioverrides/touchcontrollers/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/j;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;

    iput-boolean p2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/j;->b:Z

    iput p3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/j;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/j;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;

    iget-boolean v1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/j;->b:Z

    iget p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/j;->c:I

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->d(ZI)V

    return-void
.end method
