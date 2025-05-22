.class Lcom/zui/launcher/DaulTimeZoneViewOne$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/DaulTimeZoneViewOne;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/DaulTimeZoneViewOne;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DaulTimeZoneViewOne;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DaulTimeZoneViewOne$a;->a:Lcom/zui/launcher/DaulTimeZoneViewOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DaulTimeZoneViewOne$a;->a:Lcom/zui/launcher/DaulTimeZoneViewOne;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/DaulTimeZoneViewOne;->enterChooseCityActivity(Landroid/view/View;)V

    return-void
.end method
