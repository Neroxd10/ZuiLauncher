.class public Lcom/zui/launcher/util/ShortcutUserKey;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field public mClassName:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mShortcutCustomId:Ljava/lang/String;

.field public mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/launcher/util/ShortcutUserKey;->update(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public static fromAppInfo(Lcom/zui/launcher/AppInfo;)Lcom/zui/launcher/util/ShortcutUserKey;
    .locals 4

    new-instance v0, Lcom/zui/launcher/util/ShortcutUserKey;

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/zui/launcher/util/ShortcutUserKey;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromShortcutInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Lcom/zui/launcher/util/ShortcutUserKey;
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/ShortcutUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/zui/launcher/util/ShortcutUserKey;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/ShortcutUserKey;->updateFromShortcutInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Z

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/zui/launcher/util/ShortcutUserKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/zui/launcher/util/ShortcutUserKey;

    iget-object v0, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/zui/launcher/util/ShortcutUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mUser:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/zui/launcher/util/ShortcutUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mClassName:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/zui/launcher/util/ShortcutUserKey;->mClassName:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mClassName:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v4, p1, Lcom/zui/launcher/util/ShortcutUserKey;->mClassName:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mShortcutCustomId:Ljava/lang/String;

    if-nez v4, :cond_4

    iget-object v4, p1, Lcom/zui/launcher/util/ShortcutUserKey;->mShortcutCustomId:Ljava/lang/String;

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mShortcutCustomId:Ljava/lang/String;

    if-eqz p0, :cond_5

    iget-object p1, p1, Lcom/zui/launcher/util/ShortcutUserKey;->mShortcutCustomId:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    and-int/2addr v3, p0

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/util/ShortcutUserKey;->a:I

    return p0
.end method

.method public resetClassName()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mClassName:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mUser:Landroid/os/UserHandle;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mShortcutCustomId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/util/ShortcutUserKey;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mUser:Landroid/os/UserHandle;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " shorcutCustomId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mShortcutCustomId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mClassName:Ljava/lang/String;

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mUser:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/zui/launcher/util/ShortcutUserKey;->mShortcutCustomId:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/util/ShortcutUserKey;->a:I

    return-void
.end method

.method public updateFromAppInfo(Lcom/zui/launcher/AppInfo;)Z
    .locals 3

    invoke-static {p1}, Lcom/zui/launcher/util/ShortcutUtil;->supportsShortcuts(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/zui/launcher/util/ShortcutUserKey;->update(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateFromShortcutInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Z
    .locals 3

    invoke-static {p1}, Lcom/zui/launcher/util/ShortcutUtil;->supportsShortcuts(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getWechatCustomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-----updateFromShortcutInfo failed : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ItemInstallQueue"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v1, p1, v0}, Lcom/zui/launcher/util/ShortcutUserKey;->update(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/zui/launcher/util/ShortcutUserKey;->update(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method
