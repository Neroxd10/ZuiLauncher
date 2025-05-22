.class public Lcom/zui/launcher/LauncherModel$NewShortcutKey;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewShortcutKey"
.end annotation


# instance fields
.field private a:I

.field public info:Lcom/zui/launcher/WorkspaceItemInfo;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel$NewShortcutKey;->info:Lcom/zui/launcher/WorkspaceItemInfo;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/zui/launcher/LauncherModel;->filterShortcutHashCode(Lcom/zui/launcher/WorkspaceItemInfo;)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/zui/launcher/LauncherModel$NewShortcutKey;->a:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/zui/launcher/LauncherModel$NewShortcutKey;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/LauncherModel$NewShortcutKey;

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$NewShortcutKey;->info:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object p1, p1, Lcom/zui/launcher/LauncherModel$NewShortcutKey;->info:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-static {p0, p1}, Lcom/zui/launcher/LauncherModel;->filterEquals(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/LauncherModel$NewShortcutKey;->a:I

    return p0
.end method
