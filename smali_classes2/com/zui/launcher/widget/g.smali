.class public final synthetic Lcom/zui/launcher/widget/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/BaseActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/BaseActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/g;->a:Lcom/zui/launcher/BaseActivity;

    iput p2, p0, Lcom/zui/launcher/widget/g;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/g;->a:Lcom/zui/launcher/BaseActivity;

    iget p0, p0, Lcom/zui/launcher/widget/g;->b:I

    invoke-static {v0, p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->b(Lcom/zui/launcher/BaseActivity;I)V

    return-void
.end method
