.class public final synthetic Lcom/zui/launcher/widget/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/widget/XWidgetsBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/widget/XWidgetsBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/l;->a:Lcom/zui/launcher/widget/XWidgetsBottomSheet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/l;->a:Lcom/zui/launcher/widget/XWidgetsBottomSheet;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/XWidgetsBottomSheet;->e()V

    return-void
.end method
