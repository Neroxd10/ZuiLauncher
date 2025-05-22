.class public Lcom/zui/launcher/popup/SystemShortcut$Widgets;
.super Lcom/zui/launcher/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/popup/SystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Widgets"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/popup/SystemShortcut<",
        "Lcom/zui/launcher/Launcher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0802ad

    const v1, 0x7f120734

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/popup/SystemShortcut;-><init>(II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 0

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/popup/SystemShortcut$Widgets;->getOnClickListener(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method public getOnClickListener(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
