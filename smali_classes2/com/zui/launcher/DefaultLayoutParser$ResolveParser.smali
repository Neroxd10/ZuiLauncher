.class public Lcom/zui/launcher/DefaultLayoutParser$ResolveParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResolveParser"
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;

.field final synthetic b:Lcom/zui/launcher/DefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/DefaultLayoutParser;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/launcher/DefaultLayoutParser$ResolveParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;

    iget-object v0, p0, Lcom/zui/launcher/DefaultLayoutParser$ResolveParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    invoke-direct {p1, v0}, Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lcom/zui/launcher/DefaultLayoutParser;)V

    iput-object p1, p0, Lcom/zui/launcher/DefaultLayoutParser$ResolveParser;->a:Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, -0x1

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    if-le v2, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "favorite"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/zui/launcher/DefaultLayoutParser$ResolveParser;->a:Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-virtual {v2, p1}, Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fallback groups can contain only favorites, found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DefaultLayoutParser"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
