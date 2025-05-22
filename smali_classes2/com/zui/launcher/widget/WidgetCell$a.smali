.class Lcom/zui/launcher/widget/WidgetCell$a;
.super Lcom/zui/launcher/widget/NavigableAppWidgetHostView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/widget/WidgetCell;->b(Lcom/zui/launcher/model/WidgetItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/zui/launcher/widget/WidgetCell;


# direct methods
.method constructor <init>(Lcom/zui/launcher/widget/WidgetCell;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetCell$a;->h:Lcom/zui/launcher/widget/WidgetCell;

    invoke-direct {p0, p2}, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected shouldAllowDirectClick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
