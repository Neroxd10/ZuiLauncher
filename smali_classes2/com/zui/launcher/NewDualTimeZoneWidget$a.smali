.class Lcom/zui/launcher/NewDualTimeZoneWidget$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/NewDualTimeZoneWidget;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/NewDualTimeZoneWidget;


# direct methods
.method constructor <init>(Lcom/zui/launcher/NewDualTimeZoneWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/NewDualTimeZoneWidget$a;->a:Lcom/zui/launcher/NewDualTimeZoneWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget$a;->a:Lcom/zui/launcher/NewDualTimeZoneWidget;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/NewDualTimeZoneWidget;->enterChooseCityActivity(Landroid/view/View;)V

    return-void
.end method
