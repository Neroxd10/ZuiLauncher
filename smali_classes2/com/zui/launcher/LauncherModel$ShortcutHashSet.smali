.class public Lcom/zui/launcher/LauncherModel$ShortcutHashSet;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutHashSet"
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zui/launcher/LauncherModel$NewShortcutKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/LauncherModel$ShortcutHashSet;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public add(Lcom/zui/launcher/LauncherModel$NewShortcutKey;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$ShortcutHashSet;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$ShortcutHashSet;->a:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getExistShortKey(Lcom/zui/launcher/LauncherModel$NewShortcutKey;)Lcom/zui/launcher/LauncherModel$NewShortcutKey;
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$ShortcutHashSet;->a:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherModel$NewShortcutKey;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/LauncherModel$NewShortcutKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public remove(Lcom/zui/launcher/LauncherModel$NewShortcutKey;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$ShortcutHashSet;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$ShortcutHashSet;->a:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
