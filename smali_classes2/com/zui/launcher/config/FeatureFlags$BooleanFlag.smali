.class public Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/config/FeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanFlag"
.end annotation


# instance fields
.field public defaultValue:Z

.field public final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->key:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->defaultValue:Z

    return-void
.end method


# virtual methods
.method public addChangeListener(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method protected appendProps(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", defaultValue="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->defaultValue:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public get()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->defaultValue:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->appendProps(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
