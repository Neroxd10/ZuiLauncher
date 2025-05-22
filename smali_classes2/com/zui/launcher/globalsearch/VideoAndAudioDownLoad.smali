.class public Lcom/zui/launcher/globalsearch/VideoAndAudioDownLoad;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/zui/launcher/globalsearch/VideoAndAudioDownLoad;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/zui/launcher/globalsearch/VideoAndAudioDownLoad;
    .locals 1

    sget-object v0, Lcom/zui/launcher/globalsearch/VideoAndAudioDownLoad;->a:Lcom/zui/launcher/globalsearch/VideoAndAudioDownLoad;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/globalsearch/VideoAndAudioDownLoad;

    invoke-direct {v0}, Lcom/zui/launcher/globalsearch/VideoAndAudioDownLoad;-><init>()V

    sput-object v0, Lcom/zui/launcher/globalsearch/VideoAndAudioDownLoad;->a:Lcom/zui/launcher/globalsearch/VideoAndAudioDownLoad;

    :cond_0
    sget-object v0, Lcom/zui/launcher/globalsearch/VideoAndAudioDownLoad;->a:Lcom/zui/launcher/globalsearch/VideoAndAudioDownLoad;

    return-object v0
.end method
