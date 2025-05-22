.class public abstract Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/config/BaseFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseTogglableFlag"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->b:Z

    iput-boolean p2, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->d:Z

    invoke-static {p3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->c:Ljava/lang/String;

    invoke-static {}, Lcom/zui/launcher/config/BaseFlags;->access$000()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/zui/launcher/config/BaseFlags;->access$100()Ljava/util/List;

    move-result-object p2

    check-cast p0, Lcom/zui/launcher/TogglableFlag;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->b:Z

    invoke-virtual {p0, v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->getOverridenDefaultValue(Z)Z

    move-result p0

    return p0
.end method

.method protected abstract addChangeListener(Landroid/content/Context;Ljava/lang/Runnable;)V
.end method

.method b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->c:Ljava/lang/String;

    return-object p0
.end method

.method c(Landroid/content/Context;Z)Z
    .locals 1

    const-string p2, "featureFlags"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a()Z

    move-result p0

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/zui/launcher/TogglableFlag;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;

    iget-object v1, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public get()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->d:Z

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a:Ljava/lang/String;

    return-object p0
.end method

.method protected abstract getOverridenDefaultValue(Z)Z
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->c(Landroid/content/Context;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->d:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TogglableFlag{key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", overriddenDefaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->b:Z

    invoke-virtual {p0, v1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->getOverridenDefaultValue(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateStorage(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "featureFlags"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a()Z

    move-result v0

    iget-object p0, p0, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->a:Ljava/lang/String;

    if-ne p2, v0, :cond_0

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
